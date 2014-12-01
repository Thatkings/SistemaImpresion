using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bll;

namespace SistemaImpresion
{
    public partial class rEmpleados : System.Web.UI.Page
    {

        EmpleadoUcne empleado = new EmpleadoUcne();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Empleadoid"] != null)
            {
                empleado.EmpleadoId = int.Parse(Request.QueryString["Empleadoid"]);
                EliminarButton.Visible = true;
                Buscar();
            }
        }
        void Buscar()
        {
            NombreTextBox.Text = empleado.Nombre;
            ApellidoTextBox.Text = empleado.Apellido;
            DepartamentoTextBox.Text = empleado.Departamento;
            CargoTextBox.Text = empleado.Cargo;
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            empleado.Nombre = NombreTextBox.Text;
            empleado.Apellido = ApellidoTextBox.Text;
            empleado.Departamento = DepartamentoTextBox.Text;
            empleado.Cargo = CargoTextBox.Text;
            if (empleado.EmpleadoId != 0)
                empleado.Modificar();
            else
                empleado.Insertar();
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["Empleadoid"] != null)
            {
                empleado.EmpleadoId = int.Parse(Request.QueryString["Empleadoid"]);
                empleado.Eliminar();
                Limpiar();
            }
        }
        void Limpiar()
        {
            NombreTextBox.Text = "";
            ApellidoTextBox.Text = "";
            DepartamentoTextBox.Text = "";
            CargoTextBox.Text = "";
        }
        protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}
