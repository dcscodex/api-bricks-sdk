import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'position_data.jser.dart';

class PositionData {
   /* Unique position ID */
  @Alias('id', isNullable: false,  )
  final String id;
   /* The contract for this position. */
  @Alias('symbol_exchange', isNullable: false,  )
  final String symbolExchange;
   /* The coinapi contract for this position. */
  @Alias('symbol_coinapi', isNullable: false,  )
  final String symbolCoinapi;
  
  @Alias('avg_entry_price', isNullable: false,  )
  final num avgEntryPrice;
   /* The current position amount in contracts. */
  @Alias('quantity', isNullable: false,  )
  final num quantity;
  
  @Alias('is_buy', isNullable: false,  )
  final bool isBuy;
   /* Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions. */
  @Alias('unrealised_pn_l', isNullable: false,  )
  final num unrealisedPnL;
   /* 1 / initMarginReq. */
  @Alias('leverage', isNullable: false,  )
  final num leverage;
   /* True/false depending on whether you set cross margin on this position. */
  @Alias('cross_margin', isNullable: false,  )
  final bool crossMargin;
   /* Once markPrice reaches this price, this position will be liquidated. */
  @Alias('liquidation_price', isNullable: false,  )
  final num liquidationPrice;
  
  @Alias('raw_data', isNullable: false,  )
  final String rawData;
  

  PositionData(
      

{
     this.id = null,  
     this.symbolExchange = null,  
     this.symbolCoinapi = null,  
     this.avgEntryPrice = null,  
     this.quantity = null,  
     this.isBuy = null,  
     this.unrealisedPnL = null,  
     this.leverage = null,  
     this.crossMargin = null,  
     this.liquidationPrice = null,  
     this.rawData = null 
    
    }
  );

  @override
  String toString() {
    return 'PositionData[id=$id, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, isBuy=$isBuy, unrealisedPnL=$unrealisedPnL, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData, ]';
  }
}

@GenSerializer(nullableFields: true)
class PositionDataSerializer extends Serializer<PositionData> with _$PositionDataSerializer {

}

