<cfset maxIndex = stuffQuery.recordCount>

<div class="autoWrap" id="autoWrap">
  <cfloop index="i" from="1" to="#maxIndex#">
  <cfoutput>
    <a class="autocompleteItems" id="#i#">#stuffQuery.cityState[i]#</a>
  </cfoutput>
</cfloop>
</div>

<cfoutput>
<script>
updateMax(#maxIndex#);
</script>
</cfoutput>
