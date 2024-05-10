



$(document).ready(function () {
   
    $("input").on("focus", function () {
        $("input").removeClass("border-error");
        $("span").removeClass("label-error");
        $("span").removeClass("border-error");
       
    });


});





function RemoveAlert() {
    let div = document.getElementsByClassName("MainErrormsg");
    div[0].style.display = "none";
}