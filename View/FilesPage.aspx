<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilesPage.aspx.cs" Inherits="FilesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Galactica Files Portal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <p>This page is going to be pretty simple too. We just need the gridview to show the files, and provide an option to download. No need to add 
                vulnerabilities by adding a view method.
            </p>
            <p>Each row should be dedicated to just one file. Display the file name, A brief description, date, and uploader. For the sake of the assignment, 
                we could just sort by upload date.
            </p>
            <asp:GridView ID="gvFiles" runat="server" OnSelectedIndexChanged="gvFiles_SelectedIndexChanged"></asp:GridView>



        </div>
        <p>The Admin view should just show all files, maybe sort by patient it is tied to, date, and allow for deletion.</p>
        <p>The Doctor view should show the files relevant to them. Maybe have an option to view by patient. Maybe be able to sort by date.</p>
        <p>The Patient view should only show files tied to them. Maybe give the option to sort by date.</p>
        <p>Realistically, these would have options to search, and categories for the files, but this is a hacking class.</p>
    </form>
</body>
</html>
