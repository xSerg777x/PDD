USE [PDD]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[QuestionId] [int] NOT NULL,
	[Right] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[TestId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestResultItems]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResultItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[AnswerId] [int] NULL,
	[TestResultId] [int] NULL,
 CONSTRAINT [PK_dbo.TestResultItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestResults]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NULL,
	[Date] [datetime] NOT NULL,
	[TestID] [int] NULL,
 CONSTRAINT [PK_dbo.TestResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tests]    Script Date: 23.04.2016 0:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (4, N'Непосредственно перед поворотом или разворотом', 4, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (5, N'Заблаговременно до начала выполнения маневра', 4, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (6, N' По своему усмотрению', 4, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (7, N'Непосредственно перед началом маневра', 5, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (8, N'Только после окончания маневра', 5, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (9, N'Подать звуковой сигнал', 6, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (10, N' Включить аварийную сигнализацию', 6, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (11, N'Прибегнуть к помощи других лиц', 6, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (12, N'Непосредственно перед началом маневра', 7, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (13, N' Сразу же после завершения маневра', 7, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (14, N'В процессе выполнения маневра', 7, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (15, N' На перекрестках', 8, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (16, N'На дорогах с односторонним движением', 8, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (17, N'На пешеходных переходах', 8, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (18, N' В местах остановок маршрутных транспортных средств', 8, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (19, N'Да', 9, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (20, N'Нет', 9, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (21, N'Да, только при наличии в непосредственной близости пешеходов', 9, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (22, N'Да', 10, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (23, N'Нет', 10, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (24, N' Да, но только при наличии в непосредственной близости других транспортных средств', 10, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (25, N' Включить левые указатели поворота, затем приступить к маневру', 11, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (26, N'Убедиться, что Вас не обгоняют, затем включить левые указатели поворота и приступить к маневру', 11, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (27, N' Только механическим транспортным средствам', 12, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (28, N' Только маршрутным транспортным средствам', 12, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (29, N'Любым транспортным средствам и пешеходам', 12, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (30, N'Да', 13, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (31, N' Да, но только при завершении обгона', 13, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (32, N'Нет', 13, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (33, N'Все автобусы', 14, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (34, N'Автобусы, троллейбусы и трамваи, предназначенные для перевозки людей и движущиеся по установленному маршруту с обозначенными местами остановок', 14, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (35, N'Любые транспортные средства, перевозящие пассажиров', 14, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (36, N'Максимально допустимая для перевозки масса груза, установленная предприятием-изготовителем', 15, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (37, N'Масса снаряженного транспортного средства без учета массы водителя, пассажиров и груза, установленная предприятием-изготовителем', 15, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (38, N'Масса снаряженного транспортного средства с грузом, водителем и пассажирами, установленная предприятием-изготовителем в качестве максимально допустимой', 15, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (39, N'Остановившись непосредственно перед пешеходным переходом, чтобы уступить дорогу пешеходу', 16, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (40, N'Остановившись на проезжей части из-за технической неисправности автомобиля', 16, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (41, N'В обоих перечисленных случаях', 16, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (42, N' Видимость дороги, ограниченная рельефом местности, геометрическими параметрами дороги, растительностью, строениями, сооружениями или другими объектами', 17, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (43, N'Видимость дороги менее 300 м в условиях тумана, дождя, снегопада, а также в сумерки', 17, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (44, N'Видимость дороги менее 150 м в ночное время', 17, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (45, N'Дефект проезжей части', 18, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (46, N'Посторонний предмет', 18, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (47, N'Неисправное или поврежденное транспортное средство', 18, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (48, N' Транспортное средство, остановившееся на этой полосе из-за образования затора', 18, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (49, N'Являются', 19, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (50, N'Являются только обочины', 19, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (51, N' Не являются', 19, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (52, N' Опережение одного или нескольких транспортных средств, связанное с выездом из занимаемой полосы', 20, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (53, N'Опережение одного или нескольких транспортных средств, связанное с выездом на полосу (сторону проезжей части), предназначенную для встречного движения, и последующим возвращением на ранее занимаемую полосу (сторону проезжей части)', 20, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (54, N'Любое опережение одного или нескольких транспортных средств', 20, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (55, N' Вы должны обязательно остановиться, чтобы пропустить других участников движения', 21, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (56, N' Вы не должны возобновлять или продолжать движение, осуществлять какой-либо маневр, если это может вынудить других участников движения, имеющих по отношению к Вам преимущество, изменить направление движения или скорость', 21, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (57, N'Вы должны остановиться только при наличии дорожного знака «Уступите дорогу»', 21, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (58, N'Видимость дороги менее 100 м вблизи опасных поворотов и переломов продольного профиля дороги', 22, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (59, N'Видимость дороги менее 300 м в условиях тумана, дождя, снегопада и т.п., а также в сумерки', 22, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (60, N'Видимость дороги менее 150 м в ночное время', 22, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (61, N' Дорога с твердым покрытием по отношению к грунтовой дороге', 23, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (62, N'Дорога с тремя или более полосами движения по отношению к дороге с двумя полосами', 23, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (63, N' Дорога с асфальтобетонным покрытием по отношению к дороге, покрытой брусчаткой', 23, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (64, N'Только с места установки дорожного знака с названием населенного пункта на белом фоне', 24, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (65, N'С места установки дорожного знака с названием населенного пункта на белом или синем фоне', 24, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (66, N' В начале застроенной территории, непосредственно прилегающей к дороге', 24, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (67, N'Установленные на переносной стойке', 25, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (68, N' Имеющие желтый фон и установленные в местах производства дорожных работ', 25, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (69, N' Все перечисленные', 25, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (70, N'Предупреждает о приближении к стоп-линии перед регулируемым перекрестком', 26, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (71, N'Предупреждает о приближении к стоп-линии и знаку «Движение без остановки запрещено»', 26, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (72, N'Предупреждает о приближении к знаку «Уступите дорогу»', 26, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (73, N'Требованиями линий разметки', 27, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (74, N' Требованиями дорожных знаков', 27, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (75, N'Правила эту ситуацию не регламентируют', 27, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (76, N'Правила эту ситуацию не регламентируют', 28, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (77, N'Необходимо руководствоваться белыми линиями', 28, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (78, N'Необходимо руководствоваться оранжевыми линиями', 28, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (79, N'Жёлтый', 29, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (80, N'Оранжевый', 29, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (81, N'Допускаются оба указанных цвета', 29, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (82, N' Разрешается только при выезде из дворов и других прилегающих территорий', 30, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (83, N'Разрешается только при обгоне', 30, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (84, N'Разрешается только при интенсивном движении', 30, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (85, N'Не разрешается', 30, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (86, N'Предупреждает о неисправности светофора', 31, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (87, N' Разрешает движение и информирует о том, что вскоре будет включен запрещающий сигнал', 31, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (88, N'Запрещает дальнейшее движение', 31, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (89, N'Разрешается', 32, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (90, N'Разрешается, только если Вы намерены проехать перекресток в прямом направлении', 32, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (91, N'Не разрешается', 32, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (92, N'Не разрешается', 33, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (93, N'Разрешается, только если Вы поворачиваете направо', 33, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (94, N'Разрешается', 33, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (95, N'Вы должны немедленно остановиться', 34, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (96, N'Вы должны ускорить движение', 34, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (97, N'Сигнал подается для привлечения внимания участников движения', 34, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (98, N'Предупреждает о неисправности светофора', 35, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (99, N'Разрешает движение и информирует о наличии нерегулируемого перекрестка или пешеходного перехода', 35, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (100, N'Запрещает дальнейшее движение', 35, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (101, N'Движение разрешается с особой осторожностью', 36, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (102, N'Движение запрещено', 36, 1)
GO
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (103, N'Светофорная сигнализация неисправна', 36, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (104, N'Требованиями дорожных знаков', 37, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (105, N'Значениями сигналов светофора', 37, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (106, N'Указаниями регулировщика', 37, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (107, N'Неисправна светофорная сигнализация', 38, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (108, N'Вскоре будет включен зеленый сигнал', 38, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (109, N'Вскоре будет включен красный сигнал', 38, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (110, N'Предельные ограничения скорости, установленные для Вашего транспортного средства', 39, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (111, N'Условия видимости', 39, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (112, N'Только для остановки перед перекрестком или пешеходным переходом, когда после зеленого сигнала неожиданно для Вас включился желтый сигнал светофора', 40, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (113, N'Только для предотвращения дорожно-транспортного происшествия', 40, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (114, N' В обоих перечисленных случаях', 40, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (115, N'Разрешается', 41, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (116, N'Разрешается, если Вы не создадите помех другим транспортным средствам', 41, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (117, N' Запрещается', 41, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (118, N'Только при выполнении обгона', 42, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (119, N'Только если установлены дорожные знаки, разрешающие движение со скоростью более 60 км/ч', 42, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (120, N'В обоих перечисленных случаях', 42, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (121, N'Предельные ограничения скорости, установленные для Вашего транспортного средства', 43, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (122, N'Интенсивность движения', 43, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (123, N'Только если полоса встречного движения свободна на достаточном для обгона расстоянии', 44, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (124, N'Только если Вас никто не обгоняет', 44, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (125, N'В случае, если выполнены оба условия', 44, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (126, N'Он должен уступить дорогу автомобилю, завершающему обгон', 45, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (127, N'Он не должен препятствовать обгону путем повышения скорости движения или иными действиями', 45, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (128, N'Разрешен только на нерегулируемых перекрестках', 46, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (129, N'Разрешен только на перекрестках неравнозначных дорог при движении по главной дороге', 46, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (130, N'Запрещен во всех случаях', 46, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (131, N'Обгон запрещен только на переезде', 47, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (132, N'Обгон запрещен на переезде и на расстоянии 100 м до него', 47, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (133, N'Обгон запрещен на переезде и на расстоянии 100 м до и после него', 47, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (134, N'Разрешен', 48, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (135, N'Запрещен', 48, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (136, N'Запрещен', 49, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (137, N'Запрещен только в конце подъема', 49, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (138, N' Разрешен', 49, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (139, N'Не запрещен', 50, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (140, N'Запрещен', 50, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (141, N'Да', 51, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (142, N'Запрещен только при наличии на нем пешеходов', 51, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (143, N'Не запрещен', 51, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (144, N'Снизить скорость движения', 52, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (145, N'Двигаться с прежней или большей скоростью', 52, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (146, N'Двигаться с прежней или меньшей скоростью', 52, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (147, N' Запрещен только под мостами, путепроводами и эстакадами', 53, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (148, N'Запрещен', 53, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (149, N'Разрешен', 53, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (150, N'Только на хорошо просматриваемом месте на обочине', 54, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (151, N'В любом месте на обочине', 54, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (152, N'Только на предусмотренных для этого площадках или за пределами дороги', 54, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (153, N'В любом из перечисленных мест', 54, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (154, N'Знаков приоритета', 55, 1)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (155, N'Запрещающих знаков', 55, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (156, N' Предписывающих знаков', 55, 0)
INSERT [dbo].[Answers] ([id], [Name], [QuestionId], [Right]) VALUES (157, N'Всех перечисленных', 55, 0)
SET IDENTITY_INSERT [dbo].[Answers] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([Id], [LastName], [FirstName], [Patronymic]) VALUES (1, N'Иванов', N'Иван', N'Иванович')
SET IDENTITY_INSERT [dbo].[Persons] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (4, N'Когда Вы должны включить указатели поворота?', NULL, 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (5, N'Когда может быть прекращена подача сигнала рукой о повороте?', NULL, 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (6, N'Для обеспечения безопасности при выезде задним ходом с места стоянки, имеющего ограниченную видимость, необходимо:', NULL, 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (7, N'Когда должна быть прекращена подача сигнала указателями поворота?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (8, N'В каких местах водителю разрешается движение задним ходом?', NULL, 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (9, N'Обязаны ли Вы подавать сигналы указателями поворота при начале движения в жилой зоне, обозначенной соответствующим знаком?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (10, N'Должны ли Вы подавать сигналы указателями поворота при маневрировании на территории автостоянки или АЗС?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (11, N'Как Вы должны действовать, если намереваетесь повернуть налево или выполнить разворот на двухполосной дороге?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (12, N'Выезжая с прилегающей территории, Вы обязаны уступить дорогу:', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (13, N'Дает ли Вам преимущество в движении подача сигнала указателями поворота?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (14, N'Какие транспортные средства по Правилам относятся к маршрутным транспортным средствам?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (15, N'Что называется разрешенной максимальной массой транспортного средства?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (16, N'В каком случае Вы совершите вынужденную остановку?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (17, N'Что означает термин «Ограниченная видимость»?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (18, N'Какой неподвижный объект, не позволяющий продолжить движение по полосе, не относится к понятию «Препятствие»?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (19, N'Являются ли тротуары и обочины частью дороги?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (20, N'Что означает термин «обгон»?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (21, N'Что означает требование уступить дорогу?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (22, N'Что означает термин «Недостаточная видимость»?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (23, N'Какая дорога является главной на перекрестке?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (24, N'Где начинают действовать требования Правил, относящиеся к населенным пунктам?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (25, N'Какие из предупреждающих и запрещающих знаков являются временными?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (26, N'Что означает разметка в виде надписи «СТОП» на проезжей части?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (27, N'Чем Вы должны руководствоваться, если значения дорожных знаков и линий горизонтальной разметки противоречат друг другу?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (28, N'Чем Вы должны руководствоваться, если нанесенные на проезжей части белые и оранжевые линии разметки противоречат друг другу?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (29, N'Какой цвет имеет временная горизонтальная разметка?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (30, N'Разрешается ли Вам пересекать двойную сплошную линию продольной разметки?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (31, N'Что означает мигание зеленого сигнала светофора?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (32, N'Разрешается ли Вам продолжить движение, если при включении желтого сигнала светофора после зеленого Вы можете остановиться перед перекрестком, только применив экстренное торможение?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (33, N'Разрешается ли Вам продолжить движение, если регулировщик поднял руку вверх после того, как Вы въехали на перекресток?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (34, N'Какое значение имеет сигнал свистком, подаваемый регулировщиком?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (35, N'Что означает мигание желтого сигнала светофора?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (36, N'Красный мигающий сигнал или два попеременно мигающих красных сигнала светофора, установленного на железнодорожном переезде, означают:', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (37, N'Чем Вы должны руководствоваться, если указания регулировщика противоречат сигналам светофора и значениям дорожных знаков?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (38, N'Что означает сочетание красного и желтого сигналов светофора?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (39, N'Что должно иметь для Вас решающее значение при выборе скорости движения в темное время суток?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (40, N'В каком случае Вы можете прибегнуть к резкому торможению?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (41, N'Разрешается ли Вам двигаться со слишком малой скоростью?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (42, N'В каком случае Вы имеете право двигаться в населенном пункте со скоростью более 60 км/ч?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (43, N'Что должно иметь для Вас решающее значение при выборе скорости движения в плотном потоке транспортных средств?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (44, N'В каком случае Вы можете начать обгон, если такой маневр на данном участке дороги не запрещен?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (45, N'Какие требования предъявляются к водителю обгоняемого транспортного средства?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (46, N'Разрешен ли на двухполосной дороге обгон на перекрестках?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (47, N'Какие ограничения, относящиеся к обгону, действуют на железнодорожных переездах и вблизи них?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (48, N'Разрешен ли обгон на регулируемых перекрестках?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (49, N'Разрешен ли обгон на подъеме?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (50, N'Запрещен ли обгон в тоннелях?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (51, N'Запрещен ли обгон на пешеходном переходе?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (52, N'Водитель обгоняемого транспортного средства обязан:', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (53, N'Запрещен ли обгон на мостах, путепроводах, эстакадах и под ними?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (54, N'Где разрешается стоянка в целях длительного отдыха или ночлега на дорогах вне населенного пункта?', N'', 1)
INSERT [dbo].[Questions] ([id], [Name], [Description], [TestId]) VALUES (55, N'Значения каких дорожных знаков отменяются сигналами светофора?', N'', 1)
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Tests] ON 

INSERT [dbo].[Tests] ([id], [Description]) VALUES (1, N'Дорожные знаки')
SET IDENTITY_INSERT [dbo].[Tests] OFF
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Answers_dbo.Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_dbo.Answers_dbo.Questions_QuestionId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Questions_dbo.Tests_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_dbo.Questions_dbo.Tests_TestId]
GO
ALTER TABLE [dbo].[TestResultItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TestResultItems_dbo.Answers_AnswerId] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answers] ([id])
GO
ALTER TABLE [dbo].[TestResultItems] CHECK CONSTRAINT [FK_dbo.TestResultItems_dbo.Answers_AnswerId]
GO
ALTER TABLE [dbo].[TestResultItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TestResultItems_dbo.Questions_QuestionID] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Questions] ([id])
GO
ALTER TABLE [dbo].[TestResultItems] CHECK CONSTRAINT [FK_dbo.TestResultItems_dbo.Questions_QuestionID]
GO
ALTER TABLE [dbo].[TestResultItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TestResultItems_dbo.TestResults_TestResultId] FOREIGN KEY([TestResultId])
REFERENCES [dbo].[TestResults] ([Id])
GO
ALTER TABLE [dbo].[TestResultItems] CHECK CONSTRAINT [FK_dbo.TestResultItems_dbo.TestResults_TestResultId]
GO
ALTER TABLE [dbo].[TestResults]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TestResults_dbo.People_PersonID] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Persons] ([Id])
GO
ALTER TABLE [dbo].[TestResults] CHECK CONSTRAINT [FK_dbo.TestResults_dbo.People_PersonID]
GO
ALTER TABLE [dbo].[TestResults]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TestResults_dbo.Tests_TestID] FOREIGN KEY([TestID])
REFERENCES [dbo].[Tests] ([id])
GO
ALTER TABLE [dbo].[TestResults] CHECK CONSTRAINT [FK_dbo.TestResults_dbo.Tests_TestID]
GO
