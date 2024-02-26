using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace finaltp4wnorowsky
{
    public partial class formuarioCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) {
            this.DropDownList1.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[1].Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceAcreedores.InsertParameters["idAcreedor"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceAcreedores.Insert();
            this.SqlDataSource1.InsertParameters["monto"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.InsertParameters["fecha"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSource1.Insert(); this.Label4.Text = "Se efectuó la carga";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceAcreedores.DeleteParameters["idAcreedor"].DefaultValue = this.DropDownList1.Text;
            int cant;
            cant = this.SqlDataSourceAcreedores.Delete(); if (cant == 1) this.Label4.Text = "Se borró con exito";
            else this.Label4.Text = "No existe el registro a eliminar";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceAcreedores.UpdateParameters["monto"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceAcreedores.UpdateParameters["idAcreedor"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceAcreedores.UpdateParameters["fecha"].DefaultValue = this.TextBox2.Text;
            int cant;
            cant = this.SqlDataSourceAcreedores.Update();
            if (cant == 1) this.Label4.Text = "Se modifico el registro";
            else this.Label4.Text = "No existe el registro";
        }
    }
}