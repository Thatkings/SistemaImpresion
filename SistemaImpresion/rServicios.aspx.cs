using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class rServicios : System.Web.UI.Page
    {

        CostoServicios costo = new CostoServicios();
        RegistroServicios registro = new RegistroServicios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CostoServicioDropDownList.DataSource = costo.Listar("*", "1=1");
                CostoServicioDropDownList.DataTextField = "Costo";
                CostoServicioDropDownList.DataValueField = "CostoId";
                CostoServicioDropDownList.DataBind();
            }
        }
        void Limpiar()
        {
            CostoServicioDropDownList.SelectedIndex = -1;
            NombreTextBox.Text = "";
            DescripcionTextBox.Text = "";
        }
        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            registro.Nombre = NombreTextBox.Text;
            registro.Descripcion = DescripcionTextBox.Text;
            registro.CostoId = CostoServicioDropDownList.SelectedIndex;
            if (registro.RegistroId != 0)
                registro.Modificar();
            else
                registro.Insertar();
        }
    }
}
