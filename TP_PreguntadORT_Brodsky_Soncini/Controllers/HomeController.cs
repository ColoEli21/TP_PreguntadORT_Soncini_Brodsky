using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP_PreguntadORT_Brodsky_Soncini.Models;

namespace TP_PreguntadORT_Brodsky_Soncini.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }
    public IActionResult ConfigurarJuego()
    {
        ViewBag.Categorias = Juego.ObtenerCategorias();
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        return View();
    }
    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);
        return RedirectToAction("jugar");
    }
    public IActionResult Jugar()
    {
        ViewBag.PreguntaActual = Juego.ObtenerProximaPregunta();
        if(ViewBag.PreguntaActual == null){
            return View("Fin");
        }
        else{
            ViewBag.Respuesta = Juego.ObtenerProximasRespuestas(ViewBag.PreguntaActual.IdPregunta);
            return View("Juego");
        }
    }
    [HttpPost]
    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
{
    ViewBag.Correcta = Juego.VerificarRespuesta(idPregunta, idRespuesta);
    ViewBag.PreguntaActual = Juego.ObtenerProximaPregunta(); 
    ViewBag.Respuesta = Juego.ObtenerProximasRespuestas(idPregunta); 
    return View("Respuesta");
}

}   
