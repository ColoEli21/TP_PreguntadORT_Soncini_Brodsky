namespace TP_PreguntadORT_Brodsky_Soncini.Models;

public class Respuesta
{
    public int IdRespuesta {get;set;}
    public int IdPregunta {get;set;}
    public string Contenido { get; set; }
    public byte Correcta {get;set;}
    public string Foto { get; set; }
    public Respuesta(){
    }
}
