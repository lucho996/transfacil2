using MySql.Data.MySqlClient;
using MySql.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    string conectar = "Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;";
    MySqlConnection conn = new MySqlConnection("Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;");
    MySqlDataReader dr = null;
    MySqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        cargargrilla();

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void cargargrilla()
    {
        cmd = new MySqlCommand("select rut from registro_usuario where rut=206367419", conn);
        conn.Open();

            dr = cmd.ExecuteReader();

            if (dr.Read() == true)
            {
                txtrut_user.Text = dr["rut"].ToString();
            }

        conn.Close();

    }
    protected void btnsolicitar_Click(object sender, EventArgs e)
    {
        if (origen.Text == "" || destino.Text == "" || cbx_tipocarga.SelectedIndex == 0 || cbx_estado.SelectedIndex == 0 || alto.Text == "" || ancho.Text == "" || largo.Text == "" ||
            peso.Text == "" || txtdescripcion.Value == "" || txtrun_receptor.Text == "" || txtnom_receptor.Text == "" || txtapell_receptor.Text == "" || txt_tele_receptor.Text == "")
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Debe llenar todos los campos porfavor')</script>");
        }
        else
        {

            string sql = "INSERT INTO `solicitud_viaje` (`id`,`rut_user` ,`origen`, `destino`, `tipo_carga`, `alto`, `ancho`,`largo`, `peso`, `descripcion`, `estado`, `rut_receptor`, `nombre_receptor`, `apellido_receptor`, `telefono_receptor`) VALUES (NULL,@rut_user ,@origen, @destino, @tipo_carga, @alto, @ancho,@largo, @peso, @descripcion, @estado, @rut_receptor, @nombre_receptor, @apellido_receptor, @telefono_receptor);";

            MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(conectar);
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@origen", origen.Text);
            cmd.Parameters.AddWithValue("@rut_user", txtrut_user.Text);
            cmd.Parameters.AddWithValue("@destino", destino.Text);
            cmd.Parameters.AddWithValue("@tipo_carga", cbx_tipocarga.SelectedItem);
            cmd.Parameters.AddWithValue("@alto", alto.Text);
            cmd.Parameters.AddWithValue("@ancho", ancho.Text);
            cmd.Parameters.AddWithValue("@largo", largo.Text);
            cmd.Parameters.AddWithValue("@peso", peso.Text);
            cmd.Parameters.AddWithValue("@descripcion", txtdescripcion.Value);
            cmd.Parameters.AddWithValue("@estado", cbx_estado.SelectedItem);
            cmd.Parameters.AddWithValue("@rut_receptor", txtrun_receptor.Text);
            cmd.Parameters.AddWithValue("@nombre_receptor", txtnom_receptor.Text);
            cmd.Parameters.AddWithValue("@apellido_receptor", txtapell_receptor.Text);
            cmd.Parameters.AddWithValue("@telefono_receptor", txt_tele_receptor.Text);
            

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Solicitud_viaje.aspx");

        }
    }

    protected void calcularRuta_Click(object sender, EventArgs e)
    {

    }

    protected void origen_TextChanged(object sender, EventArgs e)
    {

    }
}