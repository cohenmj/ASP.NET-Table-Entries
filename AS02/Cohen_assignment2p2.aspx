<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cohen_assignment2p2.aspx.cs" Inherits="AS02.Cohen_assignment2p2" %>

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
          NavigateUrl="~/Cohen_assignment2p3.aspx" runat="server">Part 3</asp:HyperLink>
    
    </div>
        <p>
            Part 2: Adding New Customer</p>
        <br />
        <asp:Label ID="lblID" runat="server" Text="ID:"></asp:Label>
        <br />
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtID"
            Text="*"
            ID="RequiredFieldValidator2" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN A VALID ID!!!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtName"
            Text="*"
            ID="RequiredFieldValidator1" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN THE CORRECT NAME!!!"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="lblCCNum" runat="server" Text="Credit Card Number:"></asp:Label>
        <br />
        <asp:TextBox ID="txtCCNum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtCCNum"
            Text="*"
            ID="RequiredFieldValidator3" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN A VALID CREDIT CARD NUMBER!!!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
        <br />
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtAddress"
            Text="*"
            ID="RequiredFieldValidator4" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN A VALID CREDIT CARD NUMBER!!!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtEmail"
            Text="*"
            ID="RequiredFieldValidator5" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN A VALID EMAIL!!!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>
        <br />
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="txtPass"
            Text="*"
            ID="RequiredFieldValidator6" 
            runat="server" 
            ForeColor="Red"
            ErrorMessage="PUT IN A VALID PASSWORD!!!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="btnSave_Click" Text="Add" />
        <br />
        
        <asp:SqlDataSource ID="customer"
             runat="server"
             SelectCommand="select * from customer"
             InsertCommand="INSERT INTO CUSTOMER (customer_id,cust_name,cust_creditCardNum,cust_address,cust_email,cust_pass) VALUES(@customer_id,@cust_name,@cust_creditCardNum,@cust_address,@cust_email,@cust_pass)"
             ConnectionString="<%$ ConnectionStrings:customer %>" >
            <InsertParameters>
                <asp:ControlParameter ControlID="txtID" Name="customer_id" DbType="Int32" />
                <asp:ControlParameter ControlID="txtName" Name="cust_name" DbType="String" />
                <asp:ControlParameter ControlID="txtCCNum" Name="cust_creditCardNum" DbType="Int64" />
                <asp:ControlParameter ControlID="txtAddress" Name="cust_address" DbType="String" />
                <asp:ControlParameter ControlID="txtEmail" Name="cust_email" DbType="String" />
                <asp:ControlParameter ControlID="txtPass" Name="cust_pass" DbType="String" />
            </InsertParameters> 
            </asp:SqlDataSource>
    </form>
</body>
</html>
