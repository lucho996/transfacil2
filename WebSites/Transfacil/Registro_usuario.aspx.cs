using MySql.Data.MySqlClient;
using MySql.Data;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registro_usuario : System.Web.UI.Page
{
    string conectar = "Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "INSERT INTO `registro_usuario` (`rut`, `nombre`, `apellido`, `direccion`, `correo`, `numero_telefono`,`contraseña`, `repet_contraseña`) VALUES (@rut, @nombre, @apellido, @direccion, @correo, @numero_telefono,@contraseña, @repet_contraseña);";

        MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(conectar);
        MySqlCommand cmd = new MySqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@rut", txtrun.Text);
        cmd.Parameters.AddWithValue("@nombre", txtnombre.Text);
        cmd.Parameters.AddWithValue("@apellido", txtapellido.Text);
        cmd.Parameters.AddWithValue("@direccion", txtdireccion.Text);
        cmd.Parameters.AddWithValue("@correo", txtcorreo.Text);
        cmd.Parameters.AddWithValue("@numero_telefono", txtnumtel.Text);
        cmd.Parameters.AddWithValue("@contraseña", txtcontra.Text);
        cmd.Parameters.AddWithValue("@repet_contraseña", txtrepetcontra.Text);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}