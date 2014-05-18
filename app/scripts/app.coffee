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
        templateUrl: 'views/index.html'
    .when '/sphere',
        templateUrl: 'views/sphere.html'
        controller: 'SphereCtrl'
    .when '/torus',
        templateUrl: 'views/torus.html'
        controller: 'TorusCtrl'
    .otherwise
        redirectTo: '/'
