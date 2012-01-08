// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require_tree .

$(document).ready(function() {
	$(function() {
		$(".date_stealer").datepicker($.datepicker.regional['pl']);
	});
	
	$(function() {
		$( "input:submit, a, button", ".knob" ).button();
		$( "a", ".knob" ).click(function() { return false; });
	});
	
	$(".placee").click(function(){
		window.location=$(this).find("a").attr("href"); return false;
	});

    $('#flash').fadeIn('normal', function() {
      $(this).mouseover(function(){
			$(this).fadeOut('slow');
      });
   });
});

// trza sie przyjrzec, skumać ajax w railsie
/*$(document).ready(function() {
$('alert').(function(){			
		$(this).fadeIn('slow');
		$(this).css('color','#CC0000');
		$(this).mouseover(function(){
		$(this).fadeOut('slow');
		});
});
});

//resztki jakiejs walki
   $(document).ready(function() {
        $("#place_country_input").delegate("place_country","change", function() {
        // make a POST call and replace the content
        var country = $('select#place_country :selected').val();
        if(country == "") country="";
        $.ajax('/places/update_region_select/' + country, function(data){
            $("#addressRegions").html(data);
        })
        return false;
      });
 });
*/

