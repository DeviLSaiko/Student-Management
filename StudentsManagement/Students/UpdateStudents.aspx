﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateStudents.aspx.cs" Inherits="Student_Management.StudentsManagement.Students.UpdateStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration - Add Students info to the DataBase...</title>
    <link rel="stylesheet" href="Style Sheet1.css" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src="../../Assets/BS5/bootstrap.bundle.min5.js"></script>
    <link href="../../Assets/BS5/bootstrap.min5.css" rel="stylesheet" />
    <link href="../../Assets/font-awesome.min.css" rel="stylesheet" />

    <style type="text/css">
  
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">

            <a class="navbar-brand" href="../Admin.aspx">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active " href="Student_Regstration.aspx">Student Regstration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="StudentList.aspx">Students List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Students.aspx">Students </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header -->
    <div class="container-fluid mt-3">
        <h3>Students Management</h3>
        <p>Student Registration - Fill The Form And Register Students </p>
    </div>
    <br />


    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="align-content-center">
                   
                        <div>
                            <table class="table table-borderless">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Name</td>
                                    <td>
                                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Height="28px" Width="187px"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Contact</td>
                                    <td>
                                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Height="28px" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1">Batch</td>
                                    <td>
                                        <asp:TextBox ID="txtBatch" runat="server" CssClass="form-control" Height="28px" Width="188px"></asp:TextBox></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style5">Department</td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddDepart" runat="server" Font-Size="Small" CssClass="form-select" Height="28px" Width="192px" AutoPostBack="True"></asp:DropDownList></td>
                                    <td class="auto-style4"></td>
                                </tr>

                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style3">Date Of Join</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtDateofJo" runat="server" CssClass="form-control" TextMode="Date" Height="25px" Width="187px"></asp:TextBox></td>
                                    <td class="auto-style2"></td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="auto-style1"></td>
                                    <td>
                                        <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Register Student" CssClass="btn btn-dark" Width="157px" Height="39px" /></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                   
                </div>
            </div>
            <div class="col-md-4">
                <label>Name : </label>
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                <br />
                <label>Mobile : </label>
                <asp:Label ID="LblMobile" runat="server" Text=""></asp:Label>
                <br />
                <label>Batch : </label>
                <asp:Label ID="lblBatch" runat="server" Text=""></asp:Label>
                <br />
                <label>Department : </label>
                <asp:Label ID="LblDep" runat="server" Text=""></asp:Label>
                <br />
                <label>JoinDate : </label>
                <asp:Label ID="LblDate" runat="server" Text=""></asp:Label>
                <br />
                <label>Active : </label>
                <asp:Label ID="lblActive" runat="server" Text=""></asp:Label>
                <br />

            </div>


        </div>
        <div class="row">
            <div class="col-md-8">
        <div class="align-content-center">  
             <table class="table-hover">
      <asp:GridView ID="GridView1" CssClass="table table-hover"  AutoGenerateColumns="false" runat="server">
      <Columns>
              <asp:BoundField DataField="StuID" HeaderText="ID" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Batch" HeaderText="Batch" HeaderStyle-BackColor="WhiteSmoke" />
              <asp:BoundField DataField="Departments" HeaderText="Department" HeaderStyle-BackColor="WhiteSmoke" />   
          <asp:BoundField DataField="Joindate" HeaderText="Join Date" HeaderStyle-BackColor="WhiteSmoke" />         
      </Columns>
      </asp:GridView> 
                     </table>
            </div>
               </div>
           </div>
               </div>
            
     </form>
</body>
</html>