import gzip
import enum
from datetime import datetime
from collections import defaultdict
from datetime import timedelta
from decimal import Decimal, getcontext


class ELimitUpdateType(enum.Enum):
    ADD = 1
    SET = 2
    SUB = 3
    SNAPSHOT = 4
    DELETE = 5
    MATCH = 6

dateFormat = "%H:%M:%S.%f"
bufferSize = 1 * 1024 * 1024  # 1MB

def main():
    path = "cryptotick-samples/limitbook_full_to_snapshot_50/BITSTAMP_SPOT_BTC_USD limitbook_full 20240201.csv.gz"
    with gzip.open(path, 'rt', encoding='utf-8') as file:
        process_reader(dateFormat, file)

def process_reader(date_format, sr):
    book = defaultdict(Decimal)
    bid_sizes = defaultdict(Decimal)
    ask_sizes = defaultdict(Decimal)
    last_time_exchange = datetime.min
    last_time_coinapi = datetime.min
    last_processed_time = datetime.min  # Initialize a variable to keep track of the last processed time
    prev_type = None
    line_count = 0  # Initialize a counter for the lines

    print ('time_exchange;time_coinapi;asks[0].price;asks[0].size;bids[0].price;bids[0].size;asks[1].price;asks[1].size;bids[1].price;bids[1].size;asks[2].price;asks[2].size;bids[2].price;bids[2].size;asks[3].price;asks[3].size;bids[3].price;bids[3].size;asks[4].price;asks[4].size;bids[4].price;bids[4].size;asks[5].price;asks[5].size;bids[5].price;bids[5].size;asks[6].price;asks[6].size;bids[6].price;bids[6].size;asks[7].price;asks[7].size;bids[7].price;bids[7].size;asks[8].price;asks[8].size;bids[8].price;bids[8].size;asks[9].price;asks[9].size;bids[9].price;bids[9].size;asks[10].price;asks[10].size;bids[10].price;bids[10].size;asks[11].price;asks[11].size;bids[11].price;bids[11].size;asks[12].price;asks[12].size;bids[12].price;bids[12].size;asks[13].price;asks[13].size;bids[13].price;bids[13].size;asks[14].price;asks[14].size;bids[14].price;bids[14].size;asks[15].price;asks[15].size;bids[15].price;bids[15].size;asks[16].price;asks[16].size;bids[16].price;bids[16].size;asks[17].price;asks[17].size;bids[17].price;bids[17].size;asks[18].price;asks[18].size;bids[18].price;bids[18].size;asks[19].price;asks[19].size;bids[19].price;bids[19].size;asks[20].price;asks[20].size;bids[20].price;bids[20].size;asks[21].price;asks[21].size;bids[21].price;bids[21].size;asks[22].price;asks[22].size;bids[22].price;bids[22].size;asks[23].price;asks[23].size;bids[23].price;bids[23].size;asks[24].price;asks[24].size;bids[24].price;bids[24].size;asks[25].price;asks[25].size;bids[25].price;bids[25].size;asks[26].price;asks[26].size;bids[26].price;bids[26].size;asks[27].price;asks[27].size;bids[27].price;bids[27].size;asks[28].price;asks[28].size;bids[28].price;bids[28].size;asks[29].price;asks[29].size;bids[29].price;bids[29].size;asks[30].price;asks[30].size;bids[30].price;bids[30].size;asks[31].price;asks[31].size;bids[31].price;bids[31].size;asks[32].price;asks[32].size;bids[32].price;bids[32].size;asks[33].price;asks[33].size;bids[33].price;bids[33].size;asks[34].price;asks[34].size;bids[34].price;bids[34].size;asks[35].price;asks[35].size;bids[35].price;bids[35].size;asks[36].price;asks[36].size;bids[36].price;bids[36].size;asks[37].price;asks[37].size;bids[37].price;bids[37].size;asks[38].price;asks[38].size;bids[38].price;bids[38].size;asks[39].price;asks[39].size;bids[39].price;bids[39].size;asks[40].price;asks[40].size;bids[40].price;bids[40].size;asks[41].price;asks[41].size;bids[41].price;bids[41].size;asks[42].price;asks[42].size;bids[42].price;bids[42].size;asks[43].price;asks[43].size;bids[43].price;bids[43].size;asks[44].price;asks[44].size;bids[44].price;bids[44].size;asks[45].price;asks[45].size;bids[45].price;bids[45].size;asks[46].price;asks[46].size;bids[46].price;bids[46].size;asks[47].price;asks[47].size;bids[47].price;bids[47].size;asks[48].price;asks[48].size;bids[48].price;bids[48].size;asks[49].price;asks[49].size;bids[49].price;bids[49].size');

    # skip header
    next(sr)

    for line in sr:
        columns = line.strip().split(';')
        time_exchange = datetime.strptime(columns[0][:-1], date_format)
        time_coinapi = datetime.strptime(columns[1][:-1], date_format)
        type = ELimitUpdateType[columns[2]]
        is_sell_ask = int(columns[3]) == 0
        price = Decimal(columns[4])
        size = Decimal(columns[5])
        order_id = columns[6] if len(columns) > 6 else ""

        if last_time_exchange == datetime.min:
            last_time_exchange = time_exchange
        if last_time_coinapi == datetime.min:
            last_time_coinapi = time_coinapi

        # process book feed forward
        if time_exchange != last_time_exchange and time_exchange > (last_processed_time + timedelta(seconds=1)):
            process_orderbook(last_time_exchange, last_time_coinapi, book, ask_sizes, bid_sizes)
            
            last_processed_time = time_exchange  # Update the last processed time
            line_count += 1  # Increment line counter
            # only for debugging
            if line_count >= 10:  # Check if 10 lines have been processed
                break  # Break the loop if 10 lines have been processed

        last_time_exchange = time_exchange
        last_time_coinapi = time_coinapi

        # process snapshot book cleaning
        if type == ELimitUpdateType.SNAPSHOT and prev_type and prev_type != ELimitUpdateType.SNAPSHOT:
            book.clear()
            ask_sizes.clear()
            bid_sizes.clear()
            
        prev_type = type

        key = (is_sell_ask, price, order_id)
        size_diff = 0;

        # process specific order types
        if type in [ELimitUpdateType.SNAPSHOT, ELimitUpdateType.SET]:
            size_diff = - book[key] + size;
            book[key] = size
        elif type == ELimitUpdateType.ADD:
            size_diff = size;
            book[key] += size
        elif type in [ELimitUpdateType.SUB, ELimitUpdateType.DELETE, ELimitUpdateType.MATCH]:
            newSize = max(book[key] - size, 0);
            size_diff = - book[key] + newSize;
            book[key] = newSize

        # Update book and size dictionaries
        if is_sell_ask:
            ask_sizes[price] += size_diff
            if ask_sizes[price] <= 0:
                del ask_sizes[price]
        else:
            bid_sizes[price] += size_diff
            if bid_sizes[price] <= 0:
                del bid_sizes[price]  

        # remove empty levels
        if book[key] <= 0:
            del book[key]

def process_orderbook(time_exchange, time_coinapi, book, ask_sizes, bid_sizes):
    recv_diff = time_coinapi - time_exchange
    #print(f"{time_exchange} (recv: {int(recv_diff.total_seconds() * 1000)}): levels {len(book)}")

    if not ask_sizes or not bid_sizes:
        return

    # Sort and get top 50
    sorted_asks = sorted(ask_sizes.items(), key=lambda x: x[0])[:50]  # Lowest 50 asks
    sorted_bids = sorted(bid_sizes.items(), key=lambda x: x[0], reverse=True)[:50]  # Highest 50 bids

    output = [time_exchange.strftime('%H:%M:%S.%f'), time_coinapi.strftime('%H:%M:%S.%f')]
    
    # Ensure there are 50 ask and bid levels, fill in empty values if there are less than 50
    for i in range(50):
        if i < len(sorted_asks):
            output.extend([str(sorted_asks[i][0]), str(sorted_asks[i][1])])
        else:
            output.extend(['', ''])  # Empty placeholders for ask price and size
        
        if i < len(sorted_bids):
            output.extend([str(sorted_bids[i][0]), str(sorted_bids[i][1])])
        else:
            output.extend(['', ''])  # Empty placeholders for bid price and size
    
    
    output_str = ";".join(output)
    print(output_str)

if __name__ == "__main__":
    main()
