'use strict'

angular.module('holmesApp')
  .directive('headeraddpage', () ->
    templateUrl: 'views/headeraddpage.html'
    restrict: 'E'
    replace: true
    link: (scope, element, attrs) ->
  )
