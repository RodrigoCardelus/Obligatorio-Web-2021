using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class AvisoClasificado
    {
        #region Atributos
        int numero_Interno;
        string codigo_Interno;
        DateTime fecha;
        List<Telefono> listaTelefono;
        #endregion


        #region Propiedades
        public int Numero_Interno
        {
            get { return numero_Interno; }
            set { numero_Interno = value; }
        }


        public string CodigoInterno
        {
            get { return codigo_Interno; }
            set
            {
                if (value.Length != 3)
                {
                    throw new Exception("El codigo Interno tiene que tener 3 caracteres de largo");

                }
                codigo_Interno = value;


            }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }


        public List<Telefono> ListaTelefono
        {
            get {return listaTelefono; }
            set { listaTelefono = value; }

        }

        #endregion


        #region Constructor
        public AvisoClasificado(int pNumeroInterno, string pCodigoIntenro, DateTime pFecha, List<Telefono> pListaTelefono)
        {
            Numero_Interno = pNumeroInterno;
            codigo_Interno = pCodigoIntenro;
            Fecha = pFecha;
            ListaTelefono = pListaTelefono;
        }
        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "\n\nNumero Interno: " + "\n El Codigo Interno es: " + codigo_Interno + "\n La Fecha : " + fecha + "\nLa Lista de Telefono : " + listaTelefono;
           
        } 
        #endregion

    }
}
