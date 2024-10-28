using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;


namespace Persistencia
{
    public class PersistenciaDestacado
    {
        public static int Agregar(Destacado d)
        {
         
            /*CREATE PROCEDURE AgregarDestacado
             * @codigo varchar(6),
             * @codigo_Interno varchar(3),
             * @fecha datetime AS */


            int numero_Interno = 0;

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("AgregarDestacado", cnn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("codigo", d.Codigo);
            cmd.Parameters.AddWithValue("@codigo_Interno", d.CodigoInterno);
            cmd.Parameters.AddWithValue("@fecha", d.Fecha);
          
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
                    throw new Exception("Existe el Aviso Destacado");
                else if (retorno == -2)
                    throw new Exception("Existe el Aviso Clasificado.");
                else if (retorno == -3)
                    throw new Exception("No Existe el Articulo.");
                else if (retorno == -4) 
                    throw new Exception("Error en la Base de Datos.");
 

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


        public static List<Destacado> ListadoDestacado()
        {

            List<Destacado> ListadoDestacado = new List<Destacado>();
            List<Telefono> ListaTelefono = new List<Telefono>();
            string CurrentDate = "06/08/2021";


            /*CREATE PROCEDURE ListadoDestacado*/

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoDestacado", cnn);
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
                        ListaTelefono = ListadoTelefono(numero_Interno);
                        string codigo = (string)lector[3];
                   

               
                        ListadoDestacado.Add(new Destacado(numero_Interno,codigo_Interno,fecha,ListaTelefono,codigo));

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
            return ListadoDestacado;
        }


    }
}
