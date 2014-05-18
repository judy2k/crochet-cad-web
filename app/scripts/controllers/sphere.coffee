'use strict'

angular.module('crochetCadWebApp')
.controller 'SphereCtrl', ($scope) ->
  $scope.row_count = 10
  $scope.snap = true
  $scope.pattern = _.memoize(
    ->
      stitch_counts = Crocad.sphere($scope.row_count)
      if $scope.snap
        stitch_counts = Crocad.roundToNearest(stitch_counts, 6, 6)
      instructions = (i.toString() for i in Crocad.rows(stitch_counts))
      _.zip(instructions, stitch_counts)
    -> $scope.row_count + ',' + $scope.snap
  )
