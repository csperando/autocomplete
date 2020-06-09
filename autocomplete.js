// Global Variables
var maxIndex = 10;
var currentFocus = 0;

$(document).ready(function(){

  // arrow key navigation for 40 and 38
  // enter key for 13
  // else update query for autocomplete list
  $("#searchBox").keydown(function(e){
    if (e.keyCode === 40) {
      e.preventDefault();
      if(currentFocus == maxIndex){
        //console.log(currentFocus);
      }
      else{
        currentFocus++;
        $("#"+(currentFocus-1)).css("color","black");
        $("#"+currentFocus).css("color","blue");
        //console.log($("#"+currentFocus).text());
      }

      return;
    }
    else if (e.keyCode === 38) {
      e.preventDefault();
      //console.log('up arrow');
      if (currentFocus <= 1) {
        // cannot go further up list
      }
      else {
        currentFocus--;
        $("#"+(currentFocus+1)).css("color","black");
        $("#"+currentFocus).css("color","blue");
        //console.log($("#"+currentFocus).text());
      }
    }
    else if (e.keyCode === 13) {
      e.preventDefault();
      $("#searchBox").val($("#"+currentFocus).text().trim());
      $("#autocompleteForm").submit();
    }
    /*
    else if(e.keyCode === 8 || e.keyCode === 46) {
      // backspace or delete
    }
    */
    else {
      //console.log(e.keyCode);
      getRequest($("#searchBox").val());
    }
  });

  $("#button").click(function(){
    $("#autocompleteForm").submit();
  })

});




function getRequest(inputText) {
  // display autocomplete box once user begins typing
  $("#outputDiv").css("display","block");

  // get information from text input
  $.get("/index.cfm/autocomplete/results", {input:inputText}, function(result, status, xhr){
    // result returned as String
    // parse as HTML to add events for autocomomplete items
    // console.log($.type(result));
    $.parseHTML(result);
    $("#outputDiv").html(result);

    // update value of search box with autocomplete item when clicked
    $(".autocompleteItems").on("click", function(){
      // fix white space and hide autocomplete box once selection is made
      $("#searchBox").val($(this).text().trim());
      $("#outputDiv").css("display","none");
    })
  });

} //end getRequest function



function updateMax(number){
  maxIndex = number;
  //console.log(maxIndex);
  return;
}
