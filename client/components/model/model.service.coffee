'use strict'

angular.module 'restAdminApp'

.factory 'Model', ($resource) ->
  $resource '/api/models/:id',
    id: '@_id'

.factory 'ModelService', ($location, $rootScope, $http, Model, $cookieStore, $q) ->

  createModel: (model, callback) ->
    Model.save model,
      (data) ->
        callback? model
      , (err) =>
        callback? err
    .$promise

  getAll: (callback) ->
    Model.query(
      (data) ->
        callback? data
      , (err) =>
        callback? err
    ).$promise