class WebSocketService
  constructor: (@wsUrl, @timeout) ->
    @ws = new ReconnectingWebSocket(@wsUrl) if ReconnectingWebSocket
    @ws = new WebSocket(@wsUrl) unless ReconnectingWebSocket
    @handlers = []

    @ws.onmessage = @_onmessage.bind(this)

  on: (callback) ->
    @handlers.push(callback)

  _onmessage: (message) ->
    obj = JSON.parse(message.data)
    #console.log(obj)

    for handler in @handlers
      handler(obj)


angular.module('WebSocketService', ["HolmesConfig"], ($provide) ->
  $provide.factory('WebSocket', (wsUrl, $timeout) ->
    new WebSocketService(wsUrl, $timeout)
  )
)