<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarAvisoComun.aspx.cs" Inherits="Presentacion.AgregarAvisoComun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 73%;
            height: 599px;
        }
        .style5
        {
            width: 362px;
            text-align: center;
        }
        .style7
        {
            width: 163px;
            height: 34px;
        }
        .style8
        {
            width: 163px;
            text-align: center;
        }
        .style40
        {
            width: 274px;
            height: 34px;
        }
        .style41
        {
            width: 274px;
            text-align: center;
            height: 29px;
        }
        .style43
        {
            width: 274px;
            text-align: center;
        }
        .style49
        {
            width: 362px;
            text-align: center;
            height: 14px;
        }
        .style51
        {
            width: 274px;
            text-align: center;
            height: 14px;
        }
        .style52
        {
            width: 163px;
            text-align: center;
            height: 14px;
        }
        .style55
        {
            width: 163px;
            text-align: center;
            height: 30px;
        }
        .style56
        {
            width: 274px;
            height: 30px;
        }
        .style57
        {
            text-align: left;
            height: 30px;
            width: 362px;
        }
        .style58
        {
            height: 30px;
            width: 106px;
        }
        .style62
        {
            width: 362px;
            text-align: left;
            height: 29px;
        }
        .style65
        {
            width: 362px;
            text-align: center;
            height: 34px;
        }
        .style66
        {
            width: 163px;
            text-align: center;
            height: 55px;
        }
        .style67
        {
            width: 274px;
            height: 55px;
        }
        .style68
        {
            width: 362px;
            text-align: left;
            height: 55px;
        }
        .style70
        {
            width: 163px;
            text-align: center;
            height: 29px;
        }
        .style71
        {
            text-align: left;
            height: 29px;
            width: 106px;
        }
        .style72
        {
            height: 29px;
            width: 114px;
        }
        .style79
        {
            width: 274px;
            height: 29px;
        }
        .style80
        {
            height: 34px;
            width: 106px;
        }
        .style83
        {
            height: 55px;
            width: 106px;
        }
        .style84
        {
            width: 106px;
        }
        .style85
        {
            height: 14px;
            width: 106px;
        }
        .style86
        {
            height: 34px;
            width: 114px;
        }
        .style89
        {
            height: 55px;
            width: 114px;
        }
        .style90
        {
            width: 114px;
        }
        .style91
        {
            height: 14px;
            width: 114px;
        }
        .style93
        {
            width: 274px;
            height: 24px;
        }
        .style95
        {
            height: 24px;
            width: 106px;
        }
        .style96
        {
            width: 163px;
            text-align: center;
            height: 24px;
        }
        .style97
        {
            width: 362px;
            text-align: left;
            height: 24px;
        }
        .style98
        {
            height: 24px;
            width: 114px;
        }
        .style100
        {
            width: 274px;
            height: 27px;
        }
        .style101
        {
            height: 27px;
            width: 106px;
        }
        .style102
        {
            width: 163px;
            text-align: center;
            height: 27px;
        }
        .style103
        {
            width: 362px;
            text-align: center;
            height: 27px;
        }
        .style104
        {
            height: 27px;
            width: 114px;
        }
        .style107
        {
            width: 274px;
            text-align: center;
            height: 24px;
        }
        .style108
        {
            width: 362px;
            text-align: center;
            height: 24px;
        }
        .style111
        {
            width: 362px;
            text-align: center;
            height: 29px;
        }
        .style114
        {
            height: 29px;
            width: 106px;
        }
    </style>
</head>
<body style="height: 37px; width: 860px">
    <form id="form1" runat="server">
    <div style="height: 604px; width: 1180px">
    
        <table class="style1">
            <tr>
                <td class="style7">
                    </td>
                <td class="style40">
                    </td>
                <td class="style65">
                    <asp:Label ID="Label1" runat="server" Text="Agregar Aviso Comun" 
                        style="font-size: large"></asp:Label>
                </td>
                <td class="style80">
                    </td>
                <td class="style86">
                    </td>
            </tr>
            <tr>
                <td class="style96">
                    <asp:Label ID="Label8" runat="server" Text="NumeroInterno"></asp:Label>
                </td>
                <td class="style93">
                    <asp:Label ID="lblNumeroInterno" runat="server"></asp:Label>
                </td>
                <td class="style108">
                    </td>
                <td class="style95">
                </td>
                <td class="style98">
                </td>
            </tr>
            <tr>
                <td class="style102">
                    <asp:Label ID="Label4" runat="server" Text="CodigoInterno"></asp:Label>
                </td>
                <td class="style100">
                    <asp:TextBox ID="txtCodigoInterno" runat="server" Height="20px" Width="175px"></asp:TextBox>
                </td>
                <td class="style103">
                </td>
                <td class="style101">
                </td>
                <td class="style104">
                </td>
            </tr>
            <tr>
                <td class="style70">
                    <asp:Label ID="Label6" runat="server" Text="Fecha"></asp:Label>
                </td>
                <td class="style41">
                    <asp:Calendar ID="cldFecha" runat="server" Height="25px" Width="265px">
                    </asp:Calendar>
                </td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style71">
                </td>
                <td class="style72">
                </td>
            </tr>
            <tr>
                <td class="style96">
                </td>
                <td class="style107">
                    <asp:Label ID="Label7" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td class="style97">
                    </td>
                <td class="style95">
                </td>
                <td class="style98">
                </td>
            </tr>
            <tr>
                <td class="style66">
                    <asp:Button ID="btnBorrarTel" runat="server" onclick="btnBorrarTel_Click" 
                        Text="Borrar Tel" />
                </td>
                <td class="style67">
                    <asp:ListBox ID="lbTelefono" runat="server" Height="79px" Width="231px">
                    </asp:ListBox>
                </td>
                <td class="style68">
                    &nbsp;</td>
                <td class="style83">
                </td>
                <td class="style89">
                </td>
            </tr>
            <tr>
                <td class="style55">
                    <asp:Button ID="btnAgregarTel" runat="server" onclick="btnAgregarTel_Click" 
                        Text="Agregar Tel" />
                <td class="style56">
                    <asp:TextBox ID="txtTelefono" runat="server" Height="20px" Width="175px"></asp:TextBox>
                    </td>
                <td class="style57">
                </td>
                <td class="style58">
                </td>
            </tr>
            <tr>
                <td class="style70">
                    <asp:Label ID="Label3" runat="server" Text="Palabras Claves"></asp:Label>
                </td>
                <td class="style79">
                    <asp:TextBox ID="txtPalabrasClaves" runat="server" Height="19px" Width="175px"></asp:TextBox>
                    </td>
                <td class="style111">
                    </td>
                <td class="style114">
                    </td>
                <td class="style72">
                    </td>
            </tr>
            <tr>
                <td class="style52">
                    </td>
                <td class="style51">
                    </td>
                <td class="style49">
                    </td>
                <td class="style85">
                    </td>
                <td class="style91">
                    </td>
            </tr>
            <tr>
                <td class="style70">
                    <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                        Text="Agregar" />
                </td>
                <td class="style41">
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" 
                        onclick="btnLimpiar_Click" />
                </td>
                <td class="style111">
                </td>
                <td class="style114">
                    </td>
                <td class="style72">
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style43">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="style84">
                    &nbsp;</td>
                <td class="style90">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style43">
                    &nbsp;</td>
                <td class="style5">
                    <asp:LinkButton ID="lbVolver" runat="server" PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
                </td>
                <td class="style84">
                    &nbsp;</td>
                <td class="style90">
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
    
    </div>
    </form>
</body>
</html>
