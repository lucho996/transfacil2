using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
public partial class Detalle_parachofer : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection("Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;");
    MySqlDataReader dr = null;
    MySqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.Params["parametro"];
        cargargrilla();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    public void cargargrilla()
    {
        cmd = new MySqlCommand("select origen, destino, tipo_carga, alto, ancho, largo, peso, descripcion, estado, rut_receptor, nombre_receptor, apellido_receptor, telefono_receptor from solicitud_viaje where id='"+Label1.Text+"'", conn);
        conn.Open();

        dr = cmd.ExecuteReader();

        if (dr.Read() == true)
        {
            origen.Text = dr["origen"].ToString();
            destino.Text = dr["destino"].ToString();
            Label4.Text = dr["tipo_carga"].ToString();
            Label5.Text = dr["alto"].ToString();
            Label6.Text = dr["ancho"].ToString();
            Label7.Text = dr["largo"].ToString();
            Label8.Text = dr["peso"].ToString();
            Label9.Text = dr["descripcion"].ToString();
            Label10.Text = dr["estado"].ToString();
            Label11.Text = dr["rut_receptor"].ToString();
            Label12.Text = dr["nombre_receptor"].ToString();
            Label13.Text = dr["apellido_receptor"].ToString();
            Label14.Text = dr["telefono_receptor"].ToString();
        }

        conn.Close();

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}