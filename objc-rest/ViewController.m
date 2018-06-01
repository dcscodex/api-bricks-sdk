//
//  ViewController.m
//  CoinAPITest
//
//  Created by MyMac on 26/05/2017.
//  Copyright © 2017 Panda Mobile. All rights reserved.
//

#import "ViewController.h"
#import "CoinAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    CoinAPI *coin = [CoinAPI alloc];
    coin = [coin initWithAPIKey:@"YOUR_API_KEY_HERE"];
    
    /** Metadata Functions **/
    [coin getAllMetadataExchanges];
    [coin getAllMetadataAssets];
    [coin getAllMetadataSymbols];
    
    /** Exchange Rates Functions **/
    [coin getSpecificExchangeRates:@"BTC" asset_id_quote:@"USD" time:0];
    [coin getAllExchangeRates:@"BTC"];
    
    /* OHLCV Functions */
    [coin getAllOHLCVPeriods];
    [coin getLatestOHLCVData:@"BITSTAMP_SPOT_BTC_USD" period_id:@"1MIN" limit:0];
    [coin getHistoricalOHLCVData:@"BITSTAMP_SPOT_BTC_USD" period_id:@"1MIN" time_start:@"2016-01-01T00:00:00" time_end:NULL limit:0];
    
    /* Trades Functions */
    [coin getLatestTradesData:NULL limit:0];
    [coin getHistoricalTradesData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00" time_end:NULL limit:0];
    
    /* Quotes Functions */
    [coin getCurrentQuotesData:NULL];
    [coin getLatestQuotesData:NULL limit:0];
    [coin getHistoricalQuotesData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00" time_end:NULL limit:0];
    
    /* Orderbooks Functions */
    [coin getCurrentOrderbooksData:NULL];
    [coin getLatestOrderbooksData:@"BITSTAMP_SPOT_BTC_USD" limit:0];
    [coin getHistoricalOrderbooksData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00" time_end:NULL limit:0];
    
}


@end
