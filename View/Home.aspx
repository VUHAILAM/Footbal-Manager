<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FootbalManager.View.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
        }

        #scheduleDiv {
            width: 100%;
            height: 360px;
            float: left;
        }

        #pitchDiv {
            width: 49%;
            height: 300px;
            float: left;
        }

        #enemyDiv {
            width: 50%;
            height: 300px;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="scheduleDiv">
            <asp:GridView ID="scheduleGV" runat="server">
            </asp:GridView>
        </div>
        <div id="pitchDiv">
            <asp:GridView ID="pitchGV" runat="server">
            </asp:GridView>
        </div>
        <div id="enemyDiv">
            <asp:GridView ID="enemyGV" runat="server">
            </asp:GridView>
        </div>

    </form>

</body>
</html>
