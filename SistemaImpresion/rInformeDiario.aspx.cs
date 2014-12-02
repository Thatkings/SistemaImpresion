using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Bll;

namespace SistemaImpresion
{
    public partial class rInformeDiario : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        InformeDiario infromediario = new InformeDiario();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {

        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            FechaTextBox.Text = "";
            PagBNTextBox.Text = "";
            PagColorTextBox.Text = "";
            ImpBNTextBox.Text = "";
            ImpBNEmpTextBox.Text = "";
            ImpColorEmpTextBox.Text = "";
            ImpColorTextBox.Text = "";
        }

        protected void FechaTextBox_TextChanged(object sender, EventArgs e)
        {
            dt = infromediario.ObtenerDatos(Convert.ToDateTime(FechaTextBox));
        }
    }
}