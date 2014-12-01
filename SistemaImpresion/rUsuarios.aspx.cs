using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        Usuario usuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UsuarioId"] != null)
                usuario.UsuarioId = int.Parse(Request.QueryString["UsuarioId"]);
            Buscar();
            EliminarButton.Visible = true;
        }

        void Buscar()
        {
            NombreTextBox.Text = usuario.Nombre;
            NicknameTextBox.Text = usuario.UsuarioNombre;
            ClaveTextBox.Text = usuario.Clave;
            usuario.PreguntaRecuperacion = PreguntaDropDownList.SelectedValue;//chekear luego
            RespuestaTextBox.Text = usuario.RespuestaRecuperacion;
            usuario.Activo = ActivoCheckBox.Checked;
        }

        void Limpiar()
        {
            NombreTextBox.Text = "";
            NicknameTextBox.Text = "";
            ClaveTextBox.Text = "";
            ConfirmarClaveTextBox.Text = "";
            PreguntaDropDownList.SelectedIndex = -1;
            RespuestaTextBox.Text = "";
            ActivoCheckBox.Checked = true;
        }
        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            usuario.Nombre = NombreTextBox.Text;
            usuario.UsuarioNombre = NicknameTextBox.Text;
            usuario.Clave = ClaveTextBox.Text;
            usuario.PreguntaRecuperacion = PreguntaDropDownList.SelectedValue;//chekear luego
            usuario.RespuestaRecuperacion = RespuestaTextBox.Text;
            usuario.Activo = ActivoCheckBox.Checked;
            if (usuario.UsuarioId != 0)
                usuario.Modificar();
            else
                usuario.Insertar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            usuario.UsuarioId = int.Parse(Request.QueryString["UsuarioId"]);
            usuario.Eliminar();
        }
    }
}