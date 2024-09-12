using System.Data.SqlClient;
using Dapper;
namespace TP_PreguntadORT_Brodsky_Soncini.Models;

public static class BD
{
    private static string _ConnectionString = "Server=localhost;DataBase=PreguntadORT;Trusted_Connection=true;";    
    public static List<Categoria> ObtenerCategorias()
    {
        List<Categoria> ListaCategorias = new List<Categoria>();
        using(SqlConnection conn = new SqlConnection(_ConnectionString)){
            string sql="SELECT * FROM Categorias";
            ListaCategorias = conn.Query<Categoria>(sql).ToList();
        }
        return ListaCategorias;
    }
    public static List<Dificultad> ObtenerDificultades()
    {
        List<Dificultad> ListaDificultades = new List<Dificultad>();
        using(SqlConnection conn = new SqlConnection(_ConnectionString)){
            string sql="SELECT * FROM Dificultades";
            ListaDificultades = conn.Query<Dificultad>(sql).ToList();
        }
        return ListaDificultades;
    }
    public static List<Pregunta> ObtenerPreguntas(int idDificultad, int idCategoria)
    {
        using(SqlConnection conn = new SqlConnection(_ConnectionString))
        {
            string sql = "SELECT * FROM Preguntas WHERE 1=1";
            
            if(idDificultad != -1)
            {
                sql += " AND IdDificultad = @idDificultad";
            }

            if (idCategoria != -1)
            {
                sql += " AND IdCategoria = @idCategoria";
            }

            return conn.Query<Pregunta>(sql, new { idDificultad, idCategoria }).ToList();
        }
    }
    public static List<Respuesta> ObtenerRespuestas(int idPregunta)
    {
        List<Respuesta> MiRespuesta = null;
        using(SqlConnection conn = new SqlConnection(_ConnectionString)){
            string sql="SELECT * FROM Respuestas WHERE IdPregunta = @id";
            MiRespuesta = conn.Query<Respuesta>(sql, new{id = idPregunta}).ToList();
        }
        return MiRespuesta;
    }
}
