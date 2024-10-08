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
SET IDENTITY_INSERT [dbo].[Respuestas] OFF 
-- Respuestas para la pregunta 1: ¿Quién fue el primer presidente de Estados Unidos?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(1, 1, N'George Washington', 1, NULL),
(1, 2, N'Thomas Jefferson', 0, NULL),
(1, 3, N'Abraham Lincoln', 0, NULL),
(1, 4, N'John Adams', 0, NULL);

-- Respuestas para la pregunta 2: ¿En qué año comenzó la Primera Guerra Mundial?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(2, 1, N'1914', 1, NULL),
(2, 2, N'1918', 0, NULL),
(2, 3, N'1939', 0, NULL),
(2, 4, N'1905', 0, NULL);

-- Respuestas para la pregunta 3: ¿Cuál es el nombre del antiguo imperio que ocupaba gran parte de Europa y Asia?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(3, 1, N'Imperio Romano', 0, NULL),
(3, 2, N'Imperio Bizantino', 0, NULL),
(3, 3, N'Imperio Mongol', 1, NULL),
(3, 4, N'Imperio Otomano', 0, NULL);

-- Respuestas para la pregunta 4: ¿Qué faraón construyó la Gran Pirámide de Giza?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(4, 1, N'Keops', 1, NULL),
(4, 2, N'Tutankamón', 0, NULL),
(4, 3, N'Ramsés II', 0, NULL),
(4, 4, N'Cleopatra', 0, NULL);

-- Respuestas para la pregunta 5: ¿Qué evento marcó el fin de la Edad Media?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(5, 1, N'Caída de Constantinopla', 1, NULL),
(5, 2, N'Descubrimiento de América', 0, NULL),
(5, 3, N'Invención de la imprenta', 0, NULL),
(5, 4, N'Revolución Francesa', 0, NULL);

-- Respuestas para la pregunta 6: ¿Cuál fue la principal causa de la Guerra de Secesión en los Estados Unidos?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(6, 1, N'Esclavitud', 1, NULL),
(6, 2, N'Desacuerdos religiosos', 0, NULL),
(6, 3, N'Tarifas económicas', 0, NULL),
(6, 4, N'Control de territorios', 0, NULL);

-- Respuestas para la pregunta 7: ¿Qué imperio fue conocido por sus avanzadas construcciones arquitectónicas, incluyendo Machu Picchu?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(7, 1, N'Imperio Azteca', 0, NULL),
(7, 2, N'Imperio Inca', 1, NULL),
(7, 3, N'Imperio Maya', 0, NULL),
(7, 4, N'Imperio Olmeca', 0, NULL);

-- Respuestas para la pregunta 8: ¿En qué batalla se decidieron las guerras napoleónicas?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(8, 1, N'Batalla de Trafalgar', 0, NULL),
(8, 2, N'Batalla de Leipzig', 0, NULL),
(8, 3, N'Batalla de Waterloo', 1, NULL),
(8, 4, N'Batalla de Borodinó', 0, NULL);

-- Respuestas para la pregunta 9: ¿Qué tratado puso fin a la Primera Guerra Mundial?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(9, 1, N'Tratado de París', 0, NULL),
(9, 2, N'Tratado de Versalles', 1, NULL),
(9, 3, N'Tratado de Utrecht', 0, NULL),
(9, 4, N'Tratado de Frankfurt', 0, NULL);

-- Respuestas para la pregunta 10: ¿Quién fue el líder de la Revolución Rusa de 1917?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(10, 1, N'Joseph Stalin', 0, NULL),
(10, 2, N'Vladimir Lenin', 1, NULL),
(10, 3, N'Leon Trotsky', 0, NULL),
(10, 4, N'Nikolai Bukharin', 0, NULL);

-- Respuestas para la pregunta 11: ¿Qué tratado entre el Imperio Austrohúngaro y el Reino de Italia fue firmado en 1882?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(11, 1, N'Tratado de Londres', 0, NULL),
(11, 2, N'Tratado de Viena', 0, NULL),
(11, 3, N'Tratado de la Triple Alianza', 1, NULL),
(11, 4, N'Tratado de San Stefano', 0, NULL);

-- Respuestas para la pregunta 12: ¿Qué evento histórico provocó la crisis de los misiles en Cuba en 1962?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(12, 1, N'Derrocamiento de Batista', 0, NULL),
(12, 2, N'Invasión de Bahía de Cochinos', 1, NULL),
(12, 3, N'Construcción del Muro de Berlín', 0, NULL),
(12, 4, N'Bloqueo de Berlín', 0, NULL);

-- Respuestas para la pregunta 13: ¿Cuál era el nombre del emperador japonés durante la Segunda Guerra Mundial?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(13, 1, N'Emperador Taisho', 0, NULL),
(13, 2, N'Emperador Meiji', 0, NULL),
(13, 3, N'Emperador Hirohito', 1, NULL),
(13, 4, N'Emperador Akihito', 0, NULL);

-- Respuestas para la pregunta 14: ¿Qué acuerdo de paz fue firmado en 1979 entre Egipto e Israel?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(14, 1, N'Acuerdo de Camp David', 1, NULL),
(14, 2, N'Tratado de Oslo', 0, NULL),
(14, 3, N'Tratado de Tlatelolco', 0, NULL),
(14, 4, N'Acuerdo de El Cairo', 0, NULL);

-- Respuestas para la pregunta 15: ¿Qué figura histórica es conocida como el "Líder del Norte" en la Revolución Mexicana?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(15, 1, N'Pancho Villa', 1, NULL),
(15, 2, N'Emiliano Zapata', 0, NULL),
(15, 3, N'Porfirio Díaz', 0, NULL),
(15, 4, N'Francisco I. Madero', 0, NULL);

-- Respuestas para la pregunta 16: ¿Cuál es el continente más grande en superficie?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(16, 1, N'Asia', 1, NULL),
(16, 2, N'África', 0, NULL),
(16, 3, N'América del Norte', 0, NULL),
(16, 4, N'Antártida', 0, NULL);

-- Respuestas para la pregunta 17: ¿Qué río es el más largo del mundo?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(17, 1, N'Río Amazonas', 0, NULL),
(17, 2, N'Río Nilo', 1, NULL),
(17, 3, N'Río Yangtsé', 0, NULL),
(17, 4, N'Río Misisipi', 0, NULL);

-- Respuestas para la pregunta 18: ¿Cuál es el país con más población?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(18, 1, N'India', 0, NULL),
(18, 2, N'China', 1, NULL),
(18, 3, N'Estados Unidos', 0, NULL),
(18, 4, N'Indonesia', 0, NULL);

-- Respuestas para la pregunta 19: ¿Qué océano está al este de África?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(19, 1, N'Océano Atlántico', 0, NULL),
(19, 2, N'Océano Índico', 1, NULL),
(19, 3, N'Océano Pacífico', 0, NULL),
(19, 4, N'Océano Ártico', 0, NULL);

-- Respuestas para la pregunta 20: ¿Cuál es la capital de Francia?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(20, 1, N'Roma', 0, NULL),
(20, 2, N'Madrid', 0, NULL),
(20, 3, N'París', 1, NULL),
(20, 4, N'Berlín', 0, NULL);

-- Respuestas para la pregunta 21: ¿Cuál es el país más grande en América del Sur?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(21, 1, N'Argentina', 0, NULL),
(21, 2, N'Brasil', 1, NULL),
(21, 3, N'Perú', 0, NULL),
(21, 4, N'Colombia', 0, NULL);

-- Respuestas para la pregunta 22: ¿Qué desierto es el más grande del mundo?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(22, 1, N'Desierto del Sahara', 0, NULL),
(22, 2, N'Desierto de Gobi', 0, NULL),
(22, 3, N'Desierto de Arabia', 0, NULL),
(22, 4, N'Desierto de la Antártida', 1, NULL);

-- Respuestas para la pregunta 23: ¿Cuál es el nombre del canal que conecta el Océano Atlántico con el Océano Pacífico?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(23, 1, N'Canal de Suez', 0, NULL),
(23, 2, N'Canal de Panamá', 1, NULL),
(23, 3, N'Canal de Kiel', 0, NULL),
(23, 4, N'Canal de Corinto', 0, NULL);

-- Respuestas para la pregunta 24: ¿En qué continente se encuentra el monte Kilimanjaro?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(24, 1, N'Asia', 0, NULL),
(24, 2, N'América del Sur', 0, NULL),
(24, 3, N'África', 1, NULL),
(24, 4, N'Oceanía', 0, NULL);

-- Respuestas para la pregunta 25: ¿Qué país tiene la mayor cantidad de islas?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(25, 1, N'Canadá', 0, NULL),
(25, 2, N'Noruega', 0, NULL),
(25, 3, N'Indonesia', 0, NULL),
(25, 4, N'Suecia', 1, NULL);

-- Respuestas para la pregunta 26: ¿Cuál es el punto más bajo de la superficie terrestre?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(26, 1, N'Mar Caspio', 0, NULL),
(26, 2, N'Mar Muerto', 1, NULL),
(26, 3, N'Fosa de las Marianas', 0, NULL),
(26, 4, N'Lago Baikal', 0, NULL);

-- Respuestas para la pregunta 27: ¿Qué país tiene el mayor número de lenguas oficiales?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(27, 1, N'India', 1, NULL),
(27, 2, N'Sudáfrica', 0, NULL),
(27, 3, N'Canadá', 0, NULL),
(27, 4, N'Suiza', 0, NULL);

-- Respuestas para la pregunta 28: ¿Cuál es la ciudad más grande en términos de área metropolitana en el mundo?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(28, 1, N'Nueva York', 0, NULL),
(28, 2, N'México D.F.', 0, NULL),
(28, 3, N'Tokio', 1, NULL),
(28, 4, N'Shanghái', 0, NULL);

-- Respuestas para la pregunta 29: ¿Cuál es el nombre del mayor lago de agua dulce en África?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(29, 1, N'Lago Malawi', 0, NULL),
(29, 2, N'Lago Tanganica', 0, NULL),
(29, 3, N'Lago Victoria', 1, NULL),
(29, 4, N'Lago Chad', 0, NULL);

-- Respuestas para la pregunta 30: ¿Qué país tiene el mayor territorio de tundra en el mundo?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(30, 1, N'Canadá', 0, NULL),
(30, 2, N'Rusia', 1, NULL),
(30, 3, N'Noruega', 0, NULL),
(30, 4, N'Alaska (EE.UU.)', 0, NULL);

-- Respuestas para la pregunta 31: ¿Qué planeta es el más cercano al Sol?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(31, 1, N'Mercurio', 1, NULL),
(31, 2, N'Venus', 0, NULL),
(31, 3, N'Tierra', 0, NULL),
(31, 4, N'Marte', 0, NULL);

-- Respuestas para la pregunta 32: ¿Qué elemento químico tiene el símbolo O?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(32, 1, N'Hidrógeno', 0, NULL),
(32, 2, N'Helio', 0, NULL),
(32, 3, N'Oxígeno', 1, NULL),
(32, 4, N'Nitrógeno', 0, NULL);

-- Respuestas para la pregunta 33: ¿Cuál es el órgano más grande del cuerpo humano?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(33, 1, N'Corazón', 0, NULL),
(33, 2, N'Hígado', 0, NULL),
(33, 3, N'Piel', 1, NULL),
(33, 4, N'Pulmones', 0, NULL);

-- Respuestas para la pregunta 34: ¿Cuál es el proceso por el cual las plantas producen su alimento?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(34, 1, N'Respiración', 0, NULL),
(34, 2, N'Fotosíntesis', 1, NULL),
(34, 3, N'Fermentación', 0, NULL),
(34, 4, N'Quimiotrofia', 0, NULL);

-- Respuestas para la pregunta 35: ¿Cuántos cromosomas tiene una célula humana típica?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(35, 1, N'23', 0, NULL),
(35, 2, N'46', 1, NULL),
(35, 3, N'44', 0, NULL),
(35, 4, N'48', 0, NULL);

-- Respuestas para la pregunta 36: ¿Qué tipo de célula tiene una pared celular?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(36, 1, N'Célula animal', 0, NULL),
(36, 2, N'Célula vegetal', 1, NULL),
(36, 3, N'Célula nerviosa', 0, NULL),
(36, 4, N'Célula muscular', 0, NULL);

-- Respuestas para la pregunta 37: ¿Cuál es la función principal del sistema respiratorio?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(37, 1, N'Digestión de alimentos', 0, NULL),
(37, 2, N'Circulación sanguínea', 0, NULL),
(37, 3, N'Intercambio de gases', 1, NULL),
(37, 4, N'Producción de energía', 0, NULL);

-- Respuestas para la pregunta 38: ¿Qué es un agujero negro?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(38, 1, N'Un planeta sin atmósfera', 0, NULL),
(38, 2, N'Una estrella colapsada con una fuerte gravedad', 1, NULL),
(38, 3, N'Una nube de gas en el espacio', 0, NULL),
(38, 4, N'Un cometa gigante', 0, NULL);

-- Respuestas para la pregunta 39: ¿Qué descubrimiento hizo Gregor Mendel?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(39, 1, N'Ley de la gravedad', 0, NULL),
(39, 2, N'Teoría de la evolución', 0, NULL),
(39, 3, N'Leyes de la herencia genética', 1, NULL),
(39, 4, N'Ley de los gases ideales', 0, NULL);

-- Respuestas para la pregunta 40: ¿Cómo se llama la teoría que explica el origen del universo?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(40, 1, N'Teoría de la relatividad', 0, NULL),
(40, 2, N'Teoría del Big Bang', 1, NULL),
(40, 3, N'Teoría de cuerdas', 0, NULL),
(40, 4, N'Teoría del caos', 0, NULL);

-- Respuestas para la pregunta 41: ¿Qué es el bosón de Higgs?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(41, 1, N'Una partícula que da masa a otras partículas', 1, NULL),
(41, 2, N'Una forma de energía oscura', 0, NULL),
(41, 3, N'Un tipo de átomo de hidrógeno', 0, NULL),
(41, 4, N'Una molécula que transporta oxígeno', 0, NULL);

-- Respuestas para la pregunta 42: ¿Qué es el ADN y cuál es su función?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(42, 1, N'Una proteína que transporta grasas', 0, NULL),
(42, 2, N'Una molécula que almacena información genética', 1, NULL),
(42, 3, N'Un componente de la membrana celular', 0, NULL),
(42, 4, N'Un tipo de virus', 0, NULL);

-- Respuestas para la pregunta 43: ¿Cuál es el principio de incertidumbre de Heisenberg?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(43, 1, N'La velocidad de la luz es constante en el vacío', 0, NULL),
(43, 2, N'No es posible determinar simultáneamente la posición y el momento exactos de una partícula', 1, NULL),
(43, 3, N'La energía no puede ser creada ni destruida', 0, NULL),
(43, 4, N'Los átomos están formados por partículas más pequeñas', 0, NULL);

-- Respuestas para la pregunta 44: ¿Qué técnica se utiliza para secuenciar el genoma?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(44, 1, N'Electroforesis', 0, NULL),
(44, 2, N'Reacción en cadena de la polimerasa (PCR)', 0, NULL),
(44, 3, N'Secuenciación de ADN', 1, NULL),
(44, 4, N'Espectrometría de masas', 0, NULL);

-- Respuestas para la pregunta 45: ¿Qué es la materia oscura y cómo se detecta?
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES 
(45, 1, N'Es un tipo de materia visible detectada con telescopios', 0, NULL),
(45, 2, N'Es una forma de energía que causa la expansión del universo', 0, NULL),
(45, 3, N'Es una forma de materia que no emite luz y se detecta por sus efectos gravitacionales', 1, NULL),
(45, 4, N'Es un gas interestelar que forma estrellas', 0, NULL);

-- Respuestas para la pregunta 46: "¿Cuál es el deporte más popular del mundo?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(46, 1, N'Fútbol', 1, NULL),  -- Correcta
(46, 2, N'Béisbol', 0, NULL),
(46, 3, N'Tenis', 0, NULL),
(46, 4, N'Baloncesto', 0, NULL);

-- Respuestas para la pregunta 47: "¿En qué deporte se utiliza un balón ovalado?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(47, 1, N'Rugby', 1, NULL),  -- Correcta
(47, 2, N'Fútbol', 0, NULL),
(47, 3, N'Tenis', 0, NULL),
(47, 4, N'Cricket', 0, NULL);

-- Respuestas para la pregunta 48: "¿Cuántos jugadores hay en un equipo de fútbol?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(48, 1, N'11', 1, NULL),  -- Correcta
(48, 2, N'9', 0, NULL),
(48, 3, N'7', 0, NULL),
(48, 4, N'15', 0, NULL);

-- Respuestas para la pregunta 49: "¿Cuál es el nombre del torneo de tenis más famoso?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(49, 1, N'Wimbledon', 1, NULL),  -- Correcta
(49, 2, N'Roland Garros', 0, NULL),
(49, 3, N'US Open', 0, NULL),
(49, 4, N'Australian Open', 0, NULL);

-- Respuestas para la pregunta 50: "¿Qué país ganó la Copa Mundial de la FIFA en 2018?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(50, 1, N'Francia', 1, NULL),  -- Correcta
(50, 2, N'Alemania', 0, NULL),
(50, 3, N'Brasil', 0, NULL),
(50, 4, N'Argentina', 0, NULL);

-- Respuestas para la pregunta 51: "¿Qué deporte es conocido como 'el rey de los deportes'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(51, 1, N'Fútbol', 1, NULL),  -- Correcta
(51, 2, N'Baloncesto', 0, NULL),
(51, 3, N'Cricket', 0, NULL),
(51, 4, N'Hockey', 0, NULL);

-- Respuestas para la pregunta 52: "¿Qué país ha ganado más medallas en los Juegos Olímpicos de verano?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(52, 1, N'Estados Unidos', 1, NULL),  -- Correcta
(52, 2, N'China', 0, NULL),
(52, 3, N'Rusia', 0, NULL),
(52, 4, N'Alemania', 0, NULL);

-- Respuestas para la pregunta 53: "¿Cuál es el récord de más goles en un solo partido de la NBA?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(53, 1, N'Wilt Chamberlain - 100 puntos', 1, NULL),  -- Correcta
(53, 2, N'Kobe Bryant - 81 puntos', 0, NULL),
(53, 3, N'Michael Jordan - 69 puntos', 0, NULL),
(53, 4, N'LeBron James - 61 puntos', 0, NULL);

-- Respuestas para la pregunta 54: "¿Qué deporte se juega en el Tour de Francia?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(54, 1, N'Ciclismo', 1, NULL),  -- Correcta
(54, 2, N'Atletismo', 0, NULL),
(54, 3, N'Motociclismo', 0, NULL),
(54, 4, N'Natación', 0, NULL);

-- Respuestas para la pregunta 55: "¿Quién es el máximo goleador en la historia del fútbol profesional?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(55, 1, N'Cristiano Ronaldo', 1, NULL),  -- Correcta
(55, 2, N'Lionel Messi', 0, NULL),
(55, 3, N'Pelé', 0, NULL),
(55, 4, N'Gerd Müller', 0, NULL);

-- Respuestas para la pregunta 56: "¿Qué atleta posee el récord mundial en los 100 metros planos?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(56, 1, N'Usain Bolt', 1, NULL),  -- Correcta
(56, 2, N'Carl Lewis', 0, NULL),
(56, 3, N'Tyson Gay', 0, NULL),
(56, 4, N'Justin Gatlin', 0, NULL);

-- Respuestas para la pregunta 57: "¿Cuál es el deporte que combina el esquí y el tiro con rifle?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(57, 1, N'Biathlon', 1, NULL),  -- Correcta
(57, 2, N'Pentatlón moderno', 0, NULL),
(57, 3, N'Triatlón', 0, NULL),
(57, 4, N'Decatlón', 0, NULL);

-- Respuestas para la pregunta 58: "¿Qué jugador tiene más títulos de Grand Slam en tenis?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(58, 1, N'Novak Djokovic', 1, NULL),  -- Correcta
(58, 2, N'Rafael Nadal', 0, NULL),
(58, 3, N'Roger Federer', 0, NULL),
(58, 4, N'Pete Sampras', 0, NULL);

-- Respuestas para la pregunta 59: "¿Qué equipo ganó la Copa Mundial de Rugby en 2015?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(59, 1, N'Nueva Zelanda', 1, NULL),  -- Correcta
(59, 2, N'Australia', 0, NULL),
(59, 3, N'Inglaterra', 0, NULL),
(59, 4, N'Sudáfrica', 0, NULL);

-- Respuestas para la pregunta 60: "¿Qué deporte es conocido por su competición en el evento 'Ironman'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(60, 1, N'Triatlón', 1, NULL),  -- Correcta
(60, 2, N'Maratón', 0, NULL),
(60, 3, N'Nadación', 0, NULL),
(60, 4, N'Ciclismo', 0, NULL);

-- Respuestas para la pregunta 61: "¿Quién pintó la Mona Lisa?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(61, 1, N'Leonardo da Vinci', 1, NULL),  -- Correcta
(61, 2, N'Vincent van Gogh', 0, NULL),
(61, 3, N'Pablo Picasso', 0, NULL),
(61, 4, N'Claude Monet', 0, NULL);

-- Respuestas para la pregunta 62: "¿En qué país se encuentra el Museo del Louvre?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(62, 1, N'Francia', 1, NULL),  -- Correcta
(62, 2, N'Italia', 0, NULL),
(62, 3, N'España', 0, NULL),
(62, 4, N'Alemania', 0, NULL);

-- Respuestas para la pregunta 63: "¿Qué estilo artístico se caracteriza por el uso de colores vivos y líneas expresivas?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(63, 1, N'Fauvismo', 1, NULL),  -- Correcta
(63, 2, N'Cubismo', 0, NULL),
(63, 3, N'Impresionismo', 0, NULL),
(63, 4, N'Surrealismo', 0, NULL);

-- Respuestas para la pregunta 64: "¿Qué pintor es famoso por sus 'Girasoles'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(64, 1, N'Vincent van Gogh', 1, NULL),  -- Correcta
(64, 2, N'Paul Cézanne', 0, NULL),
(64, 3, N'Gustav Klimt', 0, NULL),
(64, 4, N'Edvard Munch', 0, NULL);

-- Respuestas para la pregunta 65: "¿Quién es el autor de 'El Grito'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(65, 1, N'Edvard Munch', 1, NULL),  -- Correcta
(65, 2, N'Pablo Picasso', 0, NULL),
(65, 3, N'Francisco Goya', 0, NULL),
(65, 4, N'Claude Monet', 0, NULL);

-- Respuestas para la pregunta 66: "¿Qué movimiento artístico se originó en Francia a finales del siglo XIX?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(66, 1, N'Impresionismo', 1, NULL),  -- Correcta
(66, 2, N'Cubismo', 0, NULL),
(66, 3, N'Surrealismo', 0, NULL),
(66, 4, N'Expresionismo', 0, NULL);

-- Respuestas para la pregunta 67: "¿Cuál es el nombre del pintor surrealista conocido por sus relojes derretidos?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(67, 1, N'Salvador Dalí', 1, NULL),  -- Correcta
(67, 2, N'Joan Miró', 0, NULL),
(67, 3, N'Rene Magritte', 0, NULL),
(67, 4, N'Marcel Duchamp', 0, NULL);

-- Respuestas para la pregunta 68: "¿Qué técnica utiliza el artista para crear una imagen con manchas de tinta?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(68, 1, N'Técnica del grabado', 1, NULL),  -- Correcta
(68, 2, N'Técnica del óleo', 0, NULL),
(68, 3, N'Acuarela', 0, NULL),
(68, 4, N'Técnica del fresco', 0, NULL);

-- Respuestas para la pregunta 69: "¿Qué corriente artística se caracteriza por la representación de la realidad tal como es?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(69, 1, N'Realismo', 1, NULL),  -- Correcta
(69, 2, N'Impresionismo', 0, NULL),
(69, 3, N'Cubismo', 0, NULL),
(69, 4, N'Surrealismo', 0, NULL);

-- Respuestas para la pregunta 70: "¿Quién pintó 'Las Meninas'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(70, 1, N'Diego Velázquez', 1, NULL),  -- Correcta
(70, 2, N'Francisco de Goya', 0, NULL),
(70, 3, N'El Greco', 0, NULL),
(70, 4, N'Pablo Picasso', 0, NULL);

-- Respuestas para la pregunta 71: "¿Qué artista es conocido por su obra 'El Jardín de las Delicias'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(71, 1, N'Hieronymus Bosch', 1, NULL),  -- Correcta
(71, 2, N'Caravaggio', 0, NULL),
(71, 3, N'Rafael', 0, NULL),
(71, 4, N'Michelangelo', 0, NULL);

-- Respuestas para la pregunta 72: "¿Cuál es el estilo artístico que se caracteriza por la representación abstracta de la realidad?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(72, 1, N'Cubismo', 1, NULL),  -- Correcta
(72, 2, N'Realismo', 0, NULL),
(72, 3, N'Impresionismo', 0, NULL),
(72, 4, N'Surrealismo', 0, NULL);

-- Respuestas para la pregunta 73: "¿Qué pintor es famoso por sus retratos de la realeza española en el siglo XVII?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(73, 1, N'Diego Velázquez', 1, NULL),  -- Correcta
(73, 2, N'El Greco', 0, NULL),
(73, 3, N'Francisco de Zurbarán', 0, NULL),
(73, 4, N'Murillo', 0, NULL);

-- Respuestas para la pregunta 74: "¿Qué tipo de arte es el 'Pop Art'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(74, 1, N'Contemporáneo', 1, NULL),  -- Correcta
(74, 2, N'Renacentista', 0, NULL),
(74, 3, N'Gótico', 0, NULL),
(74, 4, N'Barroco', 0, NULL);

-- Respuestas para la pregunta 75: "¿Quién es el autor de 'La Persistencia de la Memoria'?"
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES
(75, 1, N'Salvador Dalí', 1, NULL),  -- Correcta
(75, 2, N'Pablo Picasso', 0, NULL),
(75, 3, N'Joan Miró', 0, NULL),
(75, 4, N'Rene Magritte', 0, NULL);


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
