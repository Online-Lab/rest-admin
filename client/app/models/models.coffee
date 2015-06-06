'use strict'

angular.module 'restAdminApp'
.config ($stateProvider) ->
  $stateProvider.state 'models',
    url: '/models'
    templateUrl: 'app/models/models.html'
    controller: 'ModelsCtrl'
