using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

namespace Presentacion
{
    public partial class ListadoAvisos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime Fecha = DateTime.Today;
                Session["Lista"] = Logica.LogicaComun.ListadoComun();
                lstAvisosClasificados.DataSource = Session["Lista"];
                lstAvisosClasificados.DataBind();

            }

        }

        protected void ddlSeleccion_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<Comun> listaComun = LogicaComun.ListadoComun();
            List<Destacado> listaDestacado = LogicaDestacado.ListadoDestacado();

            lstAvisosClasificados.Items.Clear();

            int indice = ddlSeleccion.SelectedIndex;

            //Esta línea hace que no se pueda selecciónar la opción "Seleccionar" que está en el DropDownList
            ddlSeleccion.Items[0].Enabled = false;

            foreach (Comun c in listaComun)
            {
                if (indice == 1)
                    lstAvisosClasificados.Items.Add(c.ToString());
                else if (indice == 2 && c is Comun)
                    lstAvisosClasificados.Items.Add(c.ToString());

            }

            foreach (Destacado d in listaDestacado)
            {
                if (indice == 1)
                    lstAvisosClasificados.Items.Add(d.ToString());
                else if (indice == 3 && d is Destacado)
                    lstAvisosClasificados.Items.Add(d.ToString());
            }

        }

       

       
      
    }
}