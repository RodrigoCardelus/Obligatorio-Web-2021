<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarArticulo.aspx.cs" Inherits="Presentacion.AgregarArticulo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 98%;
            height: 334px;
        }
        .style2
        {
            width: 213px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 213px;
            text-align: center;
        }
        .style5
        {
            width: 127px;
        }
        .style6
        {
            width: 127px;
            text-align: center;
        }
        .style7
        {
            width: 189px;
        }
        .style8
        {
            text-align: center;
            width: 189px;
        }
        .style9
        {
            width: 127px;
            text-align: center;
            height: 35px;
        }
        .style10
        {
            text-align: center;
            width: 189px;
            height: 35px;
        }
        .style11
        {
            width: 213px;
            text-align: left;
            height: 35px;
        }
        .style12
        {
            text-align: center;
            height: 35px;
        }
        .style14
        {
            text-align: left;
        }
        .style15
        {
            width: 213px;
            text-align: left;
        }
        .style16
        {
            width: 127px;
            text-align: center;
            height: 43px;
        }
        .style17
        {
            text-align: center;
            width: 189px;
            height: 43px;
        }
        .style18
        {
            width: 213px;
            text-align: left;
            height: 43px;
        }
        .style19
        {
            text-align: left;
            height: 43px;
        }
        .style20
        {
            width: 127px;
            text-align: center;
            height: 41px;
        }
        .style21
        {
            text-align: center;
            width: 189px;
            height: 41px;
        }
        .style22
        {
            width: 213px;
            text-align: left;
            height: 41px;
        }
        .style23
        {
            text-align: left;
            height: 41px;
        }
        .style24
        {
            width: 127px;
            height: 36px;
        }
        .style25
        {
            text-align: center;
            width: 189px;
            height: 36px;
        }
        .style26
        {
            width: 213px;
            text-align: center;
            height: 36px;
        }
        .style27
        {
            width: 213px;
            height: 36px;
        }
        .style28
        {
            height: 36px;
        }
    </style>
</head>
<body style="height: 358px; width: 980px">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server" 
                        style="text-align: center; font-size: large" Text="Agregar Articulo"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Codigo"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtCodigo" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style11">
                    <asp:Button ID="btnBuscar" runat="server" onclick="btnBuscar_Click" 
                        Text="Buscar" />
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtPrecio" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    </td>
                <td class="style21">
                    </td>
                <td class="style22">
                    </td>
                <td class="style22">
                    </td>
                <td class="style23">
                    </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                        Text="Agregar" />
                </td>
                <td class="style17">
                    <asp:Button ID="btnLimpiar" runat="server" onclick="btnLimpiar_Click" 
                        Text="Limpiar" />
                </td>
                <td class="style18">
                    </td>
                <td class="style18">
                    </td>
                <td class="style19">
                    </td>
            </tr>
            <tr>
                <td class="style24">
                    </td>
                <td class="style25">
                    </td>
                <td class="style26">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="style27">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style4">
                    <asp:LinkButton ID="lbVolver" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
