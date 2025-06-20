/**
 * CoinAPI Indexes REST API
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
    factory(root.expect, root.CoinApiIndexesRestApi);
  }
}(this, function(expect, CoinApiIndexesRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new CoinApiIndexesRestApi.IndexesApi();
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

  describe('IndexesApi', function() {
    describe('v1IndexdefInputDataIndexDefinitionIdAllGet', function() {
      it('should call v1IndexdefInputDataIndexDefinitionIdAllGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexdefInputDataIndexDefinitionIdAllGet
        //instance.v1IndexdefInputDataIndexDefinitionIdAllGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexdefInputDataIndexDefinitionIdGet', function() {
      it('should call v1IndexdefInputDataIndexDefinitionIdGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexdefInputDataIndexDefinitionIdGet
        //instance.v1IndexdefInputDataIndexDefinitionIdGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexdefMultiassetGet', function() {
      it('should call v1IndexdefMultiassetGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexdefMultiassetGet
        //instance.v1IndexdefMultiassetGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexdefMultiassetIndexIdGet', function() {
      it('should call v1IndexdefMultiassetIndexIdGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexdefMultiassetIndexIdGet
        //instance.v1IndexdefMultiassetIndexIdGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesGet', function() {
      it('should call v1IndexesGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesGet
        //instance.v1IndexesGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesIndexDefinitionIdCurrentSnapshotGet', function() {
      it('should call v1IndexesIndexDefinitionIdCurrentSnapshotGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesIndexDefinitionIdCurrentSnapshotGet
        //instance.v1IndexesIndexDefinitionIdCurrentSnapshotGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesIndexDefinitionIdHistorySnapshotGet', function() {
      it('should call v1IndexesIndexDefinitionIdHistorySnapshotGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesIndexDefinitionIdHistorySnapshotGet
        //instance.v1IndexesIndexDefinitionIdHistorySnapshotGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesIndexIdCurrentGet', function() {
      it('should call v1IndexesIndexIdCurrentGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesIndexIdCurrentGet
        //instance.v1IndexesIndexIdCurrentGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesIndexIdHistoryGet', function() {
      it('should call v1IndexesIndexIdHistoryGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesIndexIdHistoryGet
        //instance.v1IndexesIndexIdHistoryGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('v1IndexesIndexIdTimeseriesGet', function() {
      it('should call v1IndexesIndexIdTimeseriesGet successfully', function(done) {
        //uncomment below and update the code to test v1IndexesIndexIdTimeseriesGet
        //instance.v1IndexesIndexIdTimeseriesGet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
