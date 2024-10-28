using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaTelefono
    {
        public static void Agregar(Telefono unTelefono)
        {
            PersistenciaTelefono.Agregar(unTelefono);

        }




    }
}
