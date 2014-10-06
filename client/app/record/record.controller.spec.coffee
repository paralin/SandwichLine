'use strict'

describe 'Controller: RecordCtrl', ->

  # load the controller's module
  beforeEach module 'sandwichlineApp'
  RecordCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    RecordCtrl = $controller 'RecordCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
