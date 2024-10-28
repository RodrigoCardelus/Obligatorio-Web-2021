using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Telefono
    {
        #region Atributos
        int numero_Interno;
        string numTel;
        #endregion


        #region Propiedades
        public string NumTel
        {
            get { return numTel; }
            set
            {
                long numtel = 0;

                if (value.Trim().Length > 12)
                    throw new Exception("El numero no puede ser mayor a 12 digitos");

                if (value.Trim() == null)
                    throw new Exception("El telefono no puede estar vacio");

                try
                {
                    numtel = Convert.ToInt64(value.Trim());
                }
                catch
                {
                    throw new Exception("El telefono solo puede tener numeros");
                }

                numTel = value;
            }
        }

        public int NumeroInterno
        {
            get { return numero_Interno; }
            set { numero_Interno = value; }
        }
        
        #endregion

        #region Constructor
        public Telefono(string pNumTel)
        {
            NumTel = pNumTel;

        }
        #endregion

        #region Operacion
        public override string ToString()
        {
            return  "El Telefono: " + numTel;
        
        }
        #endregion

    }
}
