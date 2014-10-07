'use strict'

parseResponseDates = (response) ->
  key = undefined
  value = undefined
  console.log response
  for data in response.resource
    for key of data
      continue  if not (data.hasOwnProperty(key) and typeof data[key] is "string")
      value = moment(data[key]) # try to parse to date
      data[key] = value if value.isValid()
  response

angular.module 'sandwichlineApp'
.factory 'Person', ($resource) ->
  $resource '/api/persons/:id/:controller',
    id: '@_id'
  ,
    get:
      method: 'GET'
      params: {}
      isArray: true
      interceptor: {response: parseResponseDates}
