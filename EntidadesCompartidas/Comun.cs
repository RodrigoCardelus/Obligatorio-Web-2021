using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Comun:AvisoClasificado
    {
        #region Atributos
        string palabras_Claves;
        #endregion


        #region Propiedades
        public string Palabras_Claves
        {
            get { return palabras_Claves; }
            set
            {
                if (value == "")
                {

                    throw new Exception("Las Palabras Claves no puede estar vacia");

                }
             palabras_Claves = value;
            }

        }
        #endregion


        #region Constructor
        public Comun(int pNumeroInterno, string pCodigoInterno, DateTime pFecha, List<Telefono> pListaTelefono, string pPalabrasClaves)
            : base(pNumeroInterno, pCodigoInterno, pFecha, pListaTelefono)
        {

             Palabras_Claves = pPalabrasClaves;
  
        }
        #endregion

        #region 
        public override string ToString()
        {
            return "\n\nComun: " + base.ToString() + "\nPalabras Claves: " + palabras_Claves;

        }

        #endregion

    }
}
