using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;

namespace Persistencia
{
    public class PersistenciaArticulo
    {
        public static Articulo BuscarArticulo(string codigo)
        {
           /* CREATE PROCEDURE BuscoArticulo
            * @codigo varchar(6)
            * AS */

            
            Articulo _unArticulo = null;
            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("BuscoArticulo", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", codigo);


            try
            {
                //conecto a la base de datos
                cnn.Open();


                SqlDataReader lector = cmd.ExecuteReader();
                /*Select *
                From Articulo
                Where codigo = @codigo*/


                if (lector.Read())
                {

                    int precio = (int)lector[1];
                    string descripcion = (string)lector[2];


                    _unArticulo = new Articulo(codigo, precio, descripcion);

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

            return _unArticulo;
        }

        public static void Agregar(Articulo a)
        {
           /* CREATE PROCEDURE AgregarArticulo
            * @codigo varchar(6),
            * @precio int,
            * @descripcion varchar(50)
            * AS*/


            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("AgregarArticulo", cnn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codigo", a.Codigo);
            cmd.Parameters.AddWithValue("@precio", a.Precio);
            cmd.Parameters.AddWithValue("@descripcion", a.Descripcion);

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
                    throw new Exception("El Articulo ya existe");
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





        public static List<Destacado> ListadoAvisosporArticulo(string codigo)
        {

            List<Destacado> ListaAvisosDestacado = new List<Destacado>();
            List<Telefono> ListaTelefono = new List<Telefono>();


           /*CREATE PROCEDURE ListadoAvisosporArticulo 
            * @codigo varchar(6) AS*/ 
            

            SqlConnection cnn = new SqlConnection(Conexion.STR);
            SqlCommand cmd = new SqlCommand("ListadoAvisosporArticulo", cnn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codigo", codigo);

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
                        DateTime fecha = (DateTime)lector[2];
                        ListaTelefono = ListadoTelefono(numero_Interno);
                        

                      
                        ListaAvisosDestacado.Add(new Destacado(numero_Interno,codigo_Interno,fecha,ListaTelefono,codigo));

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
            return ListaAvisosDestacado;
        }


    }
}
