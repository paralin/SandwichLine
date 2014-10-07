'use strict'

angular.module 'sandwichlineApp'
.controller 'RecordCtrl', ($scope, $http, Person, Auth) ->

  Person.get (persons)->
    window.persons = $scope.persons = persons.resource

  #$http.get '/api/persons'
  #.success (persons) ->
  #  window.persons = $scope.persons = persons

  $scope.options =
    showExited: false

  $scope.delete = (user) ->
    Person.remove id: user._id
    _.remove $scope.persons, user

  $scope.setComplete = (person)->
    person.time_exited = new Date()
    person.exited_early = false
    person.has_exited = true
    Person.save person
  $scope.create = ->
    person = new Person()
    person.time_entered = new Date()
    person.time_exited = null
    person.exited_early = false
    person.has_exited = false
    person.owner_email = Auth.getCurrentUser().email
    Person.save person, (resp)->
      person._id = resp._id
      $scope.persons.push person
