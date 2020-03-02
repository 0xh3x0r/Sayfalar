<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parser.aspx.cs" Inherits="_2.parser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 21px;
            width: 56px;
        }
        .auto-style4 {
            height: 21px;
            width: 132px;
        }
    </style>
</head>
<link href="Genel.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
    <div id="mesajDiv" runat="server">
    

     
    

    </div>

        <div id="sifrePanel" runat="server" visible="false">



            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPass" CssClass="textbox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">

                       <input type="submit" id="btnPass" runat="server" class="myaspbutton" value="Enter"  onServerClick="btnPass_Click" />
                    </td>
                </tr>
            </table>



        </div>


        
    </form>
</body>
</html>
