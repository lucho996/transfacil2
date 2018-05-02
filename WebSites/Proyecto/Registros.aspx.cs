using MySql.Data.MySqlClient;
using MySql.Data;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Registros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conectar = "Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;";
        string sql = "INSERT INTO `cliente` (`RUT`, `NOMBREC`, `APELLIDOC`,`DIRECCION` ,`EDAD`, `CORREO`,`NUMERO_TELE_CLI`,`CONTRASENA`) VALUES (@RUT, @NOMBREC, @APELLIDOC,@DIRECCION, @EDAD, @CORREO, @NUMERO_TELE_CLI,@CONTRASENA);";
        try
        {
            MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(conectar);
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@RUT", txtRut.Text);
            cmd.Parameters.AddWithValue("@NOMBREC", txtNombre.Text);
            cmd.Parameters.AddWithValue("@APELLIDOC", txtApellido.Text);
            cmd.Parameters.AddWithValue("@DIRECCION", txtdireccion.Text);
            cmd.Parameters.AddWithValue("@EDAD", txtedad.Text);
            cmd.Parameters.AddWithValue("@CORREO", txtCorreo.Text);
            cmd.Parameters.AddWithValue("@NUMERO_TELE_CLI", txtTelefono.Text);
            cmd.Parameters.AddWithValue("@CONTRASENA", txtContraseña.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (MySqlException mysqlEx)

        {

            throw mysqlEx;
        }


    }
}