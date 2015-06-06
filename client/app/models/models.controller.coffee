'use strict'

angular.module 'restAdminApp'
.controller 'ModelsCtrl', ($scope, Auth, $state) ->
  $state.go('main') if not Auth.isLoggedIn()