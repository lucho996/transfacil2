using MySql.Data.MySqlClient;
using MySql.Data;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class viajes_disponibles : System.Web.UI.Page
{
    string conectar = "Server=localhost;Database=transfacil;Uid=root;Pwd=;Convert Zero Datetime=True;";
    protected void Page_Load(object sender, EventArgs e)
    {
        cargargrilla();
    }
    public void cargargrilla()
    {
        MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(conectar);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("SELECT s.id, r.rut as 'RUT USUARIO', s.origen AS ORIGEN, s.destino AS DESTINO  FROM solicitud_viaje s,registro_usuario r where r.rut = rut_user ;", conn);

        DataTable tabla = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);

        da.Fill(tabla);


        GridView1.DataSource = tabla;
        GridView1.DataBind();
        conn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dato = this.GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        Response.Redirect("Detalle_parachofer.aspx?parametro="+ dato);
       

    }
}