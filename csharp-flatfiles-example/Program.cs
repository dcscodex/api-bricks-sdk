using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.IO.Compression;

namespace limitbook_full_processing 
{
    class Program
    {
        public enum ELimitUpdateType
        {
            ADD = 0,
            SET = 1,
            SUB = 2,
            SNAPSHOT = 3,
            Unspecified = 4
        }

        public static string dateFormat = "HH:mm:ss.fffffff";
        public static int bufferSize = 1 * 1024 * 1024; // 1MB

        static void Main(string[] args)
        {
            string path = args.Length > 0 ? args[0] : "27606-BITSTAMP_SPOT_BTC_EUR.csv.gz";

            using (GZipStream gz = 
                new GZipStream(
                    new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read, bufferSize),
                    CompressionMode.Decompress))
            {
                using (StreamReader sr = new StreamReader(gz))
                {
                    ProcessReader(dateFormat, sr);
                }
            }
        }

        private static void ProcessReader(string dateFormat, StreamReader sr)
        {
            string line;
            var book = new Dictionary<(bool, decimal), decimal>();
            DateTime lastTimeExchange = DateTime.MinValue;
            ELimitUpdateType? prevType = null;

            // skip header
            sr.ReadLine();

            while ((line = sr.ReadLine()) != null)
            {
                // parse columns
                var columns = line.Split(new char[] { ';' });
                var time_exchange = DateTime.ParseExact(columns[0], dateFormat, CultureInfo.InvariantCulture);
                var time_coinapi = DateTime.ParseExact(columns[1], dateFormat, CultureInfo.InvariantCulture);
                var type = (ELimitUpdateType)Enum.Parse(typeof(ELimitUpdateType), columns[2]);
                var isSellAsk = int.Parse(columns[3]) == 0;
                var price = decimal.Parse(columns[4], NumberStyles.Float, CultureInfo.InvariantCulture);
                var size = decimal.Parse(columns[5], NumberStyles.Float, CultureInfo.InvariantCulture);

                // process snapshot book cleaning
                if (type == ELimitUpdateType.SNAPSHOT && prevType.HasValue && prevType.Value != ELimitUpdateType.SNAPSHOT)
                {
                    book.Clear();
                }
                prevType = type;

                // process specific order types
                if (type == ELimitUpdateType.SNAPSHOT || type == ELimitUpdateType.SET)
                {
                    book[(isSellAsk, price)] = size;
                }
                else if (type == ELimitUpdateType.ADD)
                {
                    if (!book.ContainsKey((isSellAsk, price)))
                    {
                        book[(isSellAsk, price)] = size;
                    }
                    else
                    {
                        book[(isSellAsk, price)] = book[(isSellAsk, price)] + size;
                    }
                }
                else if (type == ELimitUpdateType.SUB)
                {
                    if (!book.ContainsKey((isSellAsk, price)))
                    {
                        book[(isSellAsk, price)] = 0;
                    }
                    else
                    {
                        var newSize = book[(isSellAsk, price)] - size;
                        book[(isSellAsk, price)] = newSize >= 0 ? newSize : 0;
                    }
                }
                else
                {
                    throw new ArgumentException(nameof(type));
                }

                // remove empty levels
                if (book.ContainsKey((isSellAsk, price)) && book[(isSellAsk, price)] <= 0)
                {
                    book.Remove((isSellAsk, price));
                }

                // process book feed forward
                if (time_exchange > lastTimeExchange)
                {
                    ProcessOrderbook(time_exchange, time_coinapi, book);
                    lastTimeExchange = time_exchange;
                }
            }
        }

        private static void ProcessOrderbook(DateTime time_exchange, DateTime time_coinapi, Dictionary<(bool, decimal), decimal> book)
        {
            // processing work
            var recv_diff = time_coinapi - time_exchange;
            Console.WriteLine($"{time_exchange} (recv: {(int)recv_diff.TotalMilliseconds}): levels {book.Count}");
        }
    }
}
