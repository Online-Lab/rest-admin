'use strict'

angular.module 'restAdminApp'
.controller 'ModelsCtrl', ($scope, Auth, $state, ModelService) ->
  $state.go('main') if not Auth.isLoggedIn()
  