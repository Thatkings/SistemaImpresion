using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class CambiarClave : System.Web.UI.Page
    {

        Usuario usuario = new Usuario();
        int usuarioId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UsuarioId"] != null)
            {
                usuarioId = int.Parse(Request.QueryString["UsuarioId"]);
                usuario.UsuarioId = usuarioId;
                usuario.Buscar();
            }
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (usuario.Clave == ClaveAnteriorLabel.Text)
                if(ClaveNuevaTextBox.Text==ConfirmarClaveTextBox.Text)
                usuario.RegisrarNuevaContrasena(ClaveNuevaTextBox.Text, usuarioId);
        }

        protected void CancelarButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}