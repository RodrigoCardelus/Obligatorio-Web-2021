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
    public partial class AgregarArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               this.LimpioFormulario();
            }

        }

        private void ActivoBotonesA()
        {
      
            btnAgregar.Enabled = true;
            btnBuscar.Enabled = false;

            txtCodigo.Enabled = false;

        }

        private void LimpioFormulario()
        {
            btnAgregar.Enabled = false;

            btnBuscar.Enabled = true;

            txtCodigo.Enabled = true;


            txtCodigo.Text = "";
            txtPrecio.Text = "";
            txtDescripcion.Text = "";

           
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigo.Text.Trim();


            Articulo unArticulo = (Articulo)LogicaArticulo.BuscarArticulo(codigo);

            if (unArticulo == null)
            {
                this.ActivoBotonesA();
                lblError.Text = " No se encontro el Codigo : " + codigo.ToString();
            }
            else
            {
                txtCodigo.Text = unArticulo.Codigo;
                txtPrecio.Text = unArticulo.Precio.ToString();
                txtDescripcion.Text = unArticulo.Descripcion;
                lblError.Text = "El Articulo con el Codigo es : " + unArticulo.Codigo;

            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                string codigo = txtCodigo.Text.Trim();
                int precio = Convert.ToInt32(txtPrecio.Text);
                string descripcion = txtDescripcion.Text;

                Articulo unArticulo = new Articulo(codigo,precio,descripcion);


                LogicaArticulo.Agregar(unArticulo);
                lblError.Text = "Alta con exito";
                this.LimpioFormulario();

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.LimpioFormulario();

        }



    }
}