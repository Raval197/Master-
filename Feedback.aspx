<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Feedback.aspx.cs" Inherits="DoctorList" %>

<%@ Register Src="~/include/navbarIndex.ascx" TagPrefix="uc1" TagName="navbarIndex" %>
<%@ Register Src="~/include/footerIndex.ascx" TagPrefix="uc1" TagName="footerIndex" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FeedBack - Royal Hospital PVT</title>
    <link href="style/css/bootstrap.min.css" rel="stylesheet"/>
   
	
    <link href="style/css/Profile.css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style1 {
            width: 490px;
        }
        .repeter{
            position:center;
            margin-left:30%;
            margin-right:30%;
        }

        .box{
            border:1px solid black;
            margin-top:5%;

            padding-right:3%;
            padding-top:3%;
            padding-bottom:3%;
        }
    </style>

    </head>

<body>
    <form id="form1" runat="server">
   <uc1:navbarIndex runat="server" ID="navbarIndex" />
    
          <div class="card-body">

            </div>
              <div class="form-group">

                  <table style="width: 100%;">
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
                  <h3>Select Doctor You Want To Comment:</h3>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">

                  <asp:DropDownList ID="DDLDoctor" runat="server" CssClass="form-control" Width="468px" >
                  </asp:DropDownList>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDLDoctor" ErrorMessage="* Please Select Doctor" InitialValue="Select" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                              </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
                  <h3>Enter User Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="* Email is Empty" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                              </h3>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
                  <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Width="467px" AutoCompleteType="Disabled"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
			 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="  * Email is Invalied" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="12pt"></asp:RegularExpressionValidator>
			 
				          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
                  <h3>Enter Your Feedback:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAreacommet" ErrorMessage="* Feedback  is Empty" ForeColor="Red" Font-Size="12pt"></asp:RequiredFieldValidator>
                              </h3>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
                  <asp:TextBox ID="txtAreacommet" runat="server" Rows="3" CssClass="form-control" Height="76px" Width="460px" AutoCompleteType="Disabled"></asp:TextBox>
                 
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">&nbsp;</td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                          <td class="auto-style1">
              
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
             
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                  </table>
                  <br/>
                  <br/>
                 
                  </div>
                  <br/>
              
                
           

       

    <!-- Page Features -->
  
       


        <div class="repeter">
            <asp:Repeater ID="RepeaterComment" runat="server">
                <ItemTemplate>
                     <div class="box">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/icon/User Group Man Womax.png" Width="30px" />
                    
          <div class="media-body">

              <asp:Label ID="lblDoctorName" runat="server" Text='<%# "Dr." + Eval("CDocotrName") %>'></asp:Label>
                         <hr />

              <asp:Label ID="lblUserName" runat="server" Text='<%# "Patient :" +  Eval("CUserName") %>' ></asp:Label>
                         <hr />

              <asp:Label ID="lbltime" runat="server" Text='<%# "At " +  Eval("CTime") %>' ></asp:Label>
                         <hr />

              <asp:Label ID="lblComment" runat="server" Text='<%# "Comment :" +  Eval("CDescription") %>'></asp:Label>
           
          </div>
        </div>
                </ItemTemplate>
            </asp:Repeater>

      
        </div>
   
    <!-- /.row -->


  <!-- /.container -->
        <div>
            <uc1:footerIndex runat="server" ID="footerIndex" />
        </div>
        
         </form>
   
</body>
</html>
