using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
    public class CostoServicios
    {
        public float Costo { set; get; }
        public int CostoId { set; get; }

        Conexion conexion = new Conexion();

        public bool Insertar()
        {
            return conexion.EjecutarDB("INSERT INTO CostoServicios(costo)VALUES(" + Costo + ")");
        }

        public bool Modificar(float costo) 
        {
            return conexion.EjecutarDB("UPDATE CostoServicios SET costo =" + Costo + " where costoid =" + CostoId);
        }

        public bool Eliminar() 
        {
            return conexion.EjecutarDB("DELETE FROM CostoServicios WHERE costoid=" + CostoId);
        }

        public bool Buscar() 
        {
            DataTable dt=new DataTable();
            bool retorno = false;
            dt = conexion.BuscarDb("SELECT * FROM CostoServicios WHERE CostoId=" + CostoId);
            if (dt.Rows.Count > 0)
            {
                retorno = true;
               this.Costo =(float) dt.Rows[0]["Costo"];
            }
            return retorno;
        }
        public DataTable Listar(string Campos,string Comando)
        {
            return conexion.BuscarDb("SELECT "+Campos+" FROM CostoServicios WHERE " + Comando);
        }
    }
}
