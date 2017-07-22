<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cohen_assignment2p1.aspx.cs" Inherits="AS02.Cohen_assignment2p1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1"
          NavigateUrl="~/Cohen_assignment2p2.aspx" runat="server">Part 2</asp:HyperLink>
&nbsp; -&nbsp;
        <asp:HyperLink ID="HyperLink2"
          NavigateUrl="~/Cohen_assignment2p3.aspx" runat="server">Part 3</asp:HyperLink>
        <br />
        <br />
        Part 1: Customer Table</div>
        <br />
        <asp:SqlDataSource ID="customer" 
            SelectCommand="select cust_name, customer_id from customer"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:customer %>" >
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="customer2" 
            SelectCommand="select * from customer where customer_id=@customer_id"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:customer %>" >
         <SelectParameters>
            <asp:ControlParameter
                Name="customer_id"
                ControlID="cust_drop"
                PropertyName="SelectedValue"
                />
         </SelectParameters>
       </asp:SqlDataSource>

        <asp:Label ID="lblDDL" runat="server" Text="What would you like to view?"></asp:Label>
        <br />
        <asp:DropDownList ID="cust_drop" 
            DataSourceID="customer"
            DataTextField="cust_name"
            DataValueField="customer_id"
            runat="server"></asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Select" />
        <br />
        <asp:DetailsView ID="DetailsView1" DataSourceID="customer2" runat="server" Height="50px" Width="125px"></asp:DetailsView>
        

    </form>
</body>
</html>
