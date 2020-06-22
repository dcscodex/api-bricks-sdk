import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'balance_data.jser.dart';

class BalanceData {
   /* symbol_exchange */
  @Alias('id', isNullable: false,  )
  final String id;
   /* Currency code. */
  @Alias('symbol_exchange', isNullable: false,  )
  final String symbolExchange;
   /* CoinAPI currency code. */
  @Alias('symbol_coinapi', isNullable: false,  )
  final String symbolCoinapi;
   /* The current balance. */
  @Alias('balance', isNullable: false,  )
  final double balance;
   /* The amount that is available to trade. */
  @Alias('available', isNullable: false,  )
  final double available;
   /* Blocked funds. */
  @Alias('locked', isNullable: false,  )
  final double locked;
   /* Source of last modification.  */
  @Alias('update_origin', isNullable: false,
          
  )
  final String updateOrigin;
  //enum updateOriginEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };

  BalanceData(
      

{
     this.id = null,  
     this.symbolExchange = null,  
     this.symbolCoinapi = null,  
     this.balance = null,  
     this.available = null,  
     this.locked = null,  
     this.updateOrigin = null 
    
    }
  );

  @override
  String toString() {
    return 'BalanceData[id=$id, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, balance=$balance, available=$available, locked=$locked, updateOrigin=$updateOrigin, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceDataSerializer extends Serializer<BalanceData> with _$BalanceDataSerializer {

}

