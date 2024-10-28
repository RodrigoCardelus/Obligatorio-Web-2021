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
    public partial class MantenimientoCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LimpioFormulario();
            }

        }

        private void ActivoBotonesBM()
        {
            btnModificar.Enabled = true;
            btnEliminar.Enabled = true;

            btnAgregar.Enabled = false;
            btnBuscar.Enabled = false;

            txtCodigoInterno.Enabled = false;

        }

        private void ActivoBotonesA()
        {
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;

            btnAgregar.Enabled = true;
            btnBuscar.Enabled = false;

            txtCodigoInterno.Enabled = false;

        }

        private void LimpioFormulario()
        {
            btnAgregar.Enabled = false;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;

            btnBuscar.Enabled = true;

            txtCodigoInterno.Enabled = true;


            txtCodigoInterno.Text = " ";
            txtNombre.Text = " ";
            txtPrecio.Text = "";
         

        }
      

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string codigo_Interno = txtCodigoInterno.Text.Trim();
          

            Categoria unaCategoria = (Categoria)LogicaCategoria.BuscarCategoria(codigo_Interno);

            if (unaCategoria == null)
            {
                this.ActivoBotonesA();
                btnModificar.Enabled = false;
                btnEliminar.Enabled = false;
                lblError.Text = " No se encontro el Codigo Interno : " + codigo_Interno.ToString();
            }
            else
            {
                this.ActivoBotonesBM();
                txtCodigoInterno.Text = unaCategoria.Codigo_Interno;
                txtNombre.Text = unaCategoria.Nombre;
                txtPrecio.Text = unaCategoria.Precio.ToString();
                lblError.Text = "La Categoria con el Codigo Interno es : " + unaCategoria.Codigo_Interno;




            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                string codigo_Interno = txtCodigoInterno.Text.Trim();
                string nombre = txtNombre.Text.Trim();
                int precio = Convert.ToInt32(txtPrecio.Text);

              
                Categoria unaCategoria = new Categoria(codigo_Interno,nombre,precio);


                LogicaCategoria.Agregar(unaCategoria);
                lblError.Text = "Alta con exito";
                this.LimpioFormulario();
                
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                string codigo_Interno = txtCodigoInterno.Text.Trim();
                string nombre = txtNombre.Text.Trim();
                int precio = Convert.ToInt32(txtPrecio.Text);
                

               
                Categoria unaCategoria = new Categoria(codigo_Interno,nombre,precio);
                LogicaCategoria.Modificar(unaCategoria);


                lblError.Text = "Se modifico la categoria con su Codigo Interno : " + codigo_Interno;
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                string codigo_Interno = txtCodigoInterno.Text.Trim();
                string nombre = txtNombre.Text;
                int precio = Convert.ToInt32(txtPrecio.Text);
             

                Categoria unaCategoria = new Categoria(codigo_Interno,nombre,precio);

                LogicaCategoria.Eliminar(unaCategoria);
                btnLimpiar_Click(null, null);
                lblError.Text = "Se elimino correctamente la Categoria con su Codigo Interno : " + unaCategoria.Codigo_Interno;


            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }


    }
}