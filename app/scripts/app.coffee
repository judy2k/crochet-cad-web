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
        templateUrl: 'views/sphere.html'
        controller: 'SphereCtrl'
    .otherwise
        redirectTo: '/'
