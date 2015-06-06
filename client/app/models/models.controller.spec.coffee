'use strict'

describe 'Controller: ModelsCtrl', ->

  # load the controller's module
  beforeEach module 'restAdminApp'
  ModelsCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ModelsCtrl = $controller 'ModelsCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
