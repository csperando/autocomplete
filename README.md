# autocomplete

This is a very basic autocomplete project I made for a website using coldfusion.
Using javascript/jquery a dropdown menu appears below a text input with a list of at most 10 items from a query.
The query and dropdown are updated using a $.Get() request on every keydown event.

There are two separate view files. autocomplete.cfm is the main cfml file containing the form to be submitted, and results.cfm contains the list of items from the query. Script tags including autocomplete.js as well as jquery are contained in autocomplete.cfm. 

autocomplete.cfc is the controller for the two views, and contains the query providing the desired autocomplete items to display.
