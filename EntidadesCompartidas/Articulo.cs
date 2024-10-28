using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Articulo
    {
        #region Atributos 
        string codigo;
        int precio;
        string descripcion;
        #endregion

        #region Propiedades
        public string Codigo
        {
            get { return codigo; }
            set
            {
                if (value.Length != 6)
                {
                    throw new Exception("El largo del codigo tiene que tener 6 caracteres");

                }
                codigo = value;
            }
        }

        public int Precio
        {
            get { return precio; }
            set
            {
                if (value < 0)
                {

                    throw new Exception("El Precio tiene que ser mayor a 0");

                }
                precio = value;
            }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set
            {
                if (value == "")
                {

                    throw new Exception("La descripcion no puede estar vacia");
                
                }
              descripcion = value;
            }          
        }

        #endregion

        #region Constructor
        public Articulo(string pCodigo, int pPrecio, string pDescripcion)
        {
            Codigo = pCodigo;
            Precio = pPrecio;
            Descripcion = pDescripcion;

        }
        #endregion

        #region Operacion
        public override string ToString()
        {
            return "El Codigo: " + codigo + "El Precio: " + precio + "La Descripcion: " + descripcion;       
        }
        #endregion
    }
}
