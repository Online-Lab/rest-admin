'use strict'

angular.module 'restAdminApp'
.config ($stateProvider) ->
  $stateProvider

  .state 'models',
    url: '/models'
    templateUrl: 'app/models/models.html'
    controller: 'ModelsCtrl'

  .state 'createModel',
    url: '/models/create'
    templateUrl: 'app/models/create_model.html'
    controller: 'CreateModelCtrl'
