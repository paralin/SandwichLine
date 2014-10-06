'use strict'

angular.module 'sandwichlineApp'
.config ($stateProvider) ->
  $stateProvider.state 'record',
    url: '/record'
    templateUrl: 'app/record/record.html'
    controller: 'RecordCtrl'
    authenticate: true
