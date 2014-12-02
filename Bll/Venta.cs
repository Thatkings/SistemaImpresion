using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
    public class Venta
    {
        public int VentaId { set; get; }
        public int RegistroId { set; get; }
        public int Color { set; get; }
        public int Bn { set; get; }
        public int Servicio { set; get; }
        public int UsuarioId { set; get; }
        public int Cantidad { set; get; }

        Conexion conexion = new Conexion();

        public bool Insertar() 
        {
            return conexion.EjecutarDB("INSERT INTO Venta (RegistroId,Color,Bn,Servicio,UsuarioId,Cantidad,FechaVenta)Values(" + RegistroId + "," + Color + "," + Bn + "," + Servicio + "," + UsuarioId + "," + Cantidad + ",'" + DateTime.Now + "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("UPDATE Venta SET= RegistroId=" + RegistroId + ",Color=" + Color + ",Bn=" + Bn + ",Servicio=" + Servicio + ",UsuarioId=" + UsuarioId + ",Cantidad=" + Cantidad + "WHERE VentaId=" + VentaId);
        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("DELETE FROM Venta WHERE VentaId=" + VentaId);
        }

        public bool buscar()
        {
            DataTable dt = new DataTable();
            bool retorno = false;
            dt = conexion.BuscarDb("SELECT * FROM Venta WHERE VentaId=" + VentaId);
            if (dt.Rows.Count > 0)
            {
                retorno = true;
                this.RegistroId = (int)dt.Rows[0]["RegistroId"];
                this.Color = (int)dt.Rows[0]["Color"];
                this.Bn = (int)dt.Rows[0]["Bn"];
                this.Servicio = (int)dt.Rows[0]["Servicio"];
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.Cantidad = (int)dt.Rows[0]["Cantidad"];
            }
            return retorno;
        }

        public DataTable Listar(string campos, string filtro)
        {
            return conexion.BuscarDb("SELECT " + campos + " FROM Venta WHERE " + filtro);
        }
    }
}
