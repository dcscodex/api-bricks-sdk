/**
 * FinFeedAPI Stock REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.FinFeedApiStockRestApi);
  }
}(this, function(expect, FinFeedApiStockRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('AdminSecurityDirectoryModel', function() {
    it('should create an instance of AdminSecurityDirectoryModel', function() {
      // uncomment below and update the code to test AdminSecurityDirectoryModel
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be.a(FinFeedApiStockRestApi.AdminSecurityDirectoryModel);
    });

    it('should have the property symbol (base name: "symbol")', function() {
      // uncomment below and update the code to test the property symbol
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property timestampNanos (base name: "timestamp_nanos")', function() {
      // uncomment below and update the code to test the property timestampNanos
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property timestamp (base name: "timestamp")', function() {
      // uncomment below and update the code to test the property timestamp
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property flags (base name: "flags")', function() {
      // uncomment below and update the code to test the property flags
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property roundLotSize (base name: "round_lot_size")', function() {
      // uncomment below and update the code to test the property roundLotSize
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property adjustedPocPrice (base name: "adjusted_poc_price")', function() {
      // uncomment below and update the code to test the property adjustedPocPrice
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property luldTier (base name: "luld_tier")', function() {
      // uncomment below and update the code to test the property luldTier
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property luldTierCode (base name: "luld_tier_code")', function() {
      // uncomment below and update the code to test the property luldTierCode
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property luldTierText (base name: "luld_tier_text")', function() {
      // uncomment below and update the code to test the property luldTierText
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property isLuldTierNotApplicable (base name: "is_luld_tier_not_applicable")', function() {
      // uncomment below and update the code to test the property isLuldTierNotApplicable
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property isLuldTier1 (base name: "is_luld_tier1")', function() {
      // uncomment below and update the code to test the property isLuldTier1
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

    it('should have the property isLuldTier2 (base name: "is_luld_tier2")', function() {
      // uncomment below and update the code to test the property isLuldTier2
      //var instance = new FinFeedApiStockRestApi.AdminSecurityDirectoryModel();
      //expect(instance).to.be();
    });

  });

}));
