exports.create = (model, dom) ->
  self = this
  if model.get 'keydown'
    dom.addListener document, "keydown", (e) ->
      # Escape
      self.close "escape"  if e.keyCode is 27

exports.show = ->
  @model.set "show", true

exports.close = (action) ->
  @model.set "show", false

