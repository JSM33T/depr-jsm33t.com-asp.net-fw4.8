var input = document.getElementById("userEmail");
input.addEventListener("keyup", function (event) {
  if (event.key === 13) {
    event.preventDefault();
    document.getElementById("subbutton").click();
  }
});
function submitmail() {
  var valid;
  valid = validateContact();
  if (valid) {
    $("#subbutton").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Saving');
    $("#subbutton").attr("class", 'btn btn-primary pe-none');
    jQuery.ajax({
      url: "/data/mailing_list.php",
      data: 'userEmail=' + $("#userEmail").val(),
      type: "POST",
      success: function (data) {
        $("#userEmail-info").html(data);
        $("#subbutton").html('Subscribe');
        $("#subbutton").attr("class", 'btn btn-primary');
        setTimeout(() => { $("#userEmail-info").html(""); }, 4000);
      },
      error: function () { }
    });
  }
}
function validateContact() {
  var valid = true;
  $(".demoInputBox").css('background-color', '');
  $(".info").html('');
  if (!$("#userEmail").val()) {
    $("#userEmail-info").html(" <div class=\"subscription-status mx-auto status-error\">Please enter your Email ID</div>");
    setTimeout(() => { $("#userEmail-info").html(""); }, 5000);
    valid = false;
  }
  if (!$("#userEmail").val().match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/)) {
    $("#userEmail-info").html(" <div class=\"subscription-status mx-auto status-error\">Invalid Email ID</div>");
    setTimeout(() => { $("#userEmail-info").html(""); }, 5000);
    valid = false;
  }
  return valid;
}
