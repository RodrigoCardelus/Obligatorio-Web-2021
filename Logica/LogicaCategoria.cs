using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaCategoria
    {

        public static Categoria BuscarCategoria(string codigo_Interno)
        {
            return (PersistenciaCategoria.BuscarCategoria(codigo_Interno));

        }


        public static void Agregar(Categoria unaCategoria)
        {
            PersistenciaCategoria.Alta(unaCategoria);

        }

        public static void Modificar(Categoria unaCategoria)
        {
            PersistenciaCategoria.Modificar(unaCategoria);
        }


        public static void Eliminar(Categoria unaCategoria)
        {
            PersistenciaCategoria.BajaCategoria(unaCategoria);
        }


        public static List<Categoria> ListadoCategorias()
        {
            return (PersistenciaCategoria.ListadoCategorias());
        }



    }
}
