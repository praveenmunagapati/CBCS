﻿<%@ Page Title="Subject Choice" Language="C#" MasterPageFile="~/faculty/faculty.Master" AutoEventWireup="true" CodeBehind="subject-choice.aspx.cs" Inherits="winCBCS.faculty.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentNavItems" runat="server">
    <li class=""><a href="faculty-home.aspx">Home</a></li>
    <li class="active"><a href="subject-choice.aspx">Course Choice</a></li>
    <li class=""><a href="faculty_profile.aspx">Profile</a></li>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">hi... <span id="faculty_name" runat="server">Faculty Name </span><span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="change-pass.aspx">Change Password</a></li>
            <li><a href="../logout.aspx">Logout</a></li>
        </ul>
    </li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <form id="form" runat="server" defaultbutton="btnAddSubject">
        <div class="col-md-6">
            <div id="alert_error" runat="server" class="alert alert-danger alert-dismissable fade in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Fail!</strong>
                <label id="error_msg" runat="server">Course Not Added.</label>.
            </div>
            <div id="alert_success" runat="server" class="alert alert-success alert-dismissable fade in">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Success!</strong><label id="success_msg" runat="server"> Course Added successful.</label>
            </div>

            <asp:Panel ID="panl_choice" runat="server"  class=" panel panel-primary">
                <div class="panel-body">
                    <div class="panel-body">

                         <div class="form-group">
                            <label for="email">Curriculum :</label>
                            <asp:DropDownList ID="drpCurriculum" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="drpCurriculum_SelectedIndexChanged" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Select Curriculum !!!" ControlToValidate="drpCurriculum" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                        
                        </div>

                         <div class="form-group">
                            <label for="email">Program Name:</label>
                            <asp:DropDownList ID="drdCourseName" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="drdCourseName_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldCourseName" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Course Name !!!" ControlToValidate="drdCourseName" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                        
                        </div>
                        

                        <div class="form-group">
                            <label for="email">Academic Year:</label>
                            <asp:DropDownList ID="drdAcademicYear" runat="server" CssClass="form-control"  AutoPostBack="True" OnSelectedIndexChanged="drdAcademicYear_SelectedIndexChanged"></asp:DropDownList>
                       <asp:RequiredFieldValidator ID="RequiredFieldAcademicYear" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Academic Year !!!" ControlToValidate="drdAcademicYear" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                             </div>
                       
                        <div class="form-group">
                            <label for="email">Semester:</label>
                            <asp:DropDownList ID="drdSemester" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="drdSemester_SelectedIndexChanged"></asp:DropDownList>
                       
                               <asp:RequiredFieldValidator ID="RequiredFieldSem" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Semester !!!" ControlToValidate="drdSemester" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                            
                             </div>
                        <div class="form-group">
                            <label for="email">Course Name:</label>
                            <asp:DropDownList ID="drdSubjetName" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="drdSubjetName_SelectedIndexChanged" ></asp:DropDownList>
                       <asp:RequiredFieldValidator ID="RequiredFieldSubname" CssClass="text-danger" InitialValue="" runat="server" ErrorMessage="Enter Course !!!" ControlToValidate="drdSubjetName" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                            
                             </div>
                        <div class="form-group">
                            <label for="email">Priority:</label>
                            <asp:DropDownList ID="drdProirity" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldPriority" CssClass="text-danger" InitialValue="0" runat="server" ErrorMessage="Enter Subject Priority !!!" ControlToValidate="drdProirity" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>

                        
                        </div>
                        <div class="form-group">
                            <label for="email">Experiance :</label>
                            <asp:TextBox ID="txtSubExperiance" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldExp" CssClass="text-danger"  runat="server" ErrorMessage="Enter Experiance !!!" ControlToValidate="txtSubExperiance" Display="Dynamic" ValidationGroup="akki"></asp:RequiredFieldValidator>


                        </div>
                        <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" CssClass="btn btn-info" OnClick="btnAddSubject_Click" ValidationGroup="akki" />
                       
                        <asp:Button ID="btnClear" runat="server" CssClass="btn btn-info" OnClick="btnClear_Click" Text="Clear" />
                    </div>
                     
                </div>
            </asp:Panel>

        </div>
        <asp:Panel ID="panel_list" runat="server" class="col-md-6">

            <asp:DataList ID="dataSubjectChoice" runat="server" CssClass="table table-striped" OnItemCommand="dataSubjectChoice_ItemCommand">
                <HeaderTemplate>
                    <th>Program</th>
                    <th>Semester</th>
                    <th>Academic Year</th>
                    <th>Course Name</th>
                    
                    <th>Credits</th>
                    
                    <th>Priority</th>
                    <th>Exprience</th>
                    <th>Operations</th>
                    
                </HeaderTemplate>
                <ItemTemplate>
                    <td><%# Eval("course_name") %></td>
                    <td><%# Eval("subject_semester") %></td>
                    <td><%# Eval("academic_year") %></td>
                    <td><%# Eval("subject_name") %></td>
                    
                    <td><%# Eval("subject_credit") %></td>
                    <td><%# Eval("priority") %></td>
                    <td><%# Eval("exprience") %></td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" CommandName="data_delete" CommandArgument='<%# Eval("choice_id") %>' Text="Delete" CssClass="btn btn-danger" />
                    </td>
                </ItemTemplate>

            </asp:DataList>
        </asp:Panel>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
