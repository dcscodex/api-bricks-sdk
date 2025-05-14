//
//  CoinAPI.h
//  CoinAPI
//
//  Created by MyMac on 26/05/2017.
//  Copyright © 2017 Panda Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoinAPI : NSObject
{
    NSString *              strAPIKey;
    NSJSONSerialization *   jsonSerialization;
}

- (id)initWithAPIKey:(NSString*)strAPI;

/*************** Rest API ***************/
/** Metadata Functions **/
- (void)getAllMetadataExchanges;
- (void)getAllMetadataAssets;
- (void)getAllMetadataSymbols;

/** Exchange Rates Functions **/
- (void)getSpecificExchangeRates:(NSString*)asset_id_base asset_id_quote:(NSString*)asset_id_quote time:(NSInteger)time;
- (void)getAllExchangeRates:(NSString*)asset_id_base;

/** OHLCV Functions **/
- (void)getAllOHLCVPeriods;
- (void)getLatestOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id limit:(NSInteger)limit;
- (void)getHistoricalOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit;

/** Trades Functions **/
- (void)getLatestTradesData:(NSString*)symbol_id limit:(NSInteger)limit;
- (void)getHistoricalTradesData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit;

/** Quotes Functions **/
- (void)getCurrentQuotesData:(NSString*)symbol_id;
- (void)getLatestQuotesData:(NSString*)symbol_id limit:(NSInteger)limit;
- (void)getHistoricalQuotesData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit;

/** Orderbooks Functions **/
- (void)getCurrentOrderbooksData:(NSString*)symbol_id;
- (void)getLatestOrderbooksData:(NSString*)symbol_id limit:(NSInteger)limit;
- (void)getHistoricalOrderbooksData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit;

/*************** Websocket API ***************/

@end
