'use strict'

angular.module('crochetCadWebApp')
.controller 'SphereCtrl', ($scope) ->
  console.log('a')
  $scope.row_count = 10
  $scope.pattern = -> ("This is row #{row}" for row in [0...$scope.row_count])
