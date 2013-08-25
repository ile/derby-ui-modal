exports.create = (model, dom) ->
  self = this
  dom.addListener document, "keydown", (e) ->
    # Escape
    console.log 'keydown'
    if model.get('keydown') and model.get('show')
      console.log 'keydown - closing'
      console.log self
      self.close "escape" if e.keyCode is 27

exports.show = ->
  @model.set "show", true

exports.close = (action) ->
  @model.set "show", false

