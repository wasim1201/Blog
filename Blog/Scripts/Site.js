function MoveToRecent() {


    $(document).ready(function () {

        //$("h1").css("background-color", "yellow");

        //$(".main-content h1").css("background-color", "yellow");
        //$(".main-content h1").text("jadsga");

        
            $([document.documentElement, document.body]).animate({
                scrollTop: $(".main-content h1").offset().top
            }, 2000);
        
      
        
    });
}

