derby-ui-modal
========

[Derby](http://derbyjs.com/) ui component: modal dialog.

## Installation

`npm install derby-ui-modal`

In app.js:

```javascript
var app;
app = require('derby').createApp(module)
	.use(require('derby-ui-modal'));

```

## Usage

### In templates

#### White dialog
```html
<ui2:modal>
	<p>Content</p>
</ui2:modal>
```

#### Black dialog
```html
<ui2:modal inverse>
	<p>Content</p>
</ui2:modal>
```

#### ESC will close the dialog
```html
<ui2:modal keydown>
	<p>Content</p>
</ui2:modal>
```

#### Naming it

Give it a name. This will create functions `app.modal.my_dialog.show` and `app.modal.my_dialog.close` which can be used in templates and in the code.

As the functions are created, you can bind a Close button to the closing function:

```html
<ui2:modal name="my_dialog">
	<p>Content</p>
	<button x-bind="click:modal.my_dialog.close">Close</button>
</ui2:modal>
```

You can of course combine these parameters.

## Listening to events

`_page.modal.my_dialog` will be set or deleted when a modal is created/destroyed:

```coffeescript
  model.on 'change', '_page.modal.modal-2', (value, previous, passed) ->
    if value
      console.log 'modal created'
    else
      console.log 'modal destroyed with action ' + passed.action
```

`action.passed` is a parameter that can be set in a template:

```html
<ui2:modal name="my_dialog">
	<p>Content</p>
	<button x-bind="click:modal.my_dialog.close" data-action="ok">Ok</button>
	<button x-bind="click:modal.my_dialog.close" data-action="cancel">Close</button>
</ui2:modal>
```

## Beware

The namespace `ui2` will be changed later to `ui`.