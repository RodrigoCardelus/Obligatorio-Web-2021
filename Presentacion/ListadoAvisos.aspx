<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoAvisos.aspx.cs" Inherits="Presentacion.ListadoAvisos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 479px; width: 976px" class="style1">
    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="font-size: x-large" 
            Text="Listado Avisos"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:DropDownList ID="ddlSeleccion" runat="server" Height="16px" 
            onselectedindexchanged="ddlSeleccion_SelectedIndexChanged" Width="139px" 
            AutoPostBack="True">
            <asp:ListItem>Seleccionar</asp:ListItem>
            <asp:ListItem>Todos</asp:ListItem>
            <asp:ListItem>Comun</asp:ListItem>
            <asp:ListItem>Destacado</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:ListBox ID="lstAvisosClasificados" runat="server" 
            AutoPostBack="True" Height="165px" Width="516px"></asp:ListBox>
        <br />
        <br />
        <br />
        <asp:LinkButton ID="lbVolver" runat="server" 
            PostBackUrl="~/Default.aspx">Volver</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
