using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal;

namespace Bll
{
    public class InformeSemanalEmp
    {
        public int informeEmpleadoId { set; get; }
        public DateTime FechaDesde { set; get; }
        public DateTime FechaHasta { set; get; }
        public DateTime FechaInforme { set; get; }
        public string Nombre { set; get; }
        public string Departamento { set; get; }
        public string TipoDocumento { set; get; }
        public int PaginasImpresasCL { set; get; }
        public int PaginasImpresasBN { set; get; }
        public int Servicios { set; get; }
        public string Observacion { set; get; }

        Conexion conexion = new Conexion();

        public bool Insertar() 
        {
            return conexion.EjecutarDB("INSERT INTO InformeSemanalEmp(informeEmpleadoId,FechaDesde,FechaHasta,FechaInforme,Nombre,Departamento,TipoDocumento,PaginasImpresasCL,PaginasImpresasCL,PaginasImpresasBN,Servicios,Observacion)Values(" + informeEmpleadoId + ",'" + FechaDesde + "','" + FechaHasta + "','" + FechaInforme + "','" + Nombre + "','" + Departamento + "','" + TipoDocumento + "'," + PaginasImpresasCL + "," + PaginasImpresasBN + ",'" + Servicios + "','" + Observacion + "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("UPDATE InformeSemanalEmp SET FechaDesde='" + FechaDesde + "',FechaHasta='" + FechaHasta + "',FechaInforme='" + FechaInforme + "',Nombre='" + Nombre + "',Departamento='" + Departamento + "',TipoDocumento='" + TipoDocumento + "',PaginasImpresasCL=" + PaginasImpresasCL + ",PaginasImpresasBN=" + PaginasImpresasBN + ",Servicios='" + Servicios + "',Observacion='" + Observacion + "' WHERE informeEmpleadoId=" + informeEmpleadoId);
        }

        public bool Eliminar() 
        {
            return conexion.EjecutarDB("DELETE FROM InformeSemanalEmp WHERE informeEmpleadoId=" + informeEmpleadoId);
        }

        public bool Buscar() 
        {
            DataTable dt=new DataTable();
            bool retorno = false;
            dt = conexion.BuscarDb("SELECT * FROM InformeSemanalEmp WHERE informeEmpleadoId=" + informeEmpleadoId);
            if (dt.Rows.Count > 0)
            {
                retorno = true;
                this.FechaDesde = (DateTime)dt.Rows[0]["FechaDesde"];
                this.FechaHasta = (DateTime)dt.Rows[0]["FechaHasta"];
                this.FechaInforme = (DateTime)dt.Rows[0]["FechaInforme"];
                this.Nombre = (string)dt.Rows[0]["Nombre"];
                this.Departamento = (string)dt.Rows[0]["Departamento"];
                this.TipoDocumento = (string)dt.Rows[0]["TipoDocumento"];
                this.PaginasImpresasCL = (int)dt.Rows[0]["PaginasImpresasCL"];
                this.PaginasImpresasBN = (int)dt.Rows[0]["PaginasImpresasBN"];
                this.Servicios = (int)dt.Rows[0]["Servicios"];
                this.Observacion = (string)dt.Rows[0]["Observacion"];
            }
            return retorno;
        }

        public DataTable Listar(string campos, string filtro) 
        {
            return conexion.BuscarDb("SELECT " + campos + " FROM InformeSemanalEmp WHERE " + filtro);
        }
    }
}
