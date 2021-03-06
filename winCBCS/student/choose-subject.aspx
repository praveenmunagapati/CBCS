﻿<%@ Page Title="Subject Choice" Language="C#" MasterPageFile="~/student/student-home.Master" AutoEventWireup="true" CodeBehind="choose-subject.aspx.cs" Inherits="winCBCS.student.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentNavItems" runat="server">

    <li class=""><a href="student-home.aspx">Home</a></li>
    <!--<li class=""><a href="edit-student.aspx">Edit Profile</a></li>!-->
    <li class="active"><a href="choose-subject.aspx">Choose Course</a></li>
    <li class=""><a href="subject-choices.aspx">Course Choices</a></li>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi...<label id="student_name" runat="server">Student Name</label><span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="edit-student.aspx">Profile</a></li>
            <li><a href="change-pass-student.aspx">Change Password</a></li>
            <li><a href="../logout.aspx">Log Out</a></li>
        </ul>
    </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div id="status" runat="server" class="alert alert-danger alert-dismissable fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>For Every semester minimum credits are 25 and maximum credits are 35...!</strong>
        <label id="Label3" runat="server"></label>.
    </div>
    <div id="alert_error" runat="server" class="alert alert-danger alert-dismissable fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Fail!</strong>
        <label id="error_msg" runat="server">Course registration Failed.</label>.
    </div>
    <div id="alert_success" runat="server" class="alert alert-success alert-dismissable fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Success!</strong> Course registration successful.
    </div>
    <div class="col-md-6">
        <div class="panel panel-default ">
            <div class="panel-heading ">Choose Course</div>
            <div class="panel-body ">

                 <div class="form-group">
                   
                    <asp:Label ID="Label4" runat="server" Text="Select Curriculum"></asp:Label>
                    <asp:DropDownList ID="drpCurriculum" class="form-control" runat="server" placeholder="select any one" required="required" OnSelectedIndexChanged="drpCurriculum_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Curriculum !!!" ControlToValidate="drpCurriculum" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>



                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Programe Name"></asp:Label>
                    <asp:DropDownList ID="drdCourse" class="form-control" runat="server" placeholder="select any one" required="required" AutoPostBack="True" OnSelectedIndexChanged="drdCourse_SelectedIndexChanged">
                   
                     </asp:DropDownList>

                      <asp:RequiredFieldValidator ID="RequiredFieldCourse" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Course Name !!!" ControlToValidate="drdCourse" Display="Dynamic"></asp:RequiredFieldValidator>

                </div>

                
                <div class="form-group">
                   
                    <asp:Label ID="Email" runat="server" Text="Acadamic Year"></asp:Label>
                    <asp:DropDownList ID="drdYear" class="form-control" runat="server" placeholder="select any one" required="required" OnSelectedIndexChanged="drdYear_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldAcademicYear" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Academic Year !!!" ControlToValidate="drdYear" Display="Dynamic"></asp:RequiredFieldValidator>
                 </div>

                

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Semester"></asp:Label>
                    <asp:DropDownList ID="drdSem" class="form-control" runat="server" placeholder="select any one" required="required" AutoPostBack="True" OnSelectedIndexChanged="drdSem_SelectedIndexChanged">
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredFieldSem" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Semester !!!" ControlToValidate="drdSem" Display="Dynamic"></asp:RequiredFieldValidator>


                </div>


                
                <div class="form-group">
                    <asp:Label runat="server" Text="Foundation Course"></asp:Label>
                    <div class="form-group">
                        <asp:CheckBoxList ID="cbFoundation" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cbFoundation_SelectedIndexChanged" >
                    </asp:CheckBoxList>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label runat="server" Text="Core(Mandatory) Course"></asp:Label>
                    <div class="form-group">
                        <asp:ListBox ID="lbCore" runat="server" CssClass="form-control" SelectionMode="Single" ></asp:ListBox>
                    </div>
                </div>




            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default ">
              <div class="panel-heading ">Total Credit</div>
            <div id="total_credit" runat="server" class="panel-body" style="font-size:35px;text-align:center;">
                
            </div>
        </div>

        <div class="panel panel-default ">
            <div class="panel-heading ">Choose Programe Course</div>
            <div class="panel-body ">

                <div class="form-group">
                    <asp:Label runat="server" Text="Elective"></asp:Label>

                    <asp:CheckBoxList ID="cboxprogramcourse" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboxprogramcourse_SelectedIndexChanged" >
                    </asp:CheckBoxList>
                </div>
            </div>
        </div>



        <div class="panel panel-default ">
            <div class="panel-heading ">Choose Open Course</div>
            <div class="panel-body ">

                <div class="form-group">
                    <asp:Label runat="server" Text="Elective"></asp:Label>

                    <asp:CheckBoxList ID="cbOpen" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cbElective_SelectedIndexChanged">
                    </asp:CheckBoxList>
                </div>
            </div>
        </div>


        <asp:Button ID="btnSubmit" Text="Submit" runat="server" align="center" CssClass="btn btn-success col-md-offset-2" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
