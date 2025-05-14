package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AdminAuctionInformationModel;
import org.openapitools.model.AdminOfficialPriceModel;
import org.openapitools.model.AdminOperationalHaltStatusModel;
import org.openapitools.model.AdminRetailLiquidityIndicatorModel;
import org.openapitools.model.AdminSecurityDirectoryModel;
import org.openapitools.model.AdminSecurityEventModel;
import org.openapitools.model.AdminShortSalePriceTestStatusModel;
import org.openapitools.model.AdminSystemEventModel;
import org.openapitools.model.AdminTradingStatusModel;

@Canonical
class AdminAdminMessageModel {
    
    AdminTradingStatusModel tradingStatus
    
    AdminOfficialPriceModel officialPrice
    
    AdminSecurityEventModel securityEvent
    
    AdminAuctionInformationModel auctionInformation
    
    AdminShortSalePriceTestStatusModel shortSalePriceTest
    
    AdminOperationalHaltStatusModel operationalHaltStatus
    
    AdminRetailLiquidityIndicatorModel retailLiquidityIndicator
    
    AdminSystemEventModel systemEvent
    
    AdminSecurityDirectoryModel securityDirectory
}
