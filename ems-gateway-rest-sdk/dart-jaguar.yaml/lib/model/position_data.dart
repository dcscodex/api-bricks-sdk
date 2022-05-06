import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/ord_side.dart';

part 'position_data.jser.dart';

class PositionData {
   /* Exchange symbol. */
  @Alias('symbol_id_exchange', isNullable: false,  )
  final String symbolIdExchange;
   /* CoinAPI symbol. */
  @Alias('symbol_id_coinapi', isNullable: false,  )
  final String symbolIdCoinapi;
   /* Calculated average price of all fills on this position. */
  @Alias('avg_entry_price', isNullable: false,  )
  final num avgEntryPrice;
   /* The current position quantity. */
  @Alias('quantity', isNullable: false,  )
  final num quantity;
  
  @Alias('side', isNullable: false,
          
             processor:  const OrdSideFieldProcessor(),
          
  )
  final OrdSide side;
  //enum sideEnum {  BUY,  SELL,  }; /* Unrealised profit or loss (PNL) of this position. */
  @Alias('unrealized_pnl', isNullable: false,  )
  final num unrealizedPnl;
   /* Leverage for this position reported by the exchange. */
  @Alias('leverage', isNullable: false,  )
  final num leverage;
   /* Is cross margin mode enable for this position? */
  @Alias('cross_margin', isNullable: false,  )
  final bool crossMargin;
   /* Liquidation price. If mark price will reach this value, the position will be liquidated. */
  @Alias('liquidation_price', isNullable: false,  )
  final num liquidationPrice;
  
  @Alias('raw_data', isNullable: false,  )
  final Object rawData;
  

  PositionData(
      

{
     this.symbolIdExchange = null,  
     this.symbolIdCoinapi = null,  
     this.avgEntryPrice = null,  
     this.quantity = null,  
     this.side = null,  
     this.unrealizedPnl = null,  
     this.leverage = null,  
     this.crossMargin = null,  
     this.liquidationPrice = null,  
     this.rawData = null 
    
    }
  );

  @override
  String toString() {
    return 'PositionData[symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, side=$side, unrealizedPnl=$unrealizedPnl, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData, ]';
  }
}

@GenSerializer(nullableFields: true)
class PositionDataSerializer extends Serializer<PositionData> with _$PositionDataSerializer {

}

