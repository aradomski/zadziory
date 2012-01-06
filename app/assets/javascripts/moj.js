 $(function(){
        $('.descripton span').hide();
        $('.descripton h3').click(function(){
            if ($(this).text() == 'Rozwin opis') {
				//alert("rozwijam");
                $(this).text('Zwin opis');
                $('.descripton span').slideDown('slow');
            } else {
				//alert("zwijam");
                $(this).text('Rozwin opis');
                $('.descripton span').slideUp('slow');
            }
        });
    });
