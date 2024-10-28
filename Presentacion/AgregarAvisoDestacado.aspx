<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarAvisoDestacado.aspx.cs" Inherits="Presentacion.AgregarAvisoDestacado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 73%;
            height: 602px;
        }
        .style6
        {
            height: 34px;
            width: 296px;
        }
        .style37
        {
            width: 296px;
            text-align: center;
            height: 29px;
        }
        .style48
        {
            width: 175px;
            text-align: center;
            height: 34px;
        }
        .style49
        {
            text-align: center;
            width: 362px;
            height: 34px;
        }
        .style50
        {
            height: 34px;
            width: 116px;
        }
        .style52
        {
            width: 175px;
            text-align: center;
            height: 29px;
        }
        .style53
        {
            text-align: center;
            width: 362px;
            height: 29px;
        }
        .style54
        {
            height: 29px;
            width: 116px;
        }
        .style55
        {
            width: 296px;
            height: 27px;
        }
        .style60
        {
            width: 296px;
            height: 29px;
        }
        .style61
        {
            width: 296px;
            height: 22px;
            text-align: center;
        }
        .style62
        {
            width: 175px;
            text-align: center;
            height: 20px;
        }
        .style63
        {
            width: 296px;
            text-align: left;
            height: 20px;
        }
        .style64
        {
            text-align: center;
            width: 362px;
            height: 20px;
        }
        .style65
        {
            height: 20px;
            width: 116px;
        }
        .style66
        {
            width: 175px;
            text-align: center;
            height: 27px;
        }
        .style67
        {
            text-align: center;
            width: 362px;
            height: 27px;
        }
        .style68
        {
            height: 27px;
            width: 116px;
        }
        .style69
        {
            width: 175px;
            text-align: center;
            height: 23px;
        }
        .style70
        {
            width: 296px;
            height: 23px;
        }
        .style71
        {
            text-align: center;
            width: 362px;
            height: 23px;
        }
        .style72
        {
            height: 23px;
            width: 116px;
        }
        .style73
        {
            width: 175px;
            text-align: center;
            height: 22px;
        }
        .style74
        {
            text-align: center;
            width: 362px;
            height: 22px;
        }
        .style75
        {
            height: 22px;
            width: 116px;
        }
        .style79
        {
            width: 175px;
            text-align: center;
            height: 24px;
        }
        .style80
        {
            width: 296px;
            height: 24px;
        }
        .style81
        {
            text-align: center;
            width: 362px;
            height: 24px;
        }
        .style82
        {
            height: 24px;
            width: 116px;
        }
        .style83
        {
            height: 34px;
            width: 106px;
        }
        .style84
        {
            height: 24px;
            width: 106px;
        }
        .style85
        {
            height: 27px;
            width: 106px;
        }
        .style86
        {
            height: 23px;
            width: 106px;
        }
        .style87
        {
            height: 22px;
            width: 106px;
        }
        .style88
        {
            height: 29px;
            width: 106px;
        }
        .style89
        {
            height: 20px;
            width: 106px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style48">
            </td>
            <td class="style6">
            </td>
            <td class="style49">
                <asp:Label ID="Label1" runat="server" style="font-size: large" 
                    Text="Agregar Aviso Destacado"></asp:Label>
            </td>
            <td class="style83">
            </td>
            <td class="style50">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style79">
                <asp:Label ID="Label2" runat="server" Text="Numero Interno"></asp:Label>
            </td>
            <td class="style80">
                <asp:Label ID="lblNumeroInterno" runat="server"></asp:Label>
            </td>
            <td class="style81">
                </td>
            <td class="style84">
            </td>
            <td class="style82">
            </td>
        </tr>
        <tr>
            <td class="style66">
                <asp:Label ID="Label3" runat="server" Text="Codigo Interno"></asp:Label>
            </td>
            <td class="style55">
                <asp:TextBox ID="txtCodigoInterno" runat="server" Height="20px" Width="175px"></asp:TextBox>
            </td>
            <td class="style67">
            </td>
            <td class="style85">
            </td>
            <td class="style68">
            </td>
        </tr>
        <tr>
            <td class="style69">
                <asp:Label ID="Label4" runat="server" Text="Fecha"></asp:Label>
            </td>
            <td class="style70">
                <asp:Calendar ID="cldFecha" runat="server" Height="186px" Width="266px">
                </asp:Calendar>
            </td>
            <td class="style71">
            </td>
            <td class="style86">
            </td>
            <td class="style72">
            </td>
        </tr>
        <tr>
            <td class="style73">
            </td>
            <td class="style61">
                <asp:Label ID="Label7" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td class="style74">
            </td>
            <td class="style87">
            </td>
            <td class="style75">
            </td>
        </tr>
        <tr>
            <td class="style66">
                <asp:Button ID="btnBorrarTel" runat="server" onclick="btnBorrarTel_Click" 
                    Text="Borrar Tel" />
            </td>
            <td class="style55">
                <asp:ListBox ID="lbTelefono" runat="server" Height="79px" Width="231px">
                </asp:ListBox>
            </td>
            <td class="style67">
            </td>
            <td class="style85">
            </td>
            <td class="style68">
            </td>
        </tr>
        <tr>
            <td class="style52">
                <asp:Button ID="btnAgregarTel" runat="server" Height="28px" 
                    onclick="btnAgregarTel_Click" Text="Agregar Tel" Width="114px" />
            </td>
            <td class="style60">
                <asp:TextBox ID="txtTelefono" runat="server" Height="20px" Width="175px"></asp:TextBox>
            </td>
            <td class="style53">
                &nbsp;</td>
            <td class="style88">
            </td>
            <td class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                <asp:Label ID="Label6" runat="server" Text="Codigo"></asp:Label>
            </td>
            <td class="style60">
                <asp:TextBox ID="txtCodigo" runat="server" Height="20px" Width="175px"></asp:TextBox>
            </td>
            <td class="style53">
            </td>
            <td class="style88">
            </td>
            <td class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style62">
                &nbsp;</td>
            <td class="style63">
                &nbsp;</td>
            <td class="style64">
            </td>
            <td class="style89">
            </td>
            <td class="style65">
            </td>
        </tr>
        <tr>
            <td class="style52">
                <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                    Text="Agregar" />
            </td>
            <td class="style37">
                <asp:Button ID="btnLimpiar" runat="server" onclick="btnLimpiar_Click" 
                    Text="Limpiar" />
            </td>
            <td class="style53">
                &nbsp;</td>
            <td class="style88">
            </td>
            <td class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style53">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="style88">
                &nbsp;</td>
            <td class="style54">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style53">
                <asp:LinkButton ID="lbVolver" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
            <td class="style88">
                &nbsp;</td>
            <td class="style54">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
