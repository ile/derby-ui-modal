config =
	filename: __filename
	ns: 'ui2'
	scripts:
		modal: require('./modal')
	styles: [__dirname]

module.exports = (app, options) ->

	app.fn 'ui.modal.create', (modal) ->
		name = modal.model.get('name')
		if name
			app.fn "modal.#{name}.show", ->
				@model.set("_page.modal.#{name}", true)
				modal.show()
			app.fn "modal.#{name}.close", (e) ->
				action = e.target.getAttribute("data-action")
				@model.pass({ action: action or undefined }).del("_page.modal.#{name}")
				modal.close(action)

	app.createLibrary config, options

