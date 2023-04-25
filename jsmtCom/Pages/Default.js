function mail_trigger() {
    $("#subbutton").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Saving'), $("#subbutton").attr("class", "btn btn-primary pe-none"), $("#MainContent_submitmail").click()
}

function mail_init() {
    var t;
    document.getElementById("MainContent_userEmail").value.match(/^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/) ? mail_trigger() : ($("#MainContent_emailstat").html('<div class="subscription-status mx-auto status-error">Invalid Email Format</div>'), setTimeout(() => {
        $("#MainContent_emailstat").html("")
    }, 4e3))
}

function pageLoad() {
    $("#subbutton").html("Subscribe"), $("#subbutton").attr("class", "btn btn-primary"), setTimeout(() => {
        $("#MainContent_emailstat").html("")
    }, 4e3)
}
$(document).ready(function () {
    $("#MainContent_userEmail").keypress(function (t) {
        (10 === t.keyCode || 13 === t.keyCode) && (t.preventDefault(), mail_init())
    })
});