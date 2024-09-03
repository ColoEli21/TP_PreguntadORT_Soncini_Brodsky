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
}
