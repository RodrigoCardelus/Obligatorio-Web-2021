using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;



namespace Persistencia
{
    public class PersistenciaTelefono
    {
        public static void Agregar(Telefono t)
        {
            /* CREATE PROCEDURE AgregarTelefono
             * @numero_Interno int,
             * @telefono varchar(12) AS */

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("AgregarTelefono", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@numero_Interno", t.NumeroInterno);
            cmd.Parameters.AddWithValue("@telefono", t.NumTel);

            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            try
            {
                // conecto a la bd
                cnn.Open();

                // ejecuto comando
                cmd.ExecuteNonQuery();

                //verifico si hay errores
                int retorno = Convert.ToInt32(prmRetorno.Value);
                if (retorno == -1)
                    throw new Exception("El telefono ya existe");
                else if (retorno == -2)
                    throw new Exception("Error en la base de datos");

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                cnn.Close();

            }

        }


    }
}
