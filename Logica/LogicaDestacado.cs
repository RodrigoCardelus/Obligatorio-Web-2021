using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaDestacado
    {
        public static int Agregar(Destacado unDestacado)
        {
            return ((int)PersistenciaDestacado.Agregar(unDestacado));

        }


        public static List<Telefono> ListadoTelefono(int numero_Interno)
        {

            return (PersistenciaComun.ListadoTelefono(numero_Interno));

        }


        public static List<Destacado> ListadoDestacado()
        {

           return (PersistenciaDestacado.ListadoDestacado());

       
        }
        





    }
}
