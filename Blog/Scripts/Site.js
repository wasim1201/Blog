function MoveToRecent() {


        //$("h1").css("background-color", "yellow");

        //$(".main-content h1").css("background-color", "yellow");
        //$(".main-content h1").text("jadsga");
    
    $(document).ready(function () {

            $([document.documentElement, document.body]).animate({
                scrollTop: $(".main-content h1").offset().top
            }, 500);
        
        
        
    });
}
