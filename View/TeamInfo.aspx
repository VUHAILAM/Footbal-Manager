<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamInfo.aspx.cs" Inherits="FootbalManager.View.TeamInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
