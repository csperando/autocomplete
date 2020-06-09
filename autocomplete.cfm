

<!------>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/javascripts/autocomplete.js"></script>
<link rel="stylesheet" type="text/css" href="/stylesheets/autocompleteTestStyle.css">
<!------>


<form action="/index.cfm/say/getStuff" autocomplete="off" id="autocompleteForm">
  <cfoutput>
    <div id="searchBoxDiv">
      <input type="text" name="input" id="searchBox">
      <div id="outputDiv" style="display:none"></div>
    </div>
    <input type="button" value="Search" name="button" id="button">
  </cfoutput>
</form>
