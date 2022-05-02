import 'jquery'

$(document).ready(function (){
    $("#search-input").keyup(function (){
        $.ajax({
            type: "POST",
            url: "search",
            data:'name='+$(this).val(),
            sucess: function (data){
                $("#suggestion-box").show();
                $("#suggestion-box").html(data);
                $("#search-input").css("background","#FFF");
            }
        });
    });
});