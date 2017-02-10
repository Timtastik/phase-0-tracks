#Notes on jQuery

jQuery is a JavaScript file that you include in your pages. It lets you find elements using CSS-style selectors and then do something with the element using jQuery methods.

This checks if the DOM tree has been created then executes the script.
    $(document).ready(function(){});

Events are the browser's way of indicating when something has happened (such as when a page has finished loadaing or a button has been clicked).

Binding is the process of stating which event you are waiting to happen, and which element you are waiting for that event to happen upon.

When an event occurs on an element, it can trigger a JavaScript function. When this function then changes the web page in some way, it feels interactive because it has responded to the user.

You can use event delegation to monitor for events that hapen on all of the children of an element.

The most commonly used events are W3C DOM events, although there are others in the HTML5 specification as well as browser-specific events.

Cheatsheets/References:
[Quick API Reference](https://oscarotero.com/jquery/)
[tutorials points](https://www.tutorialspoint.com/jquery/jquery-overview.htm)

## Strategy

* Make an basic HTML practice page to work with
* CSS style sheet would be nice, but no time for that, and I don't have a pre made one
* Make a script that makes the site interactive
* If not, Make a script that shows understanding of jQuery