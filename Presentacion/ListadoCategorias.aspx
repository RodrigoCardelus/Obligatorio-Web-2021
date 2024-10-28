<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoCategorias.aspx.cs" Inherits="Presentacion.ListadoCategorias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 88%;
            height: 432px;
            margin-bottom: 0px;
        }
        .style2
        {
            width: 103px;
        }
        .style3
        {
            width: 80px;
        }
        .style4
        {
            width: 681px;
            height: 26px;
            text-align: center;
        }
        .style5
        {
            width: 681px;
            text-align: center;
        }
        .style6
        {
            width: 681px;
            text-align: left;
        }
        .style7
        {
            width: 80px;
            height: 26px;
        }
        .style8
        {
            width: 103px;
            height: 26px;
        }
        .style9
        {
            width: 681px;
            text-align: left;
            height: 26px;
        }
        .style10
        {
            height: 26px;
        }
    </style>
</head>
<body style="height: 560px; width: 1138px">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style7">
                </td>
                <td class="style8">
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" style="font-size: large" 
                        Text="Listado Categorias"></asp:Label>
                </td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style7">
                </td>
                <td class="style8">
                </td>
                <td class="style9">
                </td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:GridView ID="GVCategorias" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="163px" 
                        onselectedindexchanged="GVCategorias_SelectedIndexChanged" Width="614px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="codigo_Interno" HeaderText="Codigo_Interno" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="precio" HeaderText="Precio" />
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:GridView ID="GVAvisoClasificado" runat="server" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Height="160px" 
                        onselectedindexchanged="GVAvisoClasificado_SelectedIndexChanged" Width="624px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="numero_Interno" HeaderText="NumeroInterno" />
                            <asp:BoundField DataField="fecha" HeaderText="Fecha" />
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:LinkButton ID="lbVolver" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
