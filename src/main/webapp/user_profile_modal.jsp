<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "";
    String email = "";
    User user = (User) session.getAttribute("current_user");
    if(user == null) {
        response.sendRedirect("login.jsp");
    } else {
        name = user.getName();
        email = user.getEmail();
    }
%>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Your Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="pbody">
                    <b>Your Name : </b> <%=name%>
                    <br>
                    <b> Your Email : </b> <%=email%>
                </div>
<%--                edit profile pic                     --%>
                <div id="imgbody">
                    <div class="mb-3">
                        <form action="UpdateProfile" method="POST" enctype="multipart/form-data">
                        <label for="formFile" class="form-label">Update Profile</label>
                        <input class="form-control" type="file" id="formFile" name="file_">
                        <button type="submit" id="updateprofile" class="btn btn-primary mt-3">Update</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
<%--                <button type="button" id="btn" value="edit" onclick="change()" class="btn btn-primary">Edit</button>--%>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
    const imgbody = document.getElementById("imgbody");
    const pbody = document.getElementById("pbody");
    pbody.style.display = "block";
    imgbody.style.display = "none";

    // function updateProfile() {
    //     const fileData = $("#formFile")[0].files;
    //     $.ajax({
    //         url: "UpdateProfile",
    //         type: "POST",
    //         data: {
    //             file_ : fileData
    //         },
    //         contentType: false,
    //         processData: false,
    //         success: function (data) {
    //             console.log(data);
    //         }
    //     })
    // }

    function change() {
        const imgbody = document.getElementById("imgbody");
        const pbody = document.getElementById("pbody");
        const btn = document.getElementById("btn");
        if(btn.value == "edit") {
            pbody.style.display = "none";
            imgbody.style.display = "block";
            btn.value = "view";
        } else {
            pbody.style.display = "block";
            imgbody.style.display = "none";
            btn.value = "edit";
        }
    }
</script>