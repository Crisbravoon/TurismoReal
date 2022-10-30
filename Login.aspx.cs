using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;


namespace Main
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        OracleConnection conexion = new OracleConnection("DATA SOURCE = orcl ; PASSWORD = 1234 ; USER ID = USUARIO");

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            conexion.Open();
            OracleCommand comando = new OracleCommand("SELECT * FROM LOGIN_USUARIO WHERE CORREO_LOGIN = :correo_login AND PASS_LOGIN = :pass_login", conexion);

            comando.Parameters.AddWithValue(":correo_login", txtCorreo.Text);
            comando.Parameters.AddWithValue(":pass_login", txtPass.Text);

            OracleDataReader lector = comando.ExecuteReader();

            if (lector.Read())
            {
                Server.Transfer("Home.aspx");
                conexion.Close();
            }
            else
            {
                lblError.Text = "Usuario inválido";
            }
        }
    }
}