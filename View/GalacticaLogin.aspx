<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
        <asp:Label ID="lblUserName" runat="server" Text="Username:  "></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 32px" Width="275px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:  "></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="margin-left: 35px" Width="275px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" ViewStateMode="Inherit" BorderColor="#3333CC" BorderStyle="Outset" BackColor="#FFFFCC" Height="47px" Width="93px" />
    </form>
</body>
</html>
