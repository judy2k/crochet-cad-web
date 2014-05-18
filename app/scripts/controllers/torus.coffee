'use strict'

angular.module('crochetCadWebApp')
.controller 'TorusCtrl', ($scope) ->
    $scope.row_count = 20
    $scope.init_stitches = 12
    $scope.snap = true
    $scope.pattern = _.memoize(
      ->
        stitch_counts = Crocad.torus($scope.init_stitches, $scope.row_count)
        if $scope.snap
          stitch_counts = Crocad.roundToNearest(stitch_counts, 6, 12)
        instructions = (i.toString() for i in Crocad.rows(stitch_counts))
        _.zip(instructions, stitch_counts)
      ->
        $scope.row_count + ',' + $scope.init_stitches + ',' + $scope.snap
    )
