'use strict'

describe 'Directive: pager', () ->

  # load the directive's module
  beforeEach module 'holmesApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<pager></pager>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the pager directive'
