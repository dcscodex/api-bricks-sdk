#
# FinFeedAPI Stock REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Contact: support@apibricks.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSOpenAPITools' -name 'AdminTradingStatusModel' {
    Context 'AdminTradingStatusModel' {
        It 'Initialize-AdminTradingStatusModel' {
            # a simple test to create an object
            #$NewObject = Initialize-AdminTradingStatusModel -Symbol "TEST_VALUE" -TimestampNanos "TEST_VALUE" -Timestamp "TEST_VALUE" -IsTradingLive "TEST_VALUE" -IsTradingHalted "TEST_VALUE" -IsTradingInOrderAcceptancePeriod "TEST_VALUE" -IsTradingPaused "TEST_VALUE" -IsReasonHaltNewsPending "TEST_VALUE" -IsReasonIpoNotYetTrading "TEST_VALUE" -IsReasonIpoDeferred "TEST_VALUE" -IsReasonHaltNewsDissemination "TEST_VALUE" -IsReasonIpoOrderAcceptancePeriod "TEST_VALUE" -IsReasonIpoPreLaunchPeriod "TEST_VALUE" -IsReasonMarketWideCircuitBreakerLevel1 "TEST_VALUE" -IsReasonMarketWideCircuitBreakerLevel2 "TEST_VALUE" -IsReasonMarketWideCircuitBreakerLevel3 "TEST_VALUE" -IsReasonNotApplicable "TEST_VALUE" -IsReasonNotAvailable "TEST_VALUE"
            #$NewObject | Should -BeOfType AdminTradingStatusModel
            #$NewObject.property | Should -Be 0
        }
    }
}
