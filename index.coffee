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
			app.fn "modal.#{name}.show", -> modal.show()
			app.fn "modal.#{name}.close", -> modal.close()

	app.createLibrary config, options

