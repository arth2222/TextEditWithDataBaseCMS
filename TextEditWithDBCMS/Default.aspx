<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TextEditWithDBCMS.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Teksten under blir hentet fra en database</h1>
            <asp:Literal ID="LiteralTextFromDatabase" runat="server"></asp:Literal>
            <br />
            Hva om vi har flere sider med tekst, og flere rader i databasen. Hvordan kan vi hente ut rett tekst?
        </div>
    </form>
</body>
</html>
