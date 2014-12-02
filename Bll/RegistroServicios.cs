using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
    public class RegistroServicios
    {
        public int RegistroId { set; get; }
        public string Nombre { set; get; }
        public string Descripcion { set; get; }
        public float CostoId { set; get; }

        Conexion conexion = new Conexion();

        public bool Insertar()
        {
            return conexion.EjecutarDB("INSERT INTO RegistroServicios(Nombre,Descripcion,Costo)Values('" + Nombre + "','" + Descripcion + "'," + CostoId + ")");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("UPDATE RegistroServicios SET Nombre ='" + Nombre + "',Descripcion ='" + Descripcion + "',Costo =" + CostoId + " WHERE RegistroId=" + RegistroId);
        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("DELETE FROM RegistroServicios WHERE RegistroId=" + RegistroId);
        }

        public bool Buscar()
        {
            DataTable dt = new DataTable();
            bool retorno = false;
            dt=conexion.BuscarDb("SELECT * FROM RegistroServicios WHERE RegistroId=" + RegistroId);
            if(dt.Rows.Count>0)
            {
                this.Nombre = (string)dt.Rows[0]["Nombre"];
                this.Descripcion = (string)dt.Rows[0]["Descripcion"];
                this.CostoId = (int)dt.Rows[0]["CostoId"];
            }
            return retorno;
        }

        public DataTable Listar(string campos,string filtro)
        {
            return conexion.BuscarDb("SELECT " + campos + " FROM RegistroServicios WHERE " + filtro);
        }
    }
}
