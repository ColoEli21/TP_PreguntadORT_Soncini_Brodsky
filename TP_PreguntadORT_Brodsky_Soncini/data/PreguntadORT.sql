USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 3/9/2024 08:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](500) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 3/9/2024 08:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 3/9/2024 08:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [varchar](500) NOT NULL,
	[Foto] [varchar](500) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 3/9/2024 08:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](500) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Historia', N'https://escuelarepublicaitaliana.edu.mx/sitepad-data/uploads/2023/08/Hist%C3%B3ria2.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Geografía', N'https://cdn.todamateria.com/imagenes/historia-cd.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Ciencia', N'https://www.educaciontrespuntocero.com/wp-content/uploads/2022/10/semana-de-la-ciencia-860x573.jpg.webp')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Deportes', N'https://www.semanarioextra.com.ar/wp-content/uploads/2023/03/Foro-virtual-El-deporte-dentro-y-fuera-de-la-cancha-2.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Arte', N'https://www.asociacion-empoderarte.org/wp-content/uploads/2017/10/arte-y-etica-780x390.jpg')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Media')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Difícil')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 
-- Insertar preguntas para la categoría Historia
INSERT INTO [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES
(1, 1, 1, N'¿Quién fue el primer presidente de Estados Unidos?', N'https://example.com/foto1.jpg'),
(2, 1, 1, N'¿En qué año comenzó la Primera Guerra Mundial?', N'https://example.com/foto2.jpg'),
(3, 1, 1, N'¿Cuál es el nombre del antiguo imperio que ocupaba gran parte de Europa y Asia?', N'https://example.com/foto3.jpg'),
(4, 1, 1, N'¿Qué faraón construyó la Gran Pirámide de Giza?', N'https://example.com/foto4.jpg'),
(5, 1, 1, N'¿Qué evento marcó el fin de la Edad Media?', N'https://example.com/foto5.jpg'),

(6, 1, 2, N'¿Cuál fue la principal causa de la Guerra de Secesión en los Estados Unidos?', N'https://example.com/foto6.jpg'),
(7, 1, 2, N'¿Qué imperio fue conocido por sus avanzadas construcciones arquitectónicas, incluyendo Machu Picchu?', N'https://example.com/foto7.jpg'),
(8, 1, 2, N'¿En qué batalla se decidieron las guerras napoleónicas?', N'https://example.com/foto8.jpg'),
(9, 1, 2, N'¿Qué tratado puso fin a la Primera Guerra Mundial?', N'https://example.com/foto9.jpg'),
(10, 1, 2, N'¿Quién fue el líder de la Revolución Rusa de 1917?', N'https://example.com/foto10.jpg'),

(11, 1, 3, N'¿Qué tratado entre el Imperio Austrohúngaro y el Reino de Italia fue firmado en 1882?', N'https://example.com/foto11.jpg'),
(12, 1, 3, N'¿Qué evento histórico provocó la crisis de los misiles en Cuba en 1962?', N'https://example.com/foto12.jpg'),
(13, 1, 3, N'¿Cuál era el nombre del emperador japonés durante la Segunda Guerra Mundial?', N'https://example.com/foto13.jpg'),
(14, 1, 3, N'¿Qué acuerdo de paz fue firmado en 1979 entre Egipto e Israel?', N'https://example.com/foto14.jpg'),
(15, 1, 3, N'¿Qué figura histórica es conocida como el "Líder del Norte" en la Revolución Mexicana?', N'https://example.com/foto15.jpg');

-- Insertar preguntas para la categoría Geografía
INSERT INTO [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES
(16, 2, 1, N'¿Cuál es el continente más grande en superficie?', N'https://example.com/foto16.jpg'),
(17, 2, 1, N'¿Qué río es el más largo del mundo?', N'https://example.com/foto17.jpg'),
(18, 2, 1, N'¿Cuál es el país con más población?', N'https://example.com/foto18.jpg'),
(19, 2, 1, N'¿Qué océano está al este de África?', N'https://example.com/foto19.jpg'),
(20, 2, 1, N'¿Cuál es la capital de Francia?', N'https://example.com/foto20.jpg'),

(21, 2, 2, N'¿Cuál es el país más grande en América del Sur?', N'https://example.com/foto21.jpg'),
(22, 2, 2, N'¿Qué desierto es el más grande del mundo?', N'https://example.com/foto22.jpg'),
(23, 2, 2, N'¿Cuál es el nombre del canal que conecta el Océano Atlántico con el Océano Pacífico?', N'https://example.com/foto23.jpg'),
(24, 2, 2, N'¿En qué continente se encuentra el monte Kilimanjaro?', N'https://example.com/foto24.jpg'),
(25, 2, 2, N'¿Qué país tiene la mayor cantidad de islas?', N'https://example.com/foto25.jpg'),

(26, 2, 3, N'¿Cuál es el punto más bajo de la superficie terrestre?', N'https://example.com/foto26.jpg'),
(27, 2, 3, N'¿Qué país tiene el mayor número de lenguas oficiales?', N'https://example.com/foto27.jpg'),
(28, 2, 3, N'¿Cuál es la ciudad más grande en términos de área metropolitana en el mundo?', N'https://example.com/foto28.jpg'),
(29, 2, 3, N'¿Cuál es el nombre del mayor lago de agua dulce en África?', N'https://example.com/foto29.jpg'),
(30, 2, 3, N'¿Qué país tiene el mayor territorio de tundra en el mundo?', N'https://example.com/foto30.jpg');

-- Insertar preguntas para la categoría Ciencia
INSERT INTO [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES
(31, 3, 1, N'¿Qué planeta es el más cercano al Sol?', N'https://example.com/foto31.jpg'),
(32, 3, 1, N'¿Qué elemento químico tiene el símbolo O?', N'https://example.com/foto32.jpg'),
(33, 3, 1, N'¿Cuál es el órgano más grande del cuerpo humano?', N'https://example.com/foto33.jpg'),
(34, 3, 1, N'¿Cuál es el proceso por el cual las plantas producen su alimento?', N'https://example.com/foto34.jpg'),
(35, 3, 1, N'¿Cuántos cromosomas tiene una célula humana típica?', N'https://example.com/foto35.jpg'),

(36, 3, 2, N'¿Qué tipo de célula tiene una pared celular?', N'https://example.com/foto36.jpg'),
(37, 3, 2, N'¿Cuál es la función principal del sistema respiratorio?', N'https://example.com/foto37.jpg'),
(38, 3, 2, N'¿Qué es un agujero negro?', N'https://example.com/foto38.jpg'),
(39, 3, 2, N'¿Qué descubrimiento hizo Gregor Mendel?', N'https://example.com/foto39.jpg'),
(40, 3, 2, N'¿Cómo se llama la teoría que explica el origen del universo?', N'https://example.com/foto40.jpg'),

(41, 3, 3, N'¿Qué es el bosón de Higgs?', N'https://example.com/foto41.jpg'),
(42, 3, 3, N'¿Qué es el ADN y cuál es su función?', N'https://example.com/foto42.jpg'),
(43, 3, 3, N'¿Cuál es el principio de incertidumbre de Heisenberg?', N'https://example.com/foto43.jpg'),
(44, 3, 3, N'¿Qué técnica se utiliza para secuenciar el genoma?', N'https://example.com/foto44.jpg'),
(45, 3, 3, N'¿Qué es la materia oscura y cómo se detecta?', N'https://example.com/foto45.jpg');

-- Insertar preguntas para la categoría Deportes
INSERT INTO [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES
(46, 4, 1, N'¿Cuál es el deporte más popular del mundo?', N'https://example.com/foto46.jpg'),
(47, 4, 1, N'¿En qué deporte se utiliza un balón ovalado?', N'https://example.com/foto47.jpg'),
(48, 4, 1, N'¿Cuántos jugadores hay en un equipo de fútbol?', N'https://example.com/foto48.jpg'),
(49, 4, 1, N'¿Cuál es el nombre del torneo de tenis más famoso?', N'https://example.com/foto49.jpg'),
(50, 4, 1, N'¿Qué país ganó la Copa Mundial de la FIFA en 2018?', N'https://example.com/foto50.jpg'),

(51, 4, 2, N'¿Qué deporte es conocido como "el rey de los deportes"?', N'https://example.com/foto51.jpg'),
(52, 4, 2, N'¿Qué país ha ganado más medallas en los Juegos Olímpicos de verano?', N'https://example.com/foto52.jpg'),
(53, 4, 2, N'¿Cuál es el récord de más goles en un solo partido de la NBA?', N'https://example.com/foto53.jpg'),
(54, 4, 2, N'¿Qué deporte se juega en el Tour de Francia?', N'https://example.com/foto54.jpg'),
(55, 4, 2, N'¿Quién es el máximo goleador en la historia del fútbol profesional?', N'https://example.com/foto55.jpg'),

(56, 4, 3, N'¿Qué atleta posee el récord mundial en los 100 metros planos?', N'https://example.com/foto56.jpg'),
(57, 4, 3, N'¿Cuál es el deporte que combina el esquí y el tiro con rifle?', N'https://example.com/foto57.jpg'),
(58, 4, 3, N'¿Qué jugador tiene más títulos de Grand Slam en tenis?', N'https://example.com/foto58.jpg'),
(59, 4, 3, N'¿Qué equipo ganó la Copa Mundial de Rugby en 2015?', N'https://example.com/foto59.jpg'),
(60, 4, 3, N'¿Qué deporte es conocido por su competición en el evento "Ironman"?', N'https://example.com/foto60.jpg');

-- Insertar preguntas para la categoría Arte
INSERT INTO [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES
(61, 5, 1, N'¿Quién pintó la Mona Lisa?', N'https://example.com/foto61.jpg'),
(62, 5, 1, N'¿En qué país se encuentra el Museo del Louvre?', N'https://example.com/foto62.jpg'),
(63, 5, 1, N'¿Qué estilo artístico se caracteriza por el uso de colores vivos y líneas expresivas?', N'https://example.com/foto63.jpg'),
(64, 5, 1, N'¿Qué pintor es famoso por sus "Girasoles"?', N'https://example.com/foto64.jpg'),
(65, 5, 1, N'¿Quién es el autor de "El Grito"?', N'https://example.com/foto65.jpg'),

(66, 5, 2, N'¿Qué movimiento artístico se originó en Francia a finales del siglo XIX?', N'https://example.com/foto66.jpg'),
(67, 5, 2, N'¿Cuál es el nombre del pintor surrealista conocido por sus relojes derretidos?', N'https://example.com/foto67.jpg'),
(68, 5, 2, N'¿Qué técnica utiliza el artista para crear una imagen con manchas de tinta?', N'https://example.com/foto68.jpg'),
(69, 5, 2, N'¿Qué corriente artística se caracteriza por la representación de la realidad tal como es?', N'https://example.com/foto69.jpg'),
(70, 5, 2, N'¿Quién pintó "Las Meninas"?', N'https://example.com/foto70.jpg'),

(71, 5, 3, N'¿Qué artista es conocido por su obra "El Jardín de las Delicias"?', N'https://example.com/foto71.jpg'),
(72, 5, 3, N'¿Cuál es el estilo artístico que se caracteriza por la representación abstracta de la realidad?', N'https://example.com/foto72.jpg'),
(73, 5, 3, N'¿Qué pintor es famoso por sus retratos de la realeza española en el siglo XVII?', N'https://example.com/foto73.jpg'),
(74, 5, 3, N'¿Qué tipo de arte es el "Pop Art"?', N'https://example.com/foto74.jpg'),
(75, 5, 3, N'¿Quién es el autor de "La Persistencia de la Memoria"?', N'https://example.com/foto75.jpg');

SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 
-- Respuestas para Historia
-- Fácil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(1, 1, 1, N'George Washington', 1, N'https://example.com/respuesta1_correcta.jpg'),
(2, 1, 2, N'Abraham Lincoln', 0, N'https://example.com/respuesta1_incorrecta.jpg'),

(3, 3, 1, N'1914', 1, N'https://example.com/respuesta3_correcta.jpg'),
(4, 3, 2, N'1918', 0, N'https://example.com/respuesta3_incorrecta.jpg'),

(5, 5, 1, N'Imperio Romano', 1, N'https://example.com/respuesta5_correcta.jpg'),
(6, 5, 2, N'Imperio Otomano', 0, N'https://example.com/respuesta5_incorrecta.jpg'),

(7, 7, 1, N'Keops', 1, N'https://example.com/respuesta7_correcta.jpg'),
(8, 7, 2, N'Ramsés II', 0, N'https://example.com/respuesta7_incorrecta.jpg'),

(9, 9, 1, N'La Caída de Constantinopla', 1, N'https://example.com/respuesta9_correcta.jpg'),
(10, 9, 2, N'La Revolución Francesa', 0, N'https://example.com/respuesta9_incorrecta.jpg');

-- Media
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(11, 6, 1, N'La esclavitud', 1, N'https://example.com/respuesta11_correcta.jpg'),
(12, 6, 2, N'La independencia de Texas', 0, N'https://example.com/respuesta11_incorrecta.jpg'),

(13, 8, 1, N'El Imperio Inca', 1, N'https://example.com/respuesta13_correcta.jpg'),
(14, 8, 2, N'El Imperio Azteca', 0, N'https://example.com/respuesta13_incorrecta.jpg'),

(15, 10, 1, N'El Tratado de Versalles', 1, N'https://example.com/respuesta15_correcta.jpg'),
(16, 10, 2, N'El Tratado de Tordesillas', 0, N'https://example.com/respuesta15_incorrecta.jpg'),

(17, 12, 1, N'La Crisis de los Misiles en Cuba', 1, N'https://example.com/respuesta17_correcta.jpg'),
(18, 12, 2, N'El Incidente del Golfo de Tonkín', 0, N'https://example.com/respuesta17_incorrecta.jpg'),

(19, 14, 1, N'Los Acuerdos de Camp David', 1, N'https://example.com/respuesta19_correcta.jpg'),
(20, 14, 2, N'El Tratado de Versalles', 0, N'https://example.com/respuesta19_incorrecta.jpg');

-- Difícil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(21, 11, 1, N'Tratado de Triple Alianza', 1, N'https://example.com/respuesta21_correcta.jpg'),
(22, 11, 2, N'Tratado de Tordesillas', 0, N'https://example.com/respuesta21_incorrecta.jpg'),

(23, 12, 1, N'La Crisis de los Misiles en Cuba', 1, N'https://example.com/respuesta23_correcta.jpg'),
(24, 12, 2, N'La Invasión de Kuwait', 0, N'https://example.com/respuesta23_incorrecta.jpg'),

(25, 13, 1, N'El Emperador Hirohito', 1, N'https://example.com/respuesta25_correcta.jpg'),
(26, 13, 2, N'El Emperador Akihito', 0, N'https://example.com/respuesta25_incorrecta.jpg'),

(27, 14, 1, N'Los Acuerdos de Camp David', 1, N'https://example.com/respuesta27_correcta.jpg'),
(28, 14, 2, N'El Tratado de Paz de Oslo', 0, N'https://example.com/respuesta27_incorrecta.jpg'),

(29, 15, 1, N'Pancho Villa', 1, N'https://example.com/respuesta29_correcta.jpg'),
(30, 15, 2, N'Emiliano Zapata', 0, N'https://example.com/respuesta29_incorrecta.jpg');

-- Respuestas para Geografía
-- Fácil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(31, 16, 1, N'Asia', 1, N'https://example.com/respuesta31_correcta.jpg'),
(32, 16, 2, N'África', 0, N'https://example.com/respuesta31_incorrecta.jpg'),

(33, 17, 1, N'El Nilo', 1, N'https://example.com/respuesta33_correcta.jpg'),
(34, 17, 2, N'El Amazonas', 0, N'https://example.com/respuesta33_incorrecta.jpg'),

(35, 18, 1, N'China', 1, N'https://example.com/respuesta35_correcta.jpg'),
(36, 18, 2, N'India', 0, N'https://example.com/respuesta35_incorrecta.jpg'),

(37, 19, 1, N'El Océano Índico', 1, N'https://example.com/respuesta37_correcta.jpg'),
(38, 19, 2, N'El Océano Pacífico', 0, N'https://example.com/respuesta37_incorrecta.jpg'),

(39, 20, 1, N'París', 1, N'https://example.com/respuesta39_correcta.jpg'),
(40, 20, 2, N'Roma', 0, N'https://example.com/respuesta39_incorrecta.jpg');

-- Media
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(41, 21, 1, N'Brasil', 1, N'https://example.com/respuesta41_correcta.jpg'),
(42, 21, 2, N'Argentina', 0, N'https://example.com/respuesta41_incorrecta.jpg'),

(43, 22, 1, N'El Desierto del Sáhara', 1, N'https://example.com/respuesta43_correcta.jpg'),
(44, 22, 2, N'El Desierto de Gobi', 0, N'https://example.com/respuesta43_incorrecta.jpg'),

(45, 23, 1, N'El Canal de Panamá', 1, N'https://example.com/respuesta45_correcta.jpg'),
(46, 23, 2, N'El Canal de Suez', 0, N'https://example.com/respuesta45_incorrecta.jpg'),

(47, 24, 1, N'Africa', 1, N'https://example.com/respuesta47_correcta.jpg'),
(48, 24, 2, N'Asia', 0, N'https://example.com/respuesta47_incorrecta.jpg'),

(49, 25, 1, N'Suecia', 1, N'https://example.com/respuesta49_correcta.jpg'),
(50, 25, 2, N'Noruega', 0, N'https://example.com/respuesta49_incorrecta.jpg');

-- Difícil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(51, 26, 1, N'El Mar Muerto', 1, N'https://example.com/respuesta51_correcta.jpg'),
(52, 26, 2, N'El Lago Superior', 0, N'https://example.com/respuesta51_incorrecta.jpg'),

(53, 27, 1, N'Papúa Nueva Guinea', 1, N'https://example.com/respuesta53_correcta.jpg'),
(54, 27, 2, N'India', 0, N'https://example.com/respuesta53_incorrecta.jpg'),

(55, 28, 1, N'Tokyo', 1, N'https://example.com/respuesta55_correcta.jpg'),
(56, 28, 2, N'Nueva York', 0, N'https://example.com/respuesta55_incorrecta.jpg'),

(57, 29, 1, N'El Lago Victoria', 1, N'https://example.com/respuesta57_correcta.jpg'),
(58, 29, 2, N'El Lago Baikal', 0, N'https://example.com/respuesta57_incorrecta.jpg'),

(59, 30, 1, N'Rusia', 1, N'https://example.com/respuesta59_correcta.jpg'),
(60, 30, 2, N'Canadá', 0, N'https://example.com/respuesta59_incorrecta.jpg');

-- Respuestas para Ciencia
-- Fácil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(61, 31, 1, N'Mercurio', 1, N'https://example.com/respuesta61_correcta.jpg'),
(62, 31, 2, N'Venus', 0, N'https://example.com/respuesta61_incorrecta.jpg'),

(63, 32, 1, N'Oxígeno', 1, N'https://example.com/respuesta63_correcta.jpg'),
(64, 32, 2, N'Carbono', 0, N'https://example.com/respuesta63_incorrecta.jpg'),

(65, 33, 1, N'La piel', 1, N'https://example.com/respuesta65_correcta.jpg'),
(66, 33, 2, N'El hígado', 0, N'https://example.com/respuesta65_incorrecta.jpg'),

(67, 34, 1, N'Fotosíntesis', 1, N'https://example.com/respuesta67_correcta.jpg'),
(68, 34, 2, N'Respiración celular', 0, N'https://example.com/respuesta67_incorrecta.jpg'),

(69, 35, 1, N'46', 1, N'https://example.com/respuesta69_correcta.jpg'),
(70, 35, 2, N'23', 0, N'https://example.com/respuesta69_incorrecta.jpg');

-- Media
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(71, 36, 1, N'Plantas', 1, N'https://example.com/respuesta71_correcta.jpg'),
(72, 36, 2, N'Animales', 0, N'https://example.com/respuesta71_incorrecta.jpg'),

(73, 38, 1, N'Un objeto con una gravedad tan alta que ni la luz puede escapar de él', 1, N'https://example.com/respuesta73_correcta.jpg'),
(74, 38, 2, N'Un agujero en el espacio vacío', 0, N'https://example.com/respuesta73_incorrecta.jpg'),

(75, 39, 1, N'Herencia genética', 1, N'https://example.com/respuesta75_correcta.jpg'),
(76, 39, 2, N'Separación de cromosomas', 0, N'https://example.com/respuesta75_incorrecta.jpg'),

(77, 40, 1, N'La teoría del Big Bang', 1, N'https://example.com/respuesta77_correcta.jpg'),
(78, 40, 2, N'La teoría de la evolución', 0, N'https://example.com/respuesta77_incorrecta.jpg'),

(79, 41, 1, N'Un bosón que da masa a otras partículas', 1, N'https://example.com/respuesta79_correcta.jpg'),
(80, 41, 2, N'Una partícula que transmite energía', 0, N'https://example.com/respuesta79_incorrecta.jpg');

-- Difícil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(81, 42, 1, N'La secuenciación del ADN', 1, N'https://example.com/respuesta81_correcta.jpg'),
(82, 42, 2, N'La clonación', 0, N'https://example.com/respuesta81_incorrecta.jpg'),

(83, 43, 1, N'La imposibilidad de conocer simultáneamente la posición y la velocidad de una partícula', 1, N'https://example.com/respuesta83_correcta.jpg'),
(84, 43, 2, N'La incertidumbre en la medición de la masa de una partícula', 0, N'https://example.com/respuesta83_incorrecta.jpg'),

(85, 44, 1, N'Teoría del Big Bang', 1, N'https://example.com/respuesta85_correcta.jpg'),
(86, 44, 2, N'Teoría de la Relatividad', 0, N'https://example.com/respuesta85_incorrecta.jpg'),

(87, 45, 1, N'Materia que no emite luz y se detecta por su influencia gravitacional', 1, N'https://example.com/respuesta87_correcta.jpg'),
(88, 45, 2, N'Materia que refleja luz y se puede ver a simple vista', 0, N'https://example.com/respuesta87_incorrecta.jpg');

-- Respuestas para Deportes
-- Fácil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(89, 46, 1, N'Fútbol', 1, N'https://example.com/respuesta89_correcta.jpg'),
(90, 46, 2, N'Críquet', 0, N'https://example.com/respuesta89_incorrecta.jpg'),

(91, 47, 1, N'Rugby', 1, N'https://example.com/respuesta91_correcta.jpg'),
(92, 47, 2, N'Fútbol', 0, N'https://example.com/respuesta91_incorrecta.jpg'),

(93, 48, 1, N'11', 1, N'https://example.com/respuesta93_correcta.jpg'),
(94, 48, 2, N'9', 0, N'https://example.com/respuesta93_incorrecta.jpg'),

(95, 49, 1, N'El Abierto de Australia', 1, N'https://example.com/respuesta95_correcta.jpg'),
(96, 49, 2, N'El Abierto de Francia', 0, N'https://example.com/respuesta95_incorrecta.jpg'),

(97, 50, 1, N'Francia', 1, N'https://example.com/respuesta97_correcta.jpg'),
(98, 50, 2, N'Brasil', 0, N'https://example.com/respuesta97_incorrecta.jpg');

-- Media
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(99, 51, 1, N'Fútbol', 1, N'https://example.com/respuesta99_correcta.jpg'),
(100, 51, 2, N'Baloncesto', 0, N'https://example.com/respuesta99_incorrecta.jpg'),

(101, 52, 1, N'Estados Unidos', 1, N'https://example.com/respuesta101_correcta.jpg'),
(102, 52, 2, N'China', 0, N'https://example.com/respuesta101_incorrecta.jpg'),

(103, 53, 1, N'100 puntos', 1, N'https://example.com/respuesta103_correcta.jpg'),
(104, 53, 2, N'60 puntos', 0, N'https://example.com/respuesta103_incorrecta.jpg'),

(105, 54, 1, N'Ciclismo', 1, N'https://example.com/respuesta105_correcta.jpg'),
(106, 54, 2, N'Nado', 0, N'https://example.com/respuesta105_incorrecta.jpg'),

(107, 55, 1, N'Cristiano Ronaldo', 1, N'https://example.com/respuesta107_correcta.jpg'),
(108, 55, 2, N'Messi', 0, N'https://example.com/respuesta107_incorrecta.jpg');

-- Difícil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(109, 56, 1, N'Usain Bolt', 1, N'https://example.com/respuesta109_correcta.jpg'),
(110, 56, 2, N'Carl Lewis', 0, N'https://example.com/respuesta109_incorrecta.jpg'),

(111, 57, 1, N'Biathlon', 1, N'https://example.com/respuesta111_correcta.jpg'),
(112, 57, 2, N'Decathlon', 0, N'https://example.com/respuesta111_incorrecta.jpg'),

(113, 58, 1, N'Novak Djokovic', 1, N'https://example.com/respuesta113_correcta.jpg'),
(114, 58, 2, N'Roger Federer', 0, N'https://example.com/respuesta113_incorrecta.jpg'),

(115, 59, 1, N'Los All Blacks', 1, N'https://example.com/respuesta115_correcta.jpg'),
(116, 59, 2, N'Los Springboks', 0, N'https://example.com/respuesta115_incorrecta.jpg'),

(117, 60, 1, N'Triatlón', 1, N'https://example.com/respuesta117_correcta.jpg'),
(118, 60, 2, N'Ironman', 0, N'https://example.com/respuesta117_incorrecta.jpg');

-- Respuestas para Arte
-- Fácil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(119, 61, 1, N'Leonardo da Vinci', 1, N'https://example.com/respuesta119_correcta.jpg'),
(120, 61, 2, N'Vincent van Gogh', 0, N'https://example.com/respuesta119_incorrecta.jpg'),

(121, 62, 1, N'Francia', 1, N'https://example.com/respuesta121_correcta.jpg'),
(122, 62, 2, N'Italia', 0, N'https://example.com/respuesta121_incorrecta.jpg'),

(123, 63, 1, N'Expresionismo', 1, N'https://example.com/respuesta123_correcta.jpg'),
(124, 63, 2, N'Impresionismo', 0, N'https://example.com/respuesta123_incorrecta.jpg'),

(125, 64, 1, N'Vincent van Gogh', 1, N'https://example.com/respuesta125_correcta.jpg'),
(126, 64, 2, N'Claude Monet', 0, N'https://example.com/respuesta125_incorrecta.jpg'),

(127, 65, 1, N'Edvard Munch', 1, N'https://example.com/respuesta127_correcta.jpg'),
(128, 65, 2, N'Pablo Picasso', 0, N'https://example.com/respuesta127_incorrecta.jpg');

-- Media
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(129, 66, 1, N'Impresionismo', 1, N'https://example.com/respuesta129_correcta.jpg'),
(130, 66, 2, N'Cubismo', 0, N'https://example.com/respuesta129_incorrecta.jpg'),

(131, 67, 1, N'Salvador Dalí', 1, N'https://example.com/respuesta131_correcta.jpg'),
(132, 67, 2, N'Marc Chagall', 0, N'https://example.com/respuesta131_incorrecta.jpg'),

(133, 68, 1, N'Pintura en acuarela', 1, N'https://example.com/respuesta133_correcta.jpg'),
(134, 68, 2, N'Grabado', 0, N'https://example.com/respuesta133_incorrecta.jpg'),

(135, 69, 1, N'Realismo', 1, N'https://example.com/respuesta135_correcta.jpg'),
(136, 69, 2, N'Abstracto', 0, N'https://example.com/respuesta135_incorrecta.jpg'),

(137, 70, 1, N'Diego Velázquez', 1, N'https://example.com/respuesta137_correcta.jpg'),
(138, 70, 2, N'Francisco de Goya', 0, N'https://example.com/respuesta137_incorrecta.jpg');

-- Difícil
INSERT INTO [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(139, 71, 1, N'Hieronymus Bosch', 1, N'https://example.com/respuesta139_correcta.jpg'),
(140, 71, 2, N'Ren&eacute; Magritte', 0, N'https://example.com/respuesta139_incorrecta.jpg'),

(141, 72, 1, N'Abstracción', 1, N'https://example.com/respuesta141_correcta.jpg'),
(142, 72, 2, N'Realismo', 0, N'https://example.com/respuesta141_incorrecta.jpg'),

(143, 73, 1, N'Diego Velázquez', 1, N'https://example.com/respuesta143_correcta.jpg'),
(144, 73, 2, N'El Greco', 0, N'https://example.com/respuesta143_incorrecta.jpg'),

(145, 74, 1, N'Arte Pop', 1, N'https://example.com/respuesta145_correcta.jpg'),
(146, 74, 2, N'Arte Conceptual', 0, N'https://example.com/respuesta145_incorrecta.jpg'),

(147, 75, 1, N'Salvador Dalí', 1, N'https://example.com/respuesta147_correcta.jpg'),
(148, 75, 2, N'Pablo Picasso', 0, N'https://example.com/respuesta147_incorrecta.jpg');

SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Categorias]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
