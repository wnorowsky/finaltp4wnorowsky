using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finaltp4wnorowsky
{
    public partial class formularioGRID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/visitas.txt", true);
            arch.WriteLine("Fecha:" + this.TextBox1.Text); arch.WriteLine("<br>");
            arch.WriteLine("idACreedor:" + this.TextBox2.Text); arch.WriteLine("<br>");
            arch.WriteLine("Suma del monto:" + this.TextBox2.Text); arch.WriteLine("<br>");
            arch.WriteLine("Apellido - Nombre:" + this.TextBox2.Text); arch.WriteLine("<br>");
            arch.WriteLine("<br>"); arch.WriteLine("<hr>");
            arch.Close();
            this.Label1.Text = "Datos Registrados";
        }
    }
}