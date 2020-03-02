<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="_2.add" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .holder {
            height: auto;
            margin-top: 70px;
            margin-left:60px;

        }
   
        .auto-style1 {
            width: 100%;
        }
   
        .auto-style2 {
            margin-bottom: 0;
        }
        .auto-style3 {
            height: 22px;
        }

        .auto-style4 {
            height: 28px;
        }
  

        .auto-style5 {
            height: 21px;
        }
  
        .ayrik
        {
            margin-left:10px;
        }

    </style>
    <link href="Genel.css" rel="stylesheet" />
</head>
<body onload="temizle(); hatadiv_gizle();">
   

    <script>
        // simple toggling
        function gizlegoster(_elem)
        {
            var cbSifre = document.getElementById("cbPass");
            var sifrealani = _elem;
            var cbprivate = document.getElementById("cbPrivate");
            if (cbSifre.checked == true)
            {

                cbprivate.checked  = true;
                cbprivate.disabled = true; // DONT TRY TO ENABLE THIS THROUGH JS DEBUGGER THEN ADDING URL TO THE SERVER,I  STILL CHECK IT FROM CODEBEHIND
                sifrealani.style.display = ""; 

            }
            else
            {
              
                if (cbprivate.disabled)
                {
                    cbprivate.disabled = false;
                    cbprivate.checked = false;
                }
                sifrealani.style.display = "none";


            }


           return 0;
        }

        function temizle()
        {
            var pass = document.getElementById("cbPass");
            var cprivate = document.getElementById("cbPrivate");
            var fixurl = document.getElementById("cbFixUrl");
            pass.checked = false;
            cprivate.checked = false;
            fixurl.checked = true;
                    return 0;
        }

        function $(x)
        {
            return document.getElementById(x);
        }


        function hatadiv_gizle_vekil()
        {

            hatadiv.innerText = "";

        }
        // post_back sonrasi silmek için.
        function hatadiv_gizle()
        {
          
           myVar = setTimeout(hatadiv_gizle_vekil, 5000);

        }

    </script>

    <form id="form1" runat="server" enableviewstate="False" >


     <div id="menu">
     <ul>
         <li><a href="Default.aspx">Main Page</a></li>
         <li><a href="search.aspx">Search</a></li>
         <li><a href="add.aspx">Add</a></li>
         <li><a href="topcontent.aspx">Top Content</a></li>
     </ul>
    </div>
        &nbsp&nbsp
        <div id ="tableholder" class="holder">
           <table class="auto-style1">
               <tr>
                   <td class="auto-style3">

        <asp:Label ID="Label2" CssClass="label" runat="server" Text="Title:"></asp:Label>
                    </td>
                   <td class="auto-style3">
        <asp:TextBox ID="txtTitle" runat="server" Width="566px" CssClass="textbox"></asp:TextBox>
                    </td>
                   <td class="auto-style3"></td>
               </tr>
               <tr>
                   <td class="auto-style4">
                    <asp:Label ID="Label1" CssClass="label" runat="server" Text="Link:"></asp:Label>

                   </td>
                   <td class="auto-style4">
                    <asp:TextBox ID="txtUrl" runat="server" Width="569px" CssClass="textbox"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Shorten" CssClass="myaspbutton" UseSubmitBehavior="true" ViewStateMode="Enabled" OnClientClick="myVar = setTimeout(hatadiv_gizle_vekil,5000); return 0;"/>
                   </td>
                   <td class="auto-style4"></td>
               </tr>
               <tr>
                   <td></td>
                   <td>
              
                    <asp:CheckBox ID="cbFixUrl" runat="server" CssClass="checkbox" Checked="True" Text="Fix Url" />
                   
                       <asp:CheckBox ID="cbPrivate" runat="server" CssClass="ayrikcheckbox" Text="Private" />
                   
                       <asp:CheckBox ID="cbPass" CssClass="checkbox" runat="server" onclick="gizlegoster(passField)" Text ="Password" />
                   
                    </td>
                   <td></td>
               </tr>
               <tr>
                   <td class="auto-style5">
                       </td>
                   <td class="auto-style5">
                      
                        <div id="passField" style="display:none">
                      
                      <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>
                                  &nbsp;
                       <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                  
                                 </div>
                   
     
                   </td>
                   <td class="auto-style5"></td>
               </tr>

 <tr>
                   <td></td>
                   <td>
                        <div id="msgdiv" class="msgdiv" runat="server" enableviewstate="True"></div>
                       <div id="hatadiv" class="hatadiv" runat="server" style="color:red;" ></div>
                   </td>
                   <td></td>
 </tr>


           </table>
             </div>

    </form>
</body>
</html>
