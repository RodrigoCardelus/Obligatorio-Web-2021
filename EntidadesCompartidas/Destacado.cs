using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Destacado:AvisoClasificado
    {
        #region Atributos
        string codigo;
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

 
        #endregion

        #region Constructor
        public Destacado(int pNumeroInterno, string pCodigoInterno, DateTime pFecha, List<Telefono> pListaTelefono, string pCodigo)
            : base(pNumeroInterno, pCodigoInterno, pFecha, pListaTelefono)
        {
         
           codigo = pCodigo;
          
           
        }
        #endregion

        #region Operacion
        public override string ToString()
        {
            return "\n\nDestacado: " + base.ToString() + "\nCodigo: " + codigo;
        }



         #endregion
    }
 }