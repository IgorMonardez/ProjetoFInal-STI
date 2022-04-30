document.addEventListener("turbolinks: load", function () {
    var option ={
            url: "/users.json",

            getValue: "login",

            list:{
                match:{
                    enabled: true
                }
            }
    };
    $('#auto-complete').easyAutocomplete(option);
})