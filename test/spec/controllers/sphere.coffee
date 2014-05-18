'use strict'

describe 'Controller: Sphere', () ->

  # load the controller's module
  beforeEach module 'crochetCadWebApp'

  SphereCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SphereCtrl = $controller 'SphereCtrl', {
      $scope: scope
    }

  it 'should set row_count to the correct default', () ->
    expect(scope.row_count).toBe 10
