<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductConfirmCookies.aspx.cs" Inherits="Cookies5834255.ProductConfirmCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Confirm Product</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Confirm Product" Font-Bold="true" /><br /><br />
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Category"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                            <asp:ListItem>FootWear - Women's</asp:ListItem>
                            <asp:ListItem>FootWear - Men's</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Supplier"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlSupplier" runat="server">
                            <asp:ListItem>Nike</asp:ListItem>
                            <asp:ListItem>Adidas</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Product"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblProduct" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Description"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDescription" runat="server" ReadOnly="true" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Image"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblImage" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Price"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblPrice" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Number in Stock"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblNumberInStock" runat="server" />
                        <asp:Label ID="lblValueInStock" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Number on Order"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblNumberOnOrder" runat="server"/>
                        <asp:Label ID="lblValueOnOrder" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Reorder Level"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblReorderLevel" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" Text="Save" ID="btnSave" />
            <asp:Button runat="server" Text="Back" ID="btnBack" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
