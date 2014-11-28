using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
   public class EmpleadoUcne
    {
       public int EmpleadoId { set; get; }
       public string Nombre { set; get; }
       public string Apellido { set; get; }
       public string Departamento { set; get; }
       public string Cargo { set; get; }

       Conexion conexion = new Conexion();

       public bool Insertar()
       {
           return conexion.EjecutarDB("INSERT INTO EmpleadoUcne(Nombre,Apellido,Departamento,Cargo)Values('" + Nombre + "','" + Apellido + "','" + Departamento + "','" + Cargo + "')");
       }

       public bool Modificar() 
       {
           return conexion.EjecutarDB("UPDATE EmpleadoUcne SET nombre='" + Nombre + "',apellido='" + Apellido + "',departamento='" + Departamento + "',Cargo='" + Cargo + "' WHERE empleadoid=" + EmpleadoId);
       }

       public bool Eliminar() 
       {
           return conexion.EjecutarDB("DELETE FROM EmpleadoUcne WHERE empleadoid=" + EmpleadoId);
       }

       public bool Buscar()
       {
           DataTable dt = new DataTable();
           bool retorno = false;
           dt = conexion.BuscarDb("SELECT * FROM EmpleadoUcne WHERE EmpleadoId=" + EmpleadoId);
           if(dt.Rows.Count>0)
           {
               retorno = true;
               this.Nombre = (string)dt.Rows[0]["Nombre"];
               this.Apellido = (string)dt.Rows[0]["Apellido"];
               this.Departamento = (string)dt.Rows[0]["Departamento"];
               this.Cargo = (string)dt.Rows[0]["Cargo"];
           }
           return retorno;
       }

       public DataTable Listar(string Campos, string Comando) 
       {
           return conexion.BuscarDb("SELECT " + Campos + " FROM EmpleadoUcne WHERE " + Comando);
       }
    }
}
