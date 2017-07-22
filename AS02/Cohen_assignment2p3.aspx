<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cohen_assignment2p3.aspx.cs" Inherits="AS02.Cohen_assignment2p3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1"
          NavigateUrl="~/Cohen_assignment2p1.aspx" runat="server">Part 1</asp:HyperLink>
&nbsp; -&nbsp;
        <asp:HyperLink ID="HyperLink2"
          NavigateUrl="~/Cohen_assignment2p2.aspx" runat="server">Part 2</asp:HyperLink>
        <br />
        <br />
        Part 3: Loading the Customer Table into GridView<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Load Database" OnClick="btnLoad_Click" />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" 
            runat="server" PageSize="2"></asp:GridView>

        <asp:SqlDataSource ID="customer" 
            SelectCommand="select * from customer"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:customer %>" />
    </form>
</body>
</html>
