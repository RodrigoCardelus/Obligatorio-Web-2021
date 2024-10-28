<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoAvisosXArticulo.aspx.cs" Inherits="Presentacion.ListadoAvisosXArticulo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 99%;
            height: 377px;
        }
        .style5
        {
            width: 181px;
        }
        .style6
        {
            width: 133px;
            text-align: center;
        }
        .style7
        {
            width: 503px;
            text-align: left;
        }
        .style9
        {
            width: 503px;
            height: 24px;
            text-align: center;
        }
        .style10
        {
            width: 181px;
            height: 24px;
        }
        .style11
        {
            width: 232px;
        }
        .style12
        {
            width: 232px;
            height: 24px;
        }
        .style13
        {
            width: 133px;
        }
        .style14
        {
            width: 133px;
            height: 24px;
            text-align: center;
        }
        .style15
        {
            width: 133px;
            text-align: center;
            height: 213px;
        }
        .style16
        {
            width: 503px;
            text-align: left;
            height: 213px;
        }
        .style17
        {
            width: 232px;
            height: 213px;
        }
        .style18
        {
            width: 181px;
            height: 213px;
        }
        .style19
        {
            width: 503px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 451px; width: 1161px">
    
        <table class="style1">
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Label ID="Label1" runat="server" style="font-size: large" 
                        Text="ListadoAvisosXArticulo"></asp:Label>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Seleccione:"></asp:Label>
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddlArticulo" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlArticulo_SelectedIndexChanged">
                        <asp:ListItem>Seleccionar</asp:ListItem>
                        <asp:ListItem>codigo</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style16">
                    <asp:GridView ID="GVAvisosXArticulo" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="134px" 
                        onselectedindexchanged="GVAvisosXArticulo_SelectedIndexChanged" 
                        Width="378px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="numero_Interno" HeaderText="Numero Interno" />
                            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td class="style17">
                </td>
                <td class="style18">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                </td>
                <td class="style9">
                    <asp:LinkButton ID="lbVolver" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style10">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
