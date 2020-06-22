import * as api from './api/api';
import * as angular from 'angular';

const apiModule = angular.module('api', [])
.service('BalancesApi', api.BalancesApi)
.service('OrdersApi', api.OrdersApi)
.service('PositionsApi', api.PositionsApi)

export default apiModule;
