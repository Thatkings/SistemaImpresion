using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaImpresion
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EntrarButton_Click(object sender, EventArgs e)
        {
            if (UserTextBox.Text == "Admin" && PassTextBox.Text == "123456")
            {
                Response.Redirect("Default.aspx");
                Limpiar();
            }
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
        public void Limpiar()
        {       
            UserTextBox.Text = "";
            PassTextBox.Text = "";
        }
    }
}