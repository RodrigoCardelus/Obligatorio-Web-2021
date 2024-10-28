using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;

namespace Persistencia
{
    public class PersistenciaCategoria
    {
        public static Categoria BuscarCategoria(string Codigo_Interno)
        {

            /* CREATE PROCEDURE BuscoCategoria
             * @codigo_Interno varchar(3)
             * AS*/

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("BuscoCategoria", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo_Interno", Codigo_Interno);


            try
            {
                //conecto a la base de datos
                cnn.Open();


                SqlDataReader lector = cmd.ExecuteReader();
                /* select *
                 From Categoria
                 where codigo_Interno = @codigo_Interno*/


                if (lector.Read())
                {
                    string codigo_Interno = (string)lector[0];
                    string nombre = (string)lector[1];
                    int precio = (int)lector[2];

                    return new Categoria(codigo_Interno, nombre, precio);

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

            return null;
        }

        public static void Alta(Categoria c)
        {
            /*CREATE PROCEDURE AltaCategoria 
            * @codigo_Interno varchar(3),
            * @nombre varchar(50),
            * @precio int AS */


            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("AltaCategoria", cnn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codigo_Interno", c.Codigo_Interno);
            cmd.Parameters.AddWithValue("@nombre", c.Nombre);
            cmd.Parameters.AddWithValue("@precio", c.Precio);

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
                    throw new Exception("La Categoria  ya existe");
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

        public static void Modificar(Categoria c)
        {
            /*CREATE PROCEDURE ModificarCategoria
             * @codigo_Interno varchar(3),
             * @nombre varchar(50),
             * @precio int AS */

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ModificarCategoria", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo_Interno", c.Codigo_Interno);
            cmd.Parameters.AddWithValue("@nombre", c.Nombre);
            cmd.Parameters.AddWithValue("@precio", c.Precio);
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
                    throw new Exception("La Categoria no existe");
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

        public static void BajaCategoria(Categoria c)
        {

            /*CREATE PROCEDURE BajaCategoria
             * @codigo_Interno varchar(3) AS */


            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("BajaCategoria", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo_Interno", c.Codigo_Interno);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = System.Data.ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);

            try
            {
                //conecto a la base de datos
                cnn.Open();


                //ejecuto comando
                cmd.ExecuteNonQuery();

                //verifico si hay errores
                switch ((int)prmRetorno.Value)
                {
                    case -1:
                        throw new Exception("No existe la Categoria.");
                    case -2:
                        throw new Exception("Tiene Avisos Clasificados.");
                    case -3:
                        throw new Exception("Error de la base datos.");

                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }

        }

        public static List<Categoria> ListadoCategorias()
        {
            List<Categoria> lista = new List<Categoria>();

            /* CREATE PROCEDURE ListadoCategorias */

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoCategorias", cnn);
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
                        string codigo_Interno = (string)lector[0];
                        string nombre = (string)lector[1];
                        int precio = (int)lector[2];

                        lista.Add(new Categoria(codigo_Interno,nombre, precio));

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

            return lista;
        }


    }
}
