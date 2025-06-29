/**
 * CoinAPI Market Data REST API
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
    factory(root.expect, root.CoinApiMarketDataRestApi);
  }
}(this, function(expect, CoinApiMarketDataRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
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

  describe('V1TimeseriesPeriod', function() {
    it('should create an instance of V1TimeseriesPeriod', function() {
      // uncomment below and update the code to test V1TimeseriesPeriod
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be.a(CoinApiMarketDataRestApi.V1TimeseriesPeriod);
    });

    it('should have the property periodId (base name: "period_id")', function() {
      // uncomment below and update the code to test the property periodId
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

    it('should have the property lengthSeconds (base name: "length_seconds")', function() {
      // uncomment below and update the code to test the property lengthSeconds
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

    it('should have the property lengthMonths (base name: "length_months")', function() {
      // uncomment below and update the code to test the property lengthMonths
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

    it('should have the property unitCount (base name: "unit_count")', function() {
      // uncomment below and update the code to test the property unitCount
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

    it('should have the property unitName (base name: "unit_name")', function() {
      // uncomment below and update the code to test the property unitName
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

    it('should have the property displayName (base name: "display_name")', function() {
      // uncomment below and update the code to test the property displayName
      //var instance = new CoinApiMarketDataRestApi.V1TimeseriesPeriod();
      //expect(instance).to.be();
    });

  });

}));
