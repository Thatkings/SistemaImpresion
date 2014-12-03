using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class rRecuperarClave : System.Web.UI.Page
    {
        Usuario usuario = new Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["UsuarioId"]!=null)
            {
                usuario.UsuarioId = int.Parse(Request.QueryString["UsuarioId"]);
                usuario.Buscar();
                PreguntaDropDownList.SelectedValue = usuario.PreguntaRecuperacion;
            }
        }

        protected void RecupearButton_Click(object sender, EventArgs e)
        {
            if(usuario.ConsultarPregunta(NicknameTextBox.Text,PreguntaDropDownList.SelectedValue,RespuestaTextBox.Text))
               Response.Redirect("CambiarClave.aspx");
        }

        protected void CancelarButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}