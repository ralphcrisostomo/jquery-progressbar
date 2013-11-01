# progressBar.js


A Youtube Progress Bar jQuery Plugin

### DEMO
[View Demo](http://demo.ralphcrisostomo.net/progressBarJS/)

### 1. Setup

Add the following inside your `<head></head>` element.

    <link rel="stylesheet" href="stylesheets/jquery.progressbar.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
    <script src="javascripts/jquery.progressbar.js" type="text/javascript"></script>

### 2. Javascript

Just simply attach progress bar plugin into body element and simply increment the progress from `0` to `100`. 
Reaching `100` will automatically fade out and remove the progress bar from the DOM.	 

	$("body").progressbar(1)
	$("body").progressbar(100)
	
### 3. Future

Roadmap on progressBar.js development are:

- AJAX integration
- Backbone integration
- PreloadJs integration
- 

Acknowledgements
----------------

© 2013, Ralph Crisostomo Released under the [MIT License](License.md).

*progressBarJS** is authored and maintained by [Ralph Crisostomo][rrec]

[rrec]: http://ralphcrisostomo.net
