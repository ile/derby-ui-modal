// Generated by CoffeeScript 1.6.3
var config;

config = {
  filename: __filename,
  ns: 'ui2',
  scripts: {
    modal: require('./modal')
  },
  styles: [__dirname]
};

module.exports = function(app, options) {
  app.fn('ui.modal.create', function(modal) {
    var name,
      _this = this;
    name = modal.model.get('name');
    if (name) {
      modal.model.on('change', 'show', function(value, previous, passed) {
        if (value) {
          return _this.model.set("_page.modal." + name, true);
        } else {
          return _this.model.pass(passed).del("_page.modal." + name);
        }
      });
      app.fn("modal." + name + ".show", function() {
        return modal.show();
      });
      return app.fn("modal." + name + ".close", function(e) {
        var action;
        action = e.target.getAttribute("data-action");
        return modal.close(action);
      });
    }
  });
  return app.createLibrary(config, options);
};
