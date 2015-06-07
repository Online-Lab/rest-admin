'use strict'

angular.module 'restAdminApp'
.controller 'CreateModelCtrl', ($scope, ModelService, $state) ->
  $scope.user = {}
  $scope.errors = {}
  $scope.create_model = (form) ->
    $scope.submitted = true

    if form.$valid
      # Account created, redirect to home
      ModelService.createModel
        name: $scope.model.name

      .then ->
        $state.go 'models'

      .catch (err) ->
        err = err.data
        $scope.errors = {}

        # Update validity of form fields that match the mongoose errors
        angular.forEach err.errors, (error, field) ->
          form[field].$setValidity 'mongoose', false
          $scope.errors[field] = error.message
