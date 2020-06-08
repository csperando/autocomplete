

<!------>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/javascripts/autocompleteTest.js"></script>
<link rel="stylesheet" type="text/css" href="/stylesheets/autocompleteTestStyle.css">
<!------>

<h1>Jquery Form Autocomplete Test</h1>

<div>
  <p></p>

  <form action="/index.cfm/say/getStuff" autocomplete="off" id="autocompleteForm">

  <cfoutput>
    #authenticityTokenField()#
    <div id="searchBoxDiv">
      <input type="text" name="input" id="searchBox">
      <div id="outputDiv" style="display:none"></div>
    </div>
    <input type="button" value="Click me" name="button" id="button">
    <input type="hidden" name="magicNumber=#createUUID()#">
  </cfoutput>

  </form>

</div>

<div style="height:300px">
<!--- extra space to easily view dropdown --->
</div>
