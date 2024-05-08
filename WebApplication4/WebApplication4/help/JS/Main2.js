



$(document).ready(function () {
   
    $("input").on("focus", function () {
        $("input").removeClass("border-error");
        $("span").removeClass("label-error");
        $("span").removeClass("border-error");
        console.log("True");
    });

});


