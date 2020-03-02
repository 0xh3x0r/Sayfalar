<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="topcontent.aspx.cs" Inherits="_2.topusers"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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

    <div id="div_bosluk" class="s5">

    </div>
    <form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>

        <script>
                    function oyla(x,y)
                    {
                        PageMethods.Oyla(x, y);
                        
                        return 0;
                    }
</script>
    <div id="div_output" runat="server">
    </div>
    </form>
</body>
</html>
