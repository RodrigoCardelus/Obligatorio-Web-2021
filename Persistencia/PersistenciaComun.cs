using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;


namespace Persistencia
{
    public class PersistenciaComun
    {
        public static int Agregar(Comun co)
        {
            /* CREATE PROCEDURE AgregarComun
             * @palabras_claves varchar(50),
             * @codigo_Interno varchar(3),
             * @fecha datetime AS */

            int numero_Interno = 0;

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("AgregarComun", cnn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@palabras_claves", co.Palabras_Claves);
            cmd.Parameters.AddWithValue("@codigo_Interno", co.CodigoInterno);
            cmd.Parameters.AddWithValue("@fecha", co.Fecha);
           

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
                switch ((int)prmRetorno.Value)
                {
                    case -1:
                        throw new Exception("Existe el Comun.");
                    case -2:
                        throw new Exception("Tiene Avisos Clasificados.");
                    case -3:
                        throw new Exception("Error de la base datos.");

                }

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {
                cnn.Close();

            }

            numero_Interno = ((int)prmRetorno.Value);
            

            return numero_Interno;

        }

        public static List<Telefono> ListadoTelefono(int numero_Interno)
        {

            List<Telefono> ListaTelefono = new List<Telefono>();

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoTelefono", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@numero_Interno", numero_Interno);

            try
            {

                // conecto a la bd
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();

                if (lector.HasRows)
                {
                    while (lector.Read())
                    {

                        string NumTel = (string)lector[1];


                        ListaTelefono.Add(new Telefono(NumTel));

                    }
                }
                lector.Close();

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);

            }

            return ListaTelefono;

        }



        public static List<Comun> ListadoComun()
        {

            List<Comun> ListadoComun = new List<Comun>();
            List<Telefono> ListaTelefono = new List<Telefono>();
            string CurrentDate = "06/08/2021";

            /* CREATE PROCEDURE ListadoComun */


            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoComun", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            try
            {
                // conecto a la bd
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();

                if (lector.HasRows)
                {
                    while (lector.Read())
                    {
                        int numero_Interno = (int)lector[0];
                        string codigo_Interno = (string)lector[1];
                        DateTime fecha = DateTime.Parse(CurrentDate);
                        string palabras_Claves = (string)lector[3];
              

                      

                        ListadoComun.Add(new Comun(numero_Interno,codigo_Interno,fecha,ListaTelefono,palabras_Claves));

                    }
                }
                lector.Close();
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {

                cnn.Close();

            }
            return ListadoComun;
        }


        public static List<AvisoClasificado> ListadoAvisosPorCategoria(string codigo_Interno)
        {

            List<AvisoClasificado> ListadoAvisosPorCategoria = new List<AvisoClasificado>();
            List<Telefono> ListaTelefono = new List<Telefono>();

            /* CREATE PROCEDURE ListadoAvisosPorCategoria @codigo_Interno varchar(3) AS */

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoAvisosPorCategoria", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codigo_Interno", codigo_Interno);

            try
            {
                // conecto a la bd
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();

                if (lector.HasRows)
                {
                    while (lector.Read())
                    {
                        int numero_Interno = (int)lector[0];
                        DateTime fecha = (DateTime)lector[2];




                        ListadoAvisosPorCategoria.Add(new AvisoClasificado(numero_Interno, codigo_Interno, fecha, ListaTelefono));

                    }
                }
                lector.Close();
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
            finally
            {

                cnn.Close();

            }
            return ListadoAvisosPorCategoria;
        }



    }

}
