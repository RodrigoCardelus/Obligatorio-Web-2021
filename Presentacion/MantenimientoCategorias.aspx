<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoCategorias.aspx.cs" Inherits="Presentacion.MantenimientoCategorias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 311px;
        }
        .style2
        {
            width: 204px;
        }
        .style3
        {
            width: 253px;
        }
        .style4
        {
            width: 253px;
            text-align: center;
        }
        .style9
        {
            width: 253px;
            text-align: left;
            height: 32px;
        }
        .style13
        {
            width: 204px;
            text-align: center;
            height: 32px;
        }
        .style14
        {
            height: 32px;
        }
        .style17
        {
            height: 32px;
            width: 166px;
        }
        .style18
        {
            width: 166px;
        }
        .style19
        {
            width: 204px;
            text-align: center;
        }
        .style22
        {
            width: 204px;
            text-align: center;
            height: 31px;
        }
        .style23
        {
            width: 253px;
            height: 31px;
            text-align: center;
        }
        .style24
        {
            height: 31px;
            width: 166px;
        }
        .style25
        {
            height: 31px;
        }
        .style26
        {
            width: 204px;
            text-align: center;
            height: 33px;
        }
        .style27
        {
            width: 253px;
            text-align: left;
            height: 33px;
        }
        .style28
        {
            height: 33px;
            width: 166px;
        }
        .style29
        {
            height: 33px;
        }
        .style31
        {
            width: 253px;
            text-align: center;
            height: 32px;
        }
    </style>
</head>
<body style="height: 328px; width: 801px">
    <form id="form1" runat="server">
    <div style="height: 311px; width: 766px">
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" style="font-size: large" 
                        Text="Mantenimiento Categorias"></asp:Label>
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label2" runat="server" Text="Codigo Interno"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtCodigoInterno" runat="server" Height="20px" 
                        style="text-align: left" Width="175px"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:Button ID="btnBuscar" runat="server" Height="27px" 
                        onclick="btnBuscar_Click" Text="Buscar" Width="76px" />
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtNombre" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style17">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label>
                </td>
                <td class="style27">
                    <asp:TextBox ID="txtPrecio" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style28">
                </td>
                <td class="style29">
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style9">
                </td>
                <td class="style17">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                        Text="Agregar" />
                </td>
                <td class="style31">
                    <asp:Button ID="btnModificar" runat="server" onclick="btnModificar_Click" 
                        Text="Modificar" />
                </td>
                <td class="style17">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Button ID="btnEliminar" runat="server" onclick="btnEliminar_Click" 
                        Text="Eliminar" />
                </td>
                <td class="style23">
                    <asp:Button ID="btnLimpiar" runat="server" Height="29px" 
                        onclick="btnLimpiar_Click" Text="Limpiar" Width="75px" />
                </td>
                <td class="style24">
                </td>
                <td class="style25">
                </td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style18">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style18">
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
