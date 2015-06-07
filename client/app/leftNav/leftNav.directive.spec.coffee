'use strict'

describe 'Directive: leftNav', ->

  # load the directive's module and view
  beforeEach module 'restAdminApp'
  beforeEach module 'app/leftNav/leftNav.html'
  element = undefined
  scope = undefined
  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<left-nav></left-nav>'
    element = $compile(element) scope
    scope.$apply()
    expect(element.text()).toBe 'this is the leftNav directive'

