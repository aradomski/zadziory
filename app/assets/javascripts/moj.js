 $(function(){
        $('.descripton span').hide();
        $('.descripton h3').click(function(){
            if ($(this).text() == '+ Rozwin opis') {
				//alert("rozwijam");
                $(this).text('- Zwin opis');
                $('.descripton span').slideDown('slow');
            } else {
				//alert("zwijam");
                $(this).text('+ Rozwin opis');
                $('.descripton span').slideUp('slow');
            }
        });
    });
$(function(){
	box = $('.grade_stars');
	ocena = box.text();
	box.text('');
	//alert (ocena);
	var insert= '';
	for (i=0;i<ocena;i++){
		insert = insert + '<img alt="true" height="15" src="/assets/star.png" width="15"/>';
	}
	box.html(insert);
});
$(function(){
	var aval = $('.show_header input:hidden');
	//alert(aval.attr('value'));
	if(aval.attr('value') == "true"){
		aval.parent().css('background', '#1eff00');
	}

});
