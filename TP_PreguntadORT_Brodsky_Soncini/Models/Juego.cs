using System.Data.SqlClient;
using Dapper;
namespace TP_PreguntadORT_Brodsky_Soncini.Models;

public static class Juego
{
    public static string username;
    public static int puntajeActual;
    private static int cantidadPreguntasCorrectas;
    private static int contadorNroPreguntaActual;
    private static Pregunta preguntaActual;
    private static List<Pregunta> listaPreguntas = new List<Pregunta>();
    private static List<Respuesta> listaRespuestas = new List<Respuesta>();
    
    private static void InicializarJuego()
    {
        username = string.Empty;
        puntajeActual = 0;
        cantidadPreguntasCorrectas = 0;
        contadorNroPreguntaActual = 0;
        preguntaActual = null;
        listaPreguntas = new List<Pregunta>();
        listaRespuestas = new List<Respuesta>();
    }
    public static List<Categoria> ObtenerCategorias()
    {
        return BD.ObtenerCategorias(); 
    }

    public static List<Dificultad> ObtenerDificultades()
    {
        return BD.ObtenerDificultades(); 
    }
    public static void CargarPartida(string user, int dificultad, int categoria)
    {
        InicializarJuego(); 
        username = user;

        listaPreguntas = BD.ObtenerPreguntas(dificultad, categoria);
    }

    public static Pregunta ObtenerProximaPregunta()
    {
        if (contadorNroPreguntaActual < listaPreguntas.Count)
        {
            preguntaActual = listaPreguntas[contadorNroPreguntaActual];
            return preguntaActual;
        }
        return null; 
    }

    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta)
    {
        listaRespuestas = BD.ObtenerRespuestas(idPregunta);
        return listaRespuestas; 
    }

    public static byte VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        byte correcta = 0;
        foreach (Respuesta item in listaRespuestas)
        {
            if(item.IdRespuesta == idRespuesta)
            {
                correcta = item.Correcta;
                break; // Sal de la iteración tan pronto como encuentres la respuesta
            }
        }

        
        if (correcta == 1)
        {
            puntajeActual += 10;
            cantidadPreguntasCorrectas++;
        }
        contadorNroPreguntaActual++;
        preguntaActual = ObtenerProximaPregunta();
        return correcta;
    }



}
