derby-ui-modal
========

Derby ui component: modal dialog.

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
```

Black dialog
```html
<ui2:modal inverse>
```

ESC will close the dialog
```html
<ui2:modal keydown>
```

Give it a name
```html
<ui2:modal name="my_dialog">
```

This will create functions `app.modal.my_dialog.show` and `app.modal.my_dialog.close` which can be used in templates and in the code.

## Beware

The namespace `ui2` will be changed later to `ui`.