using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class rVentas : System.Web.UI.Page
    {

        Venta venta = new Venta();
        RegistroServicios registrosservicios = new RegistroServicios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ServiciosDropDownList.DataSource = registrosservicios.Listar("Nombre,RegistroId", "1=1");
                ServiciosDropDownList.DataTextField = "Nombre";
                ServiciosDropDownList.DataValueField = "RegistroId";
                ServiciosDropDownList.DataBind();
            }
            if (Request.QueryString["VentaId"] != null)
            {
                venta.VentaId = int.Parse(Request.QueryString["VentaId"]);
                EliminarButton.Visible = true;
            }
        }

        void Limpiar()
        {
            ServiciosDropDownList.SelectedIndex = -1;
            ColorTextBox.Text = "";
            BNTextBox.Text = "";
            CantidadTextBox.Text = "";
        }

        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            venta.Servicio = ServiciosDropDownList.SelectedIndex;
            venta.Color = int.Parse(ColorTextBox.Text);
            venta.Bn = int.Parse(BNTextBox.Text);
            venta.Cantidad = int.Parse(CantidadTextBox.Text);
            if (venta.VentaId != 0)
                venta.Modificar();
            else
                venta.Insertar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["VentaId"] != null)
            {
                venta.VentaId = int.Parse(Request.QueryString["VentaId"]);
                venta.Eliminar();
            }
        }

        protected void GuardarButton_Click1(object sender, EventArgs e)
        {

        }
    }
}