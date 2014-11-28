using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
   public class InformeGeneral
    {
       public int InformeGeneralId { set; get; }
       public DateTime FechaDesde { set; get; }
       public DateTime FechaHasta { set; get; }
       public int ConteoInicial { set; get; }
       public int ConteoFinal { set; get; }
       public int TotalImpBn { set; get; }
       public int TotalImpCl { set; get; }
       public int TotalDanadas { set; get; }
       public float TotalServicios { set; get; }
       public float TotalDepositado { set; get; }
       public float DejadoEnCaja { set; get; }
       public string Observacion { set; get; }

       Conexion conexion = new Conexion();

       public bool Insertar() 
       {
           return conexion.EjecutarDB("INSERT INTO ImformeGeneral(FechaDesde,FechaHasta,ConteoInicial,ConteoFinal,TotalImpBn,TotalImpCl,TotalDanadas,TotalServicios,TotalDepositado,DejadoEnCaja,Observacion)Values('" + FechaDesde + "','" + FechaHasta + "'," + ConteoInicial + "," + ConteoFinal + "," + TotalImpBn + "," + TotalImpCl + "," + TotalDanadas + "," + TotalServicios + "," + TotalDepositado + "," + DejadoEnCaja + "," + Observacion + ")");
       }

       public bool Modificar() 
       {
           return conexion.EjecutarDB("UPDATE ImformeGeneral SET FechaDesde='" + FechaDesde + "',FechaHasta='" + FechaHasta + "',ConteoInicial=" + ConteoInicial + ",ConteoFinal=" + ConteoFinal + ",TotalImpBn=" + TotalImpBn + ",TotalImpCl=" + TotalImpCl + ",TotalDanadas=" + TotalDanadas + ",TotalServicios=" + TotalServicios + ",TotalDepositado" + TotalDepositado + ",DejadoEnCaja=" + DejadoEnCaja + ",Observacion='" + Observacion + "' WHERE InformeGeneralId=" + InformeGeneralId);
       }

       public bool Eliminar() 
       {
           return conexion.EjecutarDB("DELETE FROM ImformeGeneral WHERE InformeGeneralId=" + InformeGeneralId);
       }

       public bool Buscar() 
       {
           DataTable dt = new DataTable();
           bool retorno = false;
           dt = conexion.BuscarDb("SELECT * FROM ImformeGeneral WHERE InformeGeneralId=" + InformeGeneralId);
           if(dt.Rows.Count>0)
           {
               retorno = true;
               this.InformeGeneralId = (int)dt.Rows[0]["InformeGeneralId"];
               this.FechaDesde = (DateTime)dt.Rows[0]["FechaDesde"];
               this.FechaHasta = (DateTime)dt.Rows[0]["FechaHasta"];
               this.ConteoInicial = (int)dt.Rows[0]["ConteoInicial"];
               this.ConteoFinal = (int)dt.Rows[0]["ConteoFinal"];
               this.TotalImpBn = (int)dt.Rows[0]["TotalImpBn"];
               this.TotalImpCl = (int)dt.Rows[0]["TotalImpCl"];
               this.TotalDanadas = (int)dt.Rows[0]["TotalDanadas"];
               this.TotalDepositado = (int)dt.Rows[0]["TotalDepositado"];
               this.TotalServicios=(float)dt.Rows[0]["TotalServicios"];
               this.DejadoEnCaja = (float)dt.Rows[0]["DejadoEnCaja"];
               this.Observacion = (string)dt.Rows[0]["Observacion"];
           }
           return retorno;
       }

       public DataTable Listar(string campos,string filtro) 
       {
           return conexion.BuscarDb("SELECT " + campos + "FROM ImformeGeneral WHERE " + filtro);
       }
    }
}
