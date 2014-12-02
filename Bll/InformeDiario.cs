using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
   public class InformeDiario
    {
       public int DiarioId { set; get; }
       public DateTime Fecha { set; get; }
       public int PaginasImpresasBN { set; get; }
       public int PaginasImpresasCL { set; get; }
       public int PagadasCL { set; get; }
       public int PagadasBN { set; get; }
       public int Danadas { set; get; }
       public int Servicios { set; get; }
       public float CobradoUsuario { set; get; }
       public float MontoTotal { set; get; }
       public string Observacion { set; get; }
       public int UsuarioId { set; get; }
       public int ConteoImpresora { set; get; }

       Conexion conexion = new Conexion();

       public bool Insertar() 
       {
           return conexion.EjecutarDB("INSERT INTO InformeDiario(Fecha,PaginasImpresasBN,PaginasImpresasCL,PagadasCL,PagadasBN,Danadas,Servicios,CobradoUsuario,MontoTotal,Observacion,UsuarioId)Values('" + Fecha + "'," + PaginasImpresasBN + "," + PaginasImpresasCL + "," + PagadasCL + "," + PagadasBN + "," + Danadas + "," + Servicios + "," + CobradoUsuario + "," + MontoTotal + ",'" + Observacion + "'," + UsuarioId + ")");
       }

       public bool Modificar() 
       {
           return conexion.EjecutarDB("UPDATE InformeDiario SET fecha ='" + Fecha + "',PaginasImpresasBN=" + PaginasImpresasBN + ",PaginasImpresasCL=" + PaginasImpresasCL + ",PagadasCl=" + PagadasCL + ",PagadasBN=" + PagadasBN + ",Danadas=" + Danadas + ",Servicios=" + Servicios + ",CobradoUsuario=" + CobradoUsuario + ",Montototal=" + MontoTotal + ",Observacion='" + Observacion + "',UsuarioId=" + UsuarioId + "WHERE DiarioId =" + DiarioId);
       }

       public bool Elimnar()
       {
           return conexion.EjecutarDB("DELETE FROM InformeDiario WHERE DiarioId =" + DiarioId);
       }

       public bool Buscar() 
       {
           DataTable dt = new DataTable();
           bool retorno = false;
           dt = conexion.BuscarDb("SELECT * FROM InformeDiario WHERE DiarioId =" + DiarioId);
           if(dt.Rows.Count>0)
           {
               retorno = true;
               this.Fecha = (DateTime)dt.Rows[0]["Fecha"];
               this.PaginasImpresasBN = (int)dt.Rows[0]["PaginasImpresasBN"];
               this.PaginasImpresasCL = (int)dt.Rows[0]["PaginasImpresasCL"];
               this.PagadasBN = (int)dt.Rows[0]["PagadasBN"];
               this.PagadasCL = (int)dt.Rows[0]["PagadasCl"];
               this.Danadas = (int)dt.Rows[0]["Danadas"];
               this.Servicios = (int)dt.Rows[0]["Servicios"];
               this.CobradoUsuario = (float)dt.Rows[0]["CobradoUsuario"];
               this.MontoTotal = (float)dt.Rows[0]["MontoTotal"];
               this.Observacion = (string)dt.Rows[0]["Obsercacion"];
               this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
               this.ConteoImpresora = (int)dt.Rows[0]["ConteoImpresora"];
           }
           return retorno;
       }

       public DataTable Listar(string Campos,string Comando)
       {
           return conexion.BuscarDb("SELECT " + Campos + " FROM InformeDiario WHERE " + Comando);
       }

       public DataTable ObtenerDatos(DateTime dia)
       {
           return conexion.BuscarDb("Select Sum(BN),Sum(Color),Sum(Servicios),Sum(Danadas) From Venta between ('" + dia.AddDays(-1) + "',and '" + dia + "'");
       }

    }
}