'use strict'

describe 'Controller: TorusCtrl', () ->

  # load the controller's module
  beforeEach module 'crochetCadWebApp'

  TorusCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TorusCtrl = $controller 'TorusCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.row_count).toBe 20
