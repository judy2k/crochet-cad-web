'use strict'

angular.module('crochetCadWebApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
.config ($routeProvider) ->
    $routeProvider
    .when '/',
        templateUrl: 'views/main.html'
        controller: 'SphereCtrl'
    .otherwise
        redirectTo: '/'
