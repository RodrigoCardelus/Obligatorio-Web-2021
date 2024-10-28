<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentacion.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 103%;
            height: 406px;
        }
        .style2
        {
            text-align: center;
            height: 32px;
            width: 840px;
        }
        .style9
        {
            height: 26px;
        }
        .style10
        {
            height: 33px;
            text-align: center;
            width: 479px;
        }
        .style12
        {
            height: 26px;
            width: 479px;
        }
        .style15
        {
            width: 238px;
            height: 33px;
            text-align: center;
        }
        .style16
        {
            height: 33px;
        }
        .style21
        {
            width: 238px;
            height: 26px;
            text-align: center;
        }
        .style25
        {
            width: 238px;
            height: 10px;
        }
        .style28
        {
            height: 26px;
            text-align: center;
        }
        .style31
        {
            text-align: center;
            width: 479px;
            height: 21px;
        }
        .style32
        {
            width: 238px;
            height: 21px;
            text-align: center;
        }
        .style33
        {
            height: 21px;
        }
        .style36
        {
            width: 238px;
            height: 10px;
            text-align: center;
        }
        .style41
        {
            height: 10px;
            width: 479px;
        }
        .style42
        {
            height: 10px;
        }
        .style14
        {
            font-size: x-large;
        }
        .style43
        {
            text-align: center;
            width: 479px;
            height: 26px;
        }
    </style>
</head>
<body style="height: 455px; width: 854px">
    <form id="form1" runat="server">
    <div style="height: 42px; width: 815px">
    
        <div class="style2">
            <span class="style14">Obligatorio Web 2021</span><br />
            <br />
        </div>
        <table class="style1">
            <tr>
                <td class="style25">
                    </td>
                <td class="style41">
                    </td>
                <td class="style42">
                    </td>
                <td class="style42">
                    </td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style10">
                    <asp:Image ID="Image1" runat="server" Height="165px" style="text-align: left" 
                        Width="335px" ImageUrl="~/Imagen/LogoPeriodico.jpg" />
                    <br />
                </td>
                <td class="style16">
                </td>
                <td class="style16">
                </td>
            </tr>
            <tr>
                <td class="style36">
                </td>
                <td class="style41">
                </td>
                <td class="style42">
                </td>
                <td class="style42">
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbMantenimientoCategorias" runat="server" 
                        PostBackUrl="~/MantenimientoCategorias.aspx">MantenimientoCategorias</asp:LinkButton>
                </td>
                <td class="style12">
                    </td>
                <td class="style28">
                    &nbsp;&nbsp;</td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbAgregarArticulo" runat="server" 
                        PostBackUrl="~/AgregarArticulo.aspx">AgregarArticulo</asp:LinkButton>
                </td>
                <td class="style43">
                    </td>
                <td class="style9">
                    </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbAgregarAvisoComun" runat="server" 
                        PostBackUrl="~/AgregarAvisoComun.aspx">AgregarAvisoComun</asp:LinkButton>
                </td>
                <td class="style43">
                    </td>
                <td class="style28">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbAgregarAvisoDestacado" runat="server" 
                        PostBackUrl="~/AgregarAvisoDestacado.aspx">AgregarAvisoDestacado</asp:LinkButton>
                </td>
                <td class="style43">
                    </td>
                <td class="style28">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbListadoCategorias" runat="server" 
                        PostBackUrl="~/ListadoCategorias.aspx">ListadoCategorias</asp:LinkButton>
                </td>
                <td class="style43">
                    </td>
                <td class="style28">
                    </td>
                <td class="style28">
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:LinkButton ID="lbAvisosXArticulo" runat="server" 
                        PostBackUrl="~/ListadoAvisosXArticulo.aspx">ListadoAvisosXArticulo</asp:LinkButton>
                </td>
                <td class="style43">
                    </td>
                <td class="style9">
                    </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style32">
                    <asp:LinkButton ID="lbListadoAvisos" runat="server" 
                        PostBackUrl="~/ListadoAvisos.aspx">ListadoAvisos</asp:LinkButton>
                    </td>
                <td class="style31">
                    &nbsp;</td>
                <td class="style33">
                    </td>
                <td class="style33">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
