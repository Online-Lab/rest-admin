'use strict'

angular.module 'restAdminApp'
.directive 'leftNav', (ModelService) ->
  templateUrl: 'app/leftNav/leftNav.html'
  restrict: 'EA'
  link: (scope, element, attrs) ->
    ModelService.getAll()
    .then (data) ->
      scope.models = data