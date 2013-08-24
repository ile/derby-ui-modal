derby-ui-modal
========

[Derby](http://derbyjs.com/) ui component: modal dialog.

## Installation

`git clone`

In app.js:

```javascript
var app;
app = require('derby').createApp(module)
	.use(require('derby-ui-modal'));

```

## Usage

### In templates

White dialog
```html
<ui2:modal>
	<p>Content</p>
</ui2:modal>
```

Black dialog
```html
<ui2:modal inverse>
	<p>Content</p>
</ui2:modal>
```

ESC will close the dialog
```html
<ui2:modal keydown>
	<p>Content</p>
</ui2:modal>
```

Give it a name. This will create functions `app.modal.my_dialog.show` and `app.modal.my_dialog.close` which can be used in templates and in the code.
```html
<ui2:modal name="my_dialog">
	<p>Content</p>
	<button x-bind="click:modal.my_dialog.close">Close</button>
</ui2:modal>
```

You can of course combine these parameters.

### Note

You will have to create the close button yourself, and bind it to the appropriate function.

## Beware

The namespace `ui2` will be changed later to `ui`.