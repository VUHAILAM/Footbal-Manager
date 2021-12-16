<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberDetail.aspx.cs" Inherits="FootbalManager.View.MemberDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        td {
            padding: 5px 5px 5px 5px;
        }

        #Image1 {
            height: 200px;
            width: 200px;
            object-fit: contain;
        }
    </style>
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#Image1').attr('src', e.target.result).width(150).height(200);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td rowspan="6">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                        <br>
                        <input id="oFile" type="file" runat="server" name="oFile" onchange="readURL(this);">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                </tr>

            </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </form>
</body>
</html>
