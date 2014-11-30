using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaImpresion
{
    public partial class rRecuperarClave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RecupearButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CambiarClave.aspx");
        }
    }
}