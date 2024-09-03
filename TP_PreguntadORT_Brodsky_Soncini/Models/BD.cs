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
        List<Pregunta> MiPregunta = null;
        using(SqlConnection conn = new SqlConnection(_ConnectionString)){
            string sql = "";
            if(idDificultad == -1){
                sql="SELECT * FROM Preguntas left join Dificultades d on d.IdDificultad = @id1";
            }
            else if (idCategoria == -1){
                sql="SELECT * FROM Preguntas left join Categorias c on c.IdCategoria = @id2";
            }
            else {
                sql="SELECT * FROM Preguntas inner join Categorias c on c.IdCategoria = @id2 inner join Dificultades d on d.IdDificultad = @id1";
            }
            MiPregunta = conn.Query<Pregunta>(sql, new{id1 = idDificultad, id2 = idCategoria}).ToList();
        }
        return MiPregunta;
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
