messageFactory = (RailsResource) ->
  class Message extends RailsResource
    @configure url: '/messages', name: 'message'

messenger.factory('Message', ['RailsResource', messageFactory])
