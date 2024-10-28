using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaArticulo
    {
        public static Articulo BuscarArticulo(string codigo)
        {
            return (PersistenciaArticulo.BuscarArticulo(codigo));

        }


        public static void Agregar(Articulo unArticulo)
        {
            PersistenciaArticulo.Agregar(unArticulo);

        }

        public static List<Destacado> ListadoAvisosporArticulo(string codigo)
        {
            return (PersistenciaArticulo.ListadoAvisosporArticulo(codigo));
        }

    }
}
