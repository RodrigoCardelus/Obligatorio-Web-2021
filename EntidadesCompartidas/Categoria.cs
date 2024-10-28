using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Categoria
    {
        #region Atributos
        string codigo_Interno;
        string nombre;
        int precio;
        #endregion

        #region Propiedades
        public string Codigo_Interno
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

        public string Nombre
        {
            get { return nombre; }
            set
            {
                if (value == "")
                {

                    throw new Exception("El Nombre de la Categoria no puede estar Vacio");

                }

                nombre = value;

            }

        }

        public int Precio
        {

            get { return precio; }
            set
            {
                if (value < 0)
                {
                    throw new Exception("El precio debe ser mayor a 0");

                }
             precio = value;

            }
        }
        #endregion

        #region Constructor
        public Categoria(string pCodigoInterno, string pNombre, int pPrecio)
        {
            Codigo_Interno = pCodigoInterno;
            Nombre = pNombre;
            Precio = pPrecio;
        }
        #endregion

        #region Operaciones
        public override string ToString()
        {
            return "Codigo_Interno: " + codigo_Interno + "Nombre: " + nombre + "Precio: " + precio;

        }

        #endregion


    }
}
