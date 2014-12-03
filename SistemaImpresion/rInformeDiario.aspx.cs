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
            ImpColorTextBox.Text = "";
        }

        protected void FechaTextBox_TextChanged(object sender, EventArgs e)
        {
            dt = infromediario.ObtenerDatos(Convert.ToDateTime(FechaTextBox));
            PagBNTextBox.Text = (5 * (int)dt.Rows[0]["PagadasBn"]).ToString();
            PagColorTextBox.Text = (10 * (int)dt.Rows[0]["PagadasCL"]).ToString();
            DanadasTextBox.Text = ((int)dt.Rows[0]["Danadas"]).ToString();
            ServicioTextBox.Text = ((int)dt.Rows[0]["Servicios"]).ToString();
            CobradoUsuarioTextBox.Text=((5 * (int)dt.Rows[0]["PagadasBn"])+(10 * (int)dt.Rows[0]["PagadasCL"])).ToString();
            TotalTextBox.Text = (((int)dt.Rows[0]["Servicios"]) + int.Parse(CobradoUsuarioTextBox.Text)).ToString();
            ConteoImpTextBox.Text = ((int)dt.Rows[0]["ConteoOmpresora"]).ToString();
        }
    }
}