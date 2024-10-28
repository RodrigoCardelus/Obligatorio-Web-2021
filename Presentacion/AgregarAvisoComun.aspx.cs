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
    public partial class AgregarAvisoComun : System.Web.UI.Page
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
        
            

        }

        private void LimpioFormulario()
        {
            btnAgregar.Enabled = true;


         
            txtCodigoInterno.Text = "";
            txtPalabrasClaves.Text = "";
            

            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                List<Telefono> listaTelefono = new List<Telefono>();

                int numero_Interno = 0;
         
                string codigo_Interno = txtCodigoInterno.Text.Trim();
                DateTime fecha = Convert.ToDateTime(cldFecha.SelectedDate);
                string palabras_Claves = txtPalabrasClaves.Text.Trim();

                for (int i = 0; i < lbTelefono.Items.Count;i++ )
                {
                    Telefono t = new Telefono(lbTelefono.Items[i].ToString());
                    listaTelefono.Add(t);
                }

     
                Comun unComun = new Comun(numero_Interno,codigo_Interno,fecha,listaTelefono, palabras_Claves);


                numero_Interno = ((int)LogicaComun.Agregar(unComun));

                foreach (Telefono t in unComun.ListaTelefono)
                {
                    t.NumeroInterno = numero_Interno;
                    LogicaTelefono.Agregar(t);

                }    

                lblNumeroInterno.Text = numero_Interno.ToString();
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

        protected void btnAgregarTel_Click(object sender, EventArgs e)
        {
            //verifico q se haya ingresado algo en la caja de texto de telefono
            if (txtTelefono.Text.Trim().Length > 0)
            {
                lbTelefono.Items.Add(txtTelefono.Text.Trim());
                txtTelefono.Text = "";
                lblError.Text = "Se agrego Correctamente el Telefono a la Lista";
            }
            else
                lblError.Text = "No Hay nada ingresado - No se agrega Telefono a la lista";


        }

        protected void btnBorrarTel_Click(object sender, EventArgs e)
        {
            //determino si hay una linea de la lista seleccionada
            if (lbTelefono.SelectedIndex >= 0)
            {
                lbTelefono.Items.RemoveAt(lbTelefono.SelectedIndex);
                lblError.Text = "Eliminacion del Telefono de la Lista con Exito";
            }
            else
                lblError.Text = "Debe Seleccionar un telefono de la lista para eliminar";


        }

       

     

       

      
   

    }
}