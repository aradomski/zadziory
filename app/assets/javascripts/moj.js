 $(function(){
        $('.descripton span').hide();
        $('.descripton h3').click(function(){
            if ($(this).text() == 'Rozwin opis') {
				//alert("rozwijam");
                $(this).text('Zwin opis');
                $('.descripton span').show();
            } else {
				//alert("zwijam");
                $(this).text('Rozwin opis');
                $('.descripton span').hide();
            }
        });
    });
