using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dal; 

namespace Bll
{
    public class Usuario
    {
        public int UsuarioId { set; get; }
        public string Nombre { set; get; }
        public string UsuarioNombre { set; get; }
        public string Clave { set; get; }
        public string PreguntaRecuperacion { set; get; }
        public string RespuestaRecuperacion { set; get; }
        public bool Activo { set; get; }

        Conexion conexion = new Conexion();

        public bool Insertar() 
        {
            return conexion.EjecutarDB("INSERT INTO Usuario(Nombre,UsuarioNombre,Clave,PreguntaRecuperacion,RespuestaRecuperacion,Activo)Values('" + Nombre + "','" + UsuarioNombre + "','" + Clave + "','" + PreguntaRecuperacion + "','" + RespuestaRecuperacion + "','" + Activo + "')");
        }

        public bool Modificar()
        {
            return conexion.EjecutarDB("UPDATE Usuario SET= Nombre = '" + Nombre + "',UsuarioNombre='" + UsuarioNombre + "',Clave='" + Clave + "',PreguntaRecuperacion='" + PreguntaRecuperacion + "',RespuestaRecuperacion='" + RespuestaRecuperacion + "',Activo='" + Activo + "' WHERE UsuarioId" + UsuarioId);
        }

        public bool Eliminar()
        {
            return conexion.EjecutarDB("DELETE FROM Usuario WHERE UsuarioId=" + UsuarioId);
        }

        public bool Buscar()
        {
            bool retorno = true;
            DataTable dt = new DataTable();
            dt=conexion.BuscarDb("SELECT * FROM Usuario WHERE UsuarioId=" + UsuarioId);
            if(dt.Rows.Count>0)
            {
                retorno = true;
                this.Nombre = (string)dt.Rows[0]["Nombre"];
                this.UsuarioNombre = (string)dt.Rows[0]["UsuarioNombre"];
                this.Clave = (string)dt.Rows[0]["Clave"];
                this.PreguntaRecuperacion = (string)dt.Rows[0]["PreguntaRecuperacion"];
                this.RespuestaRecuperacion = (string)dt.Rows[0]["RespuestaRecuperacion"];
                this.Activo = (bool)dt.Rows[0]["Activo"];
            }
            return retorno; 
        }

        public DataTable Listar(string campos,string filtro)
        {
            return conexion.BuscarDb("SELECT " + campos + " FROM Usuario WHERE UsuarioId=" + UsuarioId);
        }

        public bool ConsultarPregunta(string nikename, string pregunta,string respuesta)
        {
            return conexion.EjecutarDB("SELECT UsuarioId FROM usuario WHERE UsuarioNombre =" + nikename + " And PreguntaRecuperacion = " + pregunta + " And RespuestaRecuperacion = " + respuesta);
        }

        public bool RegisrarNuevaContrasena(string clave,int usuarioid)
        {
            return conexion.EjecutarDB("Update usuario set Clave = " + clave + "where UsuarioId = " + usuarioid);
        }
    }
}
