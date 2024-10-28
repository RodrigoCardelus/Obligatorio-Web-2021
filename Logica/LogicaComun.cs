using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaComun
    {
        public static int Agregar(Comun unComun)
        {
            return ((int)PersistenciaComun.Agregar(unComun));

        }


        public static List<Telefono> ListadoTelefono(int numero_Interno)
        {
            return (PersistenciaComun.ListadoTelefono(numero_Interno));

        }


        public static List<Comun> ListadoComun()
        {
            return (PersistenciaComun.ListadoComun());

        }

        public static List<AvisoClasificado> ListadoAvisosPorCategoria(string codigo_Interno)
        {

            return (PersistenciaComun.ListadoAvisosPorCategoria(codigo_Interno));

        }


    }
}
