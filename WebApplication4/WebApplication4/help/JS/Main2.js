



$(document).ready(function () {
   
    $("input").on("focus", function () {
        $("input").removeClass("border-error");
        $("span").removeClass("label-error");
        $("span").removeClass("border-error");
       
    });



    $("#Remove_alert").on("click", function () {
        console.log("True");

    });

    console.log("HI");
});





