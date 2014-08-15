{View} = require 'atom'

module.exports =
class NodeDebuggerView extends View
  @content: ->
    @div class: "node-debugger panel", =>
      @div class: "panel-heading", "Node Debugger"
      @div class: "panel-body padded", "body is here"

  initialize: (serializeState) ->
    atom.workspaceView.command "node-debugger:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    if @hasParent()
      @detach()
    else
      atom.workspaceView.appendToBottom(this)
