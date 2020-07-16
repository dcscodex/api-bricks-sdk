import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'balance_data.jser.dart';

class BalanceData {
   /* Exchange currency code. */
  @Alias('asset_id_exchange', isNullable: false,  )
  final String assetIdExchange;
   /* CoinAPI currency code. */
  @Alias('asset_id_coinapi', isNullable: false,  )
  final String assetIdCoinapi;
   /* Value of the current total currency balance on the exchange. */
  @Alias('balance', isNullable: false,  )
  final double balance;
   /* Value of the current available currency balance on the exchange that can be used as collateral. */
  @Alias('available', isNullable: false,  )
  final double available;
   /* Value of the current locked currency balance by the exchange. */
  @Alias('locked', isNullable: false,  )
  final double locked;
   /* Source of the last modification.  */
  @Alias('last_updated_by', isNullable: false,
          
  )
  final String lastUpdatedBy;
  //enum lastUpdatedByEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  }; /* Current exchange rate to the USD for the single unit of the currency.  */
  @Alias('rate_usd', isNullable: false,  )
  final double rateUsd;
  

  BalanceData(
      

{
     this.assetIdExchange = null,  
     this.assetIdCoinapi = null,  
     this.balance = null,  
     this.available = null,  
     this.locked = null,  
     this.lastUpdatedBy = null,  
     this.rateUsd = null 
    
    }
  );

  @override
  String toString() {
    return 'BalanceData[assetIdExchange=$assetIdExchange, assetIdCoinapi=$assetIdCoinapi, balance=$balance, available=$available, locked=$locked, lastUpdatedBy=$lastUpdatedBy, rateUsd=$rateUsd, ]';
  }
}

@GenSerializer(nullableFields: true)
class BalanceDataSerializer extends Serializer<BalanceData> with _$BalanceDataSerializer {

}

