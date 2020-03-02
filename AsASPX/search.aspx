<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="_2.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                .holder{
            height:auto;
            width:auto;
            margin-top:40px;
            margin-left:40px;
      
        }
    #ayracdiv{
       padding-left:15px;
       margin-bottom:0px;
       
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 526px;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 526px;
            height: 21px;
        }
        .auto-style8 {
            width: 526px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 58px;
        }
        .auto-style11 {
            width: 58px;
            height: 21px;
        }
        .auto-style12 {
            width: 58px;
            height: 23px;
        }
          .s1 {
            width: 250px;
            height:23px;
        }
        .s2 {
            width: 183px;
            height: 23px;
        }
        .s3 {
            width: 90px;
            height: 23px;
        }
        .s4{
            height: 23px;
        }
        .s5 {
            height:150px;


        }
        .auto-style13 {
            width: 86px;
        }
        .auto-style14 {
            width: 86px;
            height: 21px;
        }
        .auto-style15 {
            width: 86px;
            height: 23px;
        }
    </style>
    <link href="Genel.css" rel="stylesheet" />
</head>
<body>
     <div id="menu">
     <ul>
         <li><a href="Default.aspx">Main Page</a></li>
         <li><a href="search.aspx">Search</a></li>
         <li><a href="add.aspx">Add</a></li>
         <li><a href="topcontent.aspx">Top Content</a></li>
     </ul>
    </div>
    &nbsp&nbsp
    <form id="form1" runat="server">


        <div class="holder">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" Text="Search:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtsearch" runat="server" Width="516px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnsearch" CssClass="myaspbutton" runat="server" Text="Go" Width="91px" OnClick="btnsearch_Click1" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" Text="Search in"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rbOptions" runat="server" RepeatColumns="2">
                        <asp:ListItem>Title </asp:ListItem>
                        <asp:ListItem>Url </asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label2" runat="server" Text="Sort By"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="rbSorting" runat="server" RepeatDirection="Horizontal" Width="178px">
                        <asp:ListItem>Views</asp:ListItem>
                        <asp:ListItem>Date</asp:ListItem>
                        <asp:ListItem>Karma</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style9"></td>
            </tr>
        </table>
      </div>
        <div id="div_output" runat="server"></div>
    </form>
</body>
</html>
