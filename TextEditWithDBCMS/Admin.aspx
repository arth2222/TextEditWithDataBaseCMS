<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TextEditWithDBCMS.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sett inn tekst til databasen</h1>
            <asp:TextBox ID="TextBoxToDB" runat="server" TextMode="MultiLine" Height="194px" Width="503px"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
        </div>
    </form>
    <p>
        Skulle denne siden ha vært passordbeskyttet?</p>
</body>
</html>
