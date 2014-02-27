messenger.controller 'HomeCtrl', ['$scope', 'Message', 'Faye', ($scope, Message, Faye) ->
  $scope.newMessages = false

  Message.query().then (messages) ->
    $scope.messages = messages

  Faye.subscribe '/channel1', (message) ->
    $scope.messages.push(message)
    $scope.newMessages = true

  $scope.sendMessage = ->
    message = new Message
      body: $scope.messageBody,
      from: $scope.messageFrom

    message.create()

    $scope.messageBody = null
    $scope.messageFrom = null

  $scope.seeMessages = ->
    $scope.newMessages = false
]
