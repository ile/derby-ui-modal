exports.create = (model, dom) ->
  self = this
  if model.get 'keydown'
    dom.addListener document, "keydown", (e) ->
      # Escape
      self.close "escape"  if e.keyCode is 27

exports.show = ->
  @model.set "show", true

exports.close = (action) ->
  cancelled = @emitCancellable("close", action)
  @model.set "show", false  unless cancelled

exports._click = (e) ->
  action = e.target.getAttribute("data-action")
  @close action  if action