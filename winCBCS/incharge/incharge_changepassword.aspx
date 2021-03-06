﻿<%@ Page Title="" Language="C#" MasterPageFile="~/incharge/incharge.Master" AutoEventWireup="true" CodeBehind="incharge_changepassword.aspx.cs" Inherits="winCBCS.incharge.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentNavItems" runat="server">

    
     <li class="active"><a href="incharge-home.aspx">Home</a></li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Program <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_course.aspx">Add Program</a></li>
            <li><a href="incharge_listcourse.aspx">List Program</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Course <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_subject.aspx">Add Course</a></li>
            <li><a href="incharge_listsubject.aspx">List Course</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Venue <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_venue.aspx">Add Venue</a></li>
            <li><a href="incharge_listvenue.aspx">List Venue</a></li>
        </ul>
    </li>
    
    
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View Time Table <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="facultytimetable.aspx">For Faculty</a></li>
            <li><a href="studenttimetable.aspx">For Student</a></li>
        </ul>
    </li>

  <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi...<label id="incharge_name" runat="server">Incharge Name</label> <span class="caret"></span></a>
        <ul class="dropdown-menu">
             <li><a href="incharge_profile.aspx">Profile</a></li>
            <li><a href="incharge_changepassword.aspx">Forgot Password</a></li>
                         <li><a href="../logout.aspx">Logout</a></li>


           
        </ul>
    </li>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

    
        <div id="alert_error" runat="server" class="alert alert-danger alert-dismissable fade in">
             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
             <strong>Fail!</strong> <label id="error_msg" runat="server">Password Not Changed.</label>.
         </div>
         <div id="alert_success" runat="server" class="alert alert-success alert-dismissable fade in">
             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
             <strong>Success!</strong> Password Changed.
         </div>



     <div class="col-md-offset-6">
    <div class="panel panel-default">
  <div class="panel-heading" >Forgot Password</div>
  <div class="panel-body">
    
       <div class="form-horizontal ">
        
         <div class="form-group">
              <asp:Label ID="Label2" runat="server" CssClass="col-md-4 control-label" Text="Email">

              </asp:Label>
             <div class="col-md-6">
                 <asp:TextBox ID="txtEmailincharge" CssClass="col-md-2 form-control" runat="server" ReadOnly="true"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldyear" CssClass="text-danger" runat="server" ErrorMessage="Enter Email !!!" ControlToValidate="txtEmailincharge"></asp:RequiredFieldValidator>
             </div>
             </div>


            <div class="form-group">
              <asp:Label ID="Label4" runat="server" CssClass="col-md-4 control-label" Text="Current Password">

              </asp:Label>
             <div class="col-md-6">
                 <asp:TextBox ID="txtCurrentPass" CssClass="col-md-2 form-control" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldcurrentpass" CssClass="text-danger" runat="server" ErrorMessage="Enter Password !!!" ControlToValidate="txtCurrentPass"></asp:RequiredFieldValidator>
             </div>
             </div>


           <div class="form-group">
              <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Text="Password">

              </asp:Label>
             <div class="col-md-6">
                 <asp:TextBox ID="txtPassword" CssClass="col-md-2 form-control" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Enter Password !!!" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
             </div>
             </div>


            <div class="form-group">
              <asp:Label ID="Label3" runat="server" CssClass="col-md-4 control-label" Text="Confirm Password">

              </asp:Label>
             <div class="col-md-6">
                 <asp:TextBox ID="txtConfirmpassword" CssClass="col-md-2 form-control" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Enter Confirm Password !!!" ControlToValidate="txtConfirmpassword"></asp:RequiredFieldValidator>
             </div>
             </div>
          
       </div>
      
           
             
           <div class="form-group">
            <div class="col-md-2"></div>
               
            <div class="col-md-6">
             <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnSubmit_Click" />
            </div>
             </div>   

           <div class="form-group">
            <div class="col-md-2"></div>
               
           
             <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-default" OnClick="btnClear_Click" />
            </div>
            

           </div>
      </div>
</div>
    

    

    
  


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
