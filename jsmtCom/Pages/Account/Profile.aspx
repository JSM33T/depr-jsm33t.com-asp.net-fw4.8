<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="jsmtcom.Account.Profile" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
    <style>
        /*    input:-internal-autofill-selected {
    appearance: menulist-button;
    background-image: none !important;
    background-color: -internal-light-dark(rgb(18 21 25), rgba(18, 21, 25, 0.4)) !important;
    color: fieldtext !important;
}*/
        .hidden {
        display:none !important;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
            <div class="col-lg-12 pt-4 pb-2 pb-sm-4">
                <h1 class="h2 mb-4">Profile</h1>

                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
                            <i
                                class="ai-user text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">Basic info</h2>
                        </div>
                        <asp:UpdatePanel ID="profilepanel" runat="server">
                            <ContentTemplate>
                                <div class="d-md-flex align-items-center">
                                    <div class="d-sm-flex align-items-center">

                                        <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" id="avatar_placeholder" runat="server"></div>
                                        <div class="pt-3 pt-sm-0 ps-sm-3">
                                            <h3 class="h5 mb-2">
                                                <asp:Label ID="profilename" runat="server" Text="Prof Name Here" />
                                            </h3>
                                            <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                                                <div class="d-flex align-items-center me-3">
                                                    <i class="ai-user me-1"></i>
                                                    <asp:Literal ID="userRole" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-100 pt-3 pt-md-0 ms-md-auto col-sm-12" style="max-width: 212px;">
                                        <div class="d-flex justify-content-between fs-sm pb-1 mb-2">Select your avatar</div>
                                        <asp:DropDownList ID="avatars" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="LiveAvatarUpdate"></asp:DropDownList>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="row g-3 g-sm-4 mt-0 mt-lg-2">
                            <div class="col-sm-6">
                                <label class="form-label" for="fn">First name</label>
                                <input class="form-control bindenter1" type="text" id="fname" runat="server" aria-autocomplete="none"/>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="ln">Last name</label>
                                <input class="form-control bindenter1" type="text" id="lname" runat="server" aria-autocomplete="none"/>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="email">Email address</label>
                                <input class="form-control bindenter1" type="text" placeholder="Enter your email" value="email " id="email" runat="server" aria-autocomplete="none"/>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="phone">Phone <span class='text-muted'>(optional)</span></label>
                                <input class="form-control bindenter1" type="tel"
                                    data-format="{&quot;numericOnly&quot;: true, &quot;delimiters&quot;: [&quot;+1 &quot;, &quot; &quot;, &quot; &quot;], &quot;blocks&quot;: [0, 3, 3, 2]}"
                                    placeholder="NA" id="phone" runat="server"/>
                            </div>
                            <%--<div class="col-12">
                                <label class="form-label" for="bio">Bio</label>
                                <textarea class="form-control" rows="5" placeholder="Add a bio" value="test"
                                    id="bio" >bio </textarea>
                            </div>--%>
                            <div class="col-12 d-sm-flex align-items-center pt-sm-2 pt-md-3">
                                <div class="form-label text-muted mb-2 mb-sm-0 me-sm-4">Gender:</div>
                                <div class="form-check form-check-inline mb-0">
                                    <input class="form-check-input" type="radio" name="gender" value="m" id="male" runat="server"/>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check form-check-inline mb-0">
                                    <input class="form-check-input" type="radio" name="gender" value="f" id="female" runat="server"/>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                                <div class="form-check form-check-inline mb-0">
                                    <input class="form-check-input" type="radio" name="gender" value="o" id="other" runat="server"/>
                                    <label class="form-check-label" for="other">Other</label>
                                </div>
                            </div>
                            <div class="col-12 d-flex justify-content-end pt-3">
                                <button class="btn btn-primary ms-3" type="button" id="save_profile" onclick="save_prof()">Save Profile</button>
                                <span class="hidden">
                                    <asp:UpdatePanel ID="buttonpanel" runat="server">
                                        <ContentTemplate>
                                            <%--removed type submit--%>
                                            <asp:Button ID="SaveAsp" type="Submit" OnClick="SaveProfileClick" runat="server" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </span>

                            </div>
                        </div>

                        <asp:UpdatePanel ID="profilestat" runat="server">
                            <ContentTemplate>
                                <asp:Literal ID="profstat" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </section>

                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3">
                            <i
                                class="ai-lock-closed text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">Password</h2>
                        </div>
                        <div class="row align-items-center g-3 g-sm-4 pb-3">
                            <div class="col-sm-6">
                                <label class="form-label" for="new-pass">New password</label>
                                <div class="password-toggle">
                                    <input class="form-control bindenter2" type="password" id="new_pass" runat="server">
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check bindenter2" type="checkbox"><span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="confirm-pass">Confirm new password</label>
                                <div class="password-toggle">
                                    <input class="form-control bindenter2" type="password" id="confirm_pass" runat="server">
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check bindenter2" type="checkbox"><span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <span id="db_stat"></span>
                        <div class="d-flex justify-content-end pt-3">

                            <button class="btn btn-primary ms-3" type="button" id="save_password" onclick="save_pass()">Save Changes</button>
                            <span class="hidden">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <%--removed type submit--%>
                                        <asp:Button ID="SaveAsp2" type="Submit" OnClick="SavePasswordClick" runat="server" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </span>
                        </div>
                        <asp:UpdatePanel ID="passstatpanel" runat="server">
                            <ContentTemplate>
                                <asp:Literal ID="PassStat" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <hr class="d-none d-dark-mode-block">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
    <script>
        $(document).ready(function () {
            $('.bindenter1').keypress(function (event) {
                if (event.keyCode === 10 || event.keyCode === 13) {
                    event.preventDefault();
                    save_prof();
                }
            });
            $('.bindenter2').keypress(function (event) {
                if (event.keyCode === 10 || event.keyCode === 13) {
                    event.preventDefault();
                    save_pass();
                }
            });
        });


        function save_prof() {
            localStorage.setItem("method", "profile");
            var sEmail = document.getElementById("MainContent_email").value;
            var reEmail = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;
            if (!sEmail.match(reEmail)) {
                $("#MainContent_profilestat").html('<div class="subscription-status mx-auto status-error">Invalid Email Format</div>')
                setTimeout(() => { $("#MainContent_profilestat").html(''); }, 5000);
            }
            else if (document.getElementById("MainContent_fname").value == "") {
                $("#MainContent_profilestat").html('<div class="subscription-status mx-auto status-error">First Name is required</div>')
                setTimeout(() => { $("#MainContent_profilestat").html(''); }, 5000);
            }
            else if (document.getElementById("MainContent_female").checked == false && document.getElementById("MainContent_male").checked == false && document.getElementById("MainContent_other").checked == false) {
                $("#MainContent_profilestat").html('<div class="subscription-status mx-auto status-error">Gender is required</div>')
                setTimeout(() => { $("#MainContent_profilestat").html(''); }, 5000);
            }
            else { save_profile(); }
        }
        function save_profile() {
            $("#save_profile").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Saving');
            $("#save_profile").attr("class", "btn btn-primary pe-none");
            $('#MainContent_SaveAsp').click();
        }

        function save_pass() {
            localStorage.setItem("method", "pass");
            if (document.getElementById("MainContent_new_pass").value == "" || document.getElementById("MainContent_new_pass").value.length <= 5) {
                $("#MainContent_passstatpanel").html('<div class="subscription-status mx-auto status-error">Password should be atleast 6 digits long</div>')
                setTimeout(() => { $("#MainContent_passstatpanel").html(''); }, 5000);
            }
            else if (document.getElementById("MainContent_new_pass").value != document.getElementById("MainContent_confirm_pass").value) {
                $("#MainContent_passstatpanel").html('<div class="subscription-status mx-auto status-error">Your passwords dont Match</div>')
                setTimeout(() => { $("#MainContent_passstatpanel").html(''); }, 5000);
            }
            else {
                save_password();
            }
        }
        function save_password() {
            $("#save_password").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Saving');
            $("#save_password").attr("class", "btn btn-primary pe-none");

            $('#MainContent_SaveAsp2').click();
        }


        function pageLoad() {
            var methodstate = localStorage.getItem("method");
            if(methodstate == "profile")
            {
                $("#MainContent_passstatpanel").html('')
                $('#save_profile').html('<i class="ai-check"></i>&nbsp;Saved');
                $("#save_profile").attr("class", "btn btn-primary");
                setTimeout(() => {
                    $("#MainContent_profilestat").html('');
                    $('#save_profile').html('Save Profile');
                }, 3000); 
                
                localStorage.removeItem("method");

            }
            else if(methodstate == "pass")
            {
                $("#MainContent_profilestat").html('');
                setTimeout(() => { $("#MainContent_passstatpanel").html(''); }, 4000); 
                $('#save_password').html('Save Changes');
                $("#save_password").attr("class", "btn btn-primary");
                localStorage.removeItem("method");
            }

           

            

           
            
          
            
            

        }



    </script>

</asp:Content>
