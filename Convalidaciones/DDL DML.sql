drop database Escuelas3;
 CREATE database Escuelas3;
use Escuelas3;



-- clave y nombre-materia
create table Especialidad
( claveE char(25),
  Nombre char(60),
  primary key ( claveE )
  );

  create table Materia
  (Clave char (25),
   NombreM char(80),
   primary key (Clave)
   );

   Create table convalidaciones
   (claveEC char (25),
   ClaveC char (25),
   Foreign key (ClaveEC) references  Especialidad  (claveE),
   Foreign key (ClaveC) references  Materia  (Clave));


   insert into Especialidad values ('1','Desarrollo de Aplicaciones Empresariales');
   insert into Especialidad values ('2','Redes Convergentes');
   insert into Especialidad values ('3','Ingenieria en Gestion Empresarial');
   insert into Especialidad values ('4','ingenieria en Electromecanimca');
   insert into Especialidad values ('5','Ingenieria en Logistica');
   insert into Especialidad values ('6','Ingenieria en Electronica');
   insert into Especialidad values ('7','Ingeniería en Tecnologías de la Información y Comunicaciones');
   insert into Especialidad values ('8','Ingeniería Mecatrónica');
   select * from Especialidad;

   -- Desarrollo de Aplicaciones Empresariales
   -- 1
   insert into Materia values ('ACF-0901','Cálculo Diferencial');
   insert into Materia values ('AED-1285','Fundamentos de Programación');
   insert into Materia values ('ACA-0907','Taller de Ética');
   insert into Materia values ('AEF-1041','Matemáticas Discretas');
   insert into Materia values ('SCH-1024','Taller de Administración');										
   insert into Materia values ('ACC-0906','Fundamentos de Investigación');

   -- 2
   insert into Materia values ('ACF-0902','Cálculo Integral');
   insert into Materia values ('ACF-0903','Algebra Lineal');
   insert into Materia values ('AED-1286 ','Programación orientada a objetos');
   insert into Materia values ('AEC-1008','Contabilidad Financiera');
   insert into Materia values ('AEC-1058','Química');
   insert into Materia values ('AEF-1052','probabilidad y Estadística');

   -- 3
   insert into Materia values ('ACF-0904','Cálculo Vectorial');
   insert into Materia values ('SCC-1013','Investigación de Operaciones"');
   insert into Materia values ('AED-1026','Estructura de Datos');
   insert into Materia values ('ACC0906','Cultura Empresarial');
   insert into Materia values ('ACD-0908','Desarrollo Sustentable');
   insert into Materia values ('SCF-1006','Física General');

   -- 4
   insert into  Materia values  ('ACF-0905','Ecuaciones Diferenciales');
   insert into  Materia values  ('AEF-1031','Fundamentos de Bases de Datos');
   insert into  Materia values  ('SCD-1027','Tópicos Avanzados de Programación');
   insert into  Materia values  ('SCD-1022','Simulación');
   insert into  Materia values  ('SCC-1017','Métodos Numéricos');
   insert into  Materia values  ('SCD-1018','Principios Eléctricos y Aplicaciones Digitales');
   
   -- 5
   insert into Materia values   ('SCC-1007','Fundamentos de Ingeniería de Software');
   insert into Materia values   ('SCA-1025','Taller de bases de datos');
   insert into Materia values   ('AEC-1061','Sistemas Operativos');
   insert into Materia values   ('SCC-1010','Graficación');
   insert into Materia values   ('AEC-1034','Fundamentos de Telecomunicaciones');
   insert into Materia values   ('SCD-1003','Arquitectura de Computadoras');

   -- 6
   insert into Materia values   ('SCD-1011','Ingeniería de Software');
   insert into Materia values   ('SCB-1001','Administración de Bases de Datos');
   insert into Materia values   ('SCD-1015','Lenguajes y Autómatas I');
   insert into Materia values   ('SCA-1026','Taller de Sistemas Operativos');
   insert into Materia values   ('SCD-1021','Redes de Computador');
   insert into Materia values ('SCC-1014','Lenguajes de interfaz');

   -- 7
   insert into Materia values ('SCG-1009','Gestion de proyectos de software');
   insert into Materia values ('DAH2101','Base de datos avanzada');
   insert into Materia values ('SCD-1016','Lenguajes y automatas II');
   insert into Materia values ('ACA-0909','Taller de investigacion I');
   insert into Materia values ('SCD-1004','Conmutacion y enrutamiento de redes de datos');
   insert into Materia values ('SCC-1023','Sistemas programables');

   -- 8
   insert into Materia values ('DAH2103','Ciencia de datos');
   insert into Materia values ('DAC2104','Computo y servicios de nube');
   insert into Materia values ('DAH2102','Desarrollo de aplicaciones para dispositivos moviles');
   insert into Materia values ('ACA-0910','Taller de investigacion II');
   insert into Materia values ('SCA-1002','Administracion de redes');
   insert into Materia values ('SCC-1019','Programacion y logica funcional');

   -- 9
   insert into Materia values ('AEB-1055','Programacion web');
   insert into Materia values ('DAH2105','Desarrollo de aplicaciones empresariales');
   insert into Materia values ('DAD2106','Lab para despliegue de aplic empresariales');
   insert into Materia values ('SCC-1012','Inteligencia artificial');

   -- Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes
   --     select * from Materia where NombreM='Administración de Bases de Datos';
   -- insert into Materia values ('SCD-1011','Ingeniería de Software');
  -- insert into Materia values ('SCB-1001','Administración de Bases de Datos');
 --  insert into Materia values ('SCA-1026','Taller de Sistemas Operativos');
    insert into Materia values ('RAD-202','Diseño de redes');
  -- insert into Materia values ('SCD-1021','Redes de Computador');
   -- insert into Materia values ('SCC-1014','Lenguajes de interfaz');

    -- 7
    -- insert into Materia values ('SCD-1011','Gestion de proyectos de software');
   insert into Materia values ('RAD2001','Redes inalambricas');
  -- insert into Materia values ('SCD-1016','Lenguajes y automatas I');
   -- insert into Materia values ('ACA-0909','Taller de investigacion I');
   -- insert into Materia values ('SCD-1004','Conmutacion y enrutamiento de redes de datos');
   -- insert into Materia values ('SCC-1023','Sistemas programables');

   -- 8
   insert into Materia values ('SCD1016','Lenguajes y automatas II');
   -- insert into Materia values ('DAC2104','Fundamentos de lot');
   insert into Materia values ('SCA1002','Administracion de redes');
   -- insert into Materia values ('ACA-0910','Taller de investigacion II');
   insert into Materia values ('RAD2004','Seguridad en redes');
   -- insert into Materia values ('SCC-1019','Programacion y logica funcional');

   -- 9
   -- insert into Materia values ('AEB-1055','Programacion web');
   insert into Materia values ('RAD2005','Infrestructura para despliegue de aplicaciones');
   insert into Materia values ('S1','SErvicio social');
   insert into Materia values ('R1','Reseidencia');
   -- insert into Materia values ('SCC-1012','Inteligencia artificial');


	
   -- Ingenieria en Gestion Empresarial
   -- 1
   -- INSERT INTO Materia VALUES ('ACC-0906','Fundamentos de Investigación');
   -- INSERT INTO Materia VALUES ('ACF-0901','Cálculo Diferencial');
   INSERT INTO Materia VALUES ('GEC-0905','Desarrollo Humano');
   INSERT INTO Materia VALUES ('AEF-1074','Fundamentos de Gestión');
   INSERT INTO Materia VALUES ('AEC-1014','Dinámica Social');
   INSERT INTO Materia VALUES ('GEF-0910','Fundamentos de Química');
   -- 2
   insert into Materia values ('AEB-1082','Softaware de aplicacion ejecutivo');
   -- insert into Materia values ('ACF-0902','Calculo integral');
   insert into Materia values ('GED-0903','Contabilidad orientada a negocios');
   -- insert into Materia values ('AEC-1014','Dinamica social');
   -- insert into Materia values ('ACA-0907','Taller de etica');
   insert into Materia values ('GEE-0918','Legislacion Laboral');
   -- 3
   insert into Materia values ('AEC-1078','Marco legal de las organizaciones');
   insert into Materia values ('GED-0921','Probabilidad y estadistica Descriptiva');
   insert into Materia values ('GED-0904','Costos Empresariales');
   insert into Materia values ('GEC-0913','Habilidades Directivas');
   insert into Materia values ('AEF-1071','Economia Empresarial');
   -- insert into Materia values ('ACF-0903','Algebra Lineal');
   -- 4
   insert into Materia values ('GED-0917','Instrumentos de presupuestacion empresarial');
   insert into Materia values ('GEG-0907','Estadistica Infrencial I');
   insert into Materia values ('GEF-0915','Ingenieria de procesos');
   insert into Materia values ('GEC-0914','Habilidades directivas II');
   insert into Materia values ('GEF-0906','Entorno macroeconomico');
   insert into Materia values ('AEF-1076','Investigacion de operaciones');
   -- 5
   insert into Materia values ('AEF-1073','Finanzas de la organizacion');
   insert into Materia values ('GEG-0908','Estadistica inferencial II');
   insert into Materia values ('GEC-0911','Gestion de produccion I');
   insert into Materia values ('AEG-1075','Gestion de capital humano');
   -- insert into Materia values ('ACD-0908','Desarrollo sustentable');
   insert into Materia values ('GEF-0919','Mercadotecnia');
   -- 6
   insert into Materia values ('GEF-0916','Ingenieria economica');
   insert into Materia values ('AED-1072','El emprendedor y la innovacion');
   insert into Materia values ('GEC-0912','Gestion de la producciionII');
   insert into Materia values ('GEF-0901','Administracion de la salud y seguridad ocupacional');
   insert into Materia values ('AED-1069','Calidad aplicada a la gestion empresarial ');
   insert into Materia values ('GED-0922','Sistemas de informacion de mercadotecnia');
   -- 7
   insert into Materia values ('GED-0920','Plan de negocios');
   insert into Materia values ('CID-1076','Calidad aplicada a la gestion empresarial II');
   -- insert into Materia values ('ACA-0909','Taller de investigacion');
   insert into Materia values ('AED-1015','Diseño organizacional');
   insert into Materia values ('AEB-1045','Mercadotenia electronica');
   -- 8
   Insert into Materia values ('CID-1705','Estrategias fin y costos de calidad');
   insert into Materia values ('CIA-1701','Innovacion de procesos');
   insert into Materia values ('CIA-1707','Seminario de calidad');
   insert into Materia values ('CIA-1703','Seminario de consultoria');
  -- insert into Materia values ('ACA-0910','Taller de investigacion');
   insert into Materia values ('AED-1035','Gestion estrategica');
   -- 9
   insert into Materia values ('GEF-0902','Cadena de sumnistros');
   insert into Materia values ('CIC-1704','Gestion del conocimineto');
   insert into Materia values ('CIA-1702','Sem gestion energetica');

   -- ingenieria en Electromecanimca
   -- 1
 --  insert into Materia values ('ACA-0907','Taller de etica');
  -- insert into Materia values ('ACF-0901','Calculo diferncia');
   insert into Materia values ('EMH-1016','Introduccion ala programcion');
   -- insert into Materia values ('ACD-0908','Desarrollo sustentable');
   -- insert into Materia values ('AEC-1058','Quimica');
   -- insert into Materia values ('ACC-0906','Fundamentos de investigacion');
   -- 2
   insert into Materia values ('EME-1012','Estatica');
   -- insert into Materia values ('ACF-0902','Calculo integral');
   -- insert into Materia values ('ACF-0903','Algebra lineal');
   insert into Materia values ('AEF-1047','Metrologia y normalizacion');
   insert into Materia values ('EME-1028','Tecnologia de los materiales');
   insert into Materia values ('AEF-1390','Dibujo electromecanico');
   -- 3
   insert into Materia values ('EME-1008','Dinamica');
   -- insert into Materia values ('ACF-0904','Calculo vectorial');
   insert into Materia values ('EMC-1022','Procesos de manufactura');
   insert into Materia values ('EMC-1011','Electricidad y magnetismo');
   insert into Materia values ('EMI-1021','Mecanica de materiales');
   insert into Materia values ('AEE-1051','Probabilidad y estadistica');
   -- 4
   insert into Materia values ('EME-1005','Analisis y sisntesis de mecanismos');
   insert into Materia values ('ACF-09050','Ecuaciones diferenciales');
   insert into Materia values ('EME-1029','Termodinamica');
   insert into Materia values ('EMF-1004','Analisis de circuitos electricos de cd');
   insert into Materia values ('EME-1020','Mecanica de fluidos');
   insert into Materia values ('AEF-1021','Electronica analogica');
   -- 5
   Insert into Materia values ('EMF-1009','Diseño de elementos de maquina');
   insert into Materia values ('EMC-1010','Diseño e ingenieria asistido por computadora');
   insert into Materia values ('EME-1030','Transferencia de calor');
   insert into Materia values ('EMF-1003','Analisis de circuitos electricos ca');
   insert into Materia values ('EMJ-1026','Sistemas  y maquinas de fluidos');
   insert into Materia values ('AEC-1022','Electronica digital');
   -- 6
   insert into Materia values ('EMC-1018','Maquinas y equipos termicos I');
   insert into Materia values ('EMJ-1002','Ahorro de energia');
   insert into Materia values ('EMF-1015','	Instalaciones electricas');
   insert into Materia values ('EMJ-1017','Maquinas electricas');
   insert into Materia values ('EMJ-1001','Administracion y tecnicas de mantenimientos');
   -- insert into Materia values ('ACA-0909','Taller de investigacion');
   -- 7
   insert into Materia values ('EMC-1009','Maquinas y equipos termicos II');
   insert into Materia values ('EMF-1024','Sistemas elctricos de potencia ');
   insert into Materia values ('EMF-1006','Controles electricos');
   insert into Materia values ('EMJ-1014','Ingenieria de control clasico');
   -- insert into Materia values ('ACA-0910','Taller de investigacion II');
  -- 8
  insert into Materia values ('EMF-1023','Refrigeracion y aire acondicionado');
  insert into Materia values ('EMF-1027','Subestaciones electricas');
  insert into Materia values ('EMJ-1025','Sistemas hidraulicos y neumaticos de potencia');
  insert into Materia values ('EMC-1013','Formulacion y evaluacion de proyectos');

   -- Ingenieria en Logistica
  -- 1
insert into Materia values ('LOC-0919','Introduccion a la ingenieria en logistica');
-- insert into Materia values ('ACF-0901','Calculo Diferencial');
insert into Materia values ('LOC-0927','Quimica');
insert into Materia values ('LOC-0913','Fundamentos de administracion');
insert into Materia values ('LOH-0909','Dibujo asistido por computadora');
insert into Materia values ('AEC-1018','Economia');
-- 2
-- insert into Materia values ('ACA-0907','Taller de etica');
-- insert into Materia values ('ACF-0902','Calculo integral');
insert into Materia values ('AEC-1053','Probabilidad y estadistica');
insert into Materia values ('LOC-0908','Desarrollo humano y organizacional');
-- insert into Materia values ('ACC-0906','Fundamentos de investigacion');
insert into Materia values ('LOD-0906','Contabilidad y costos');
-- 3
insert into Materia values ('LOC-0903','Cadena de suministros');
-- insert into Materia values ('ACF-0903','Algebra Lineal');
insert into Materia values ('AEF-1024','Estadistica inferencial');
insert into Materia values ('LOC-0914','Fundamentos de derecho');
insert into Materia values ('AEF-1042','Mecanica clasica');
insert into Materia values ('LOF-0912','Finanzas');
-- 4
Insert into Materia values ('LOC-0905','Compras');
Insert into Materia values ('LOC-0929','Tipologia del producto');
Insert into Materia values ('AEF-1025','Estadistica inferencial II');
Insert into Materia values ('LOC-0911','Entorno economico');
Insert into Materia values ('LOF-0930','Topicos de ingenieria mecanica');
Insert into Materia values ('LOH-0902','Base de datos');
-- 5
Insert into Materia values ('LOF-0901','Almacenes');
Insert into Materia values ('LOE-0920','Inventarios');
Insert into Materia values ('LOE-0921','Investigacion de operaciones I');
Insert into Materia values ('LOJ-0917','Higine y seguridad');
Insert into Materia values ('LOC-0925','Procesos de fabrcacion y manejo de materiales');
Insert into Materia values ('AED-1044','Mercadotecnia');
-- 6
insert into Materia values ('LOF-0931','Trafico  y transporte');
insert into Materia values ('LOC-0907','Cultura de calidad');
insert into Materia values ('LOE-0922','Investigacion de operaciones II');
-- insert into Materia values ('ACD-0908','Desarrollo sustentable');
-- insert into Materia values ('ACA-0909','Taller de investigacion I');
insert into Materia values ('LOC-0910','Empeque,envase y embalaje');
-- 7
insert into Materia values ('LOC-0928','Servicio al cliente');
insert into Materia values ('LOC-0926','Programacion de procesos productivos');
insert into Materia values ('LOE-0924','Modelos de simulacion y logistica');
insert into Materia values ('LOD-0923','Legislacion aduanera');
-- insert into Materia values ('ACA-0910','Taller de investigacion II');
insert into Materia values ('AEC-1037','Ingenieria economica');
-- 8
insert into Materia values ('LOF-0918','Innovacion');
insert into Materia values ('LOH-0904','Comercio internacional');
insert into Materia values ('AED-1030','Formulacion y evaluacion de proyectos');
insert into Materia values ('LOD-0915','Geografia para el transporte');
-- 9
insert into Materia values ('LOC-0916','Gestion de proyectos');

   -- Ingenieria en Electronica
   -- 1
-- insert into Materia values ('ACF-0901','Calculo diferncial');
-- insert into Materia values ('AEF-1042','Mecanica clasica');
-- insert into Materia values ('AEC-1058','Quimica');
-- insert into Materia values ('ACA-0907','Taller de etica');
-- insert into Materia values ('ACC-0906','Fundamentos de investigacion');
insert into Materia values ('AEQ-1387','Comunicacion humana');
-- 2
-- insert into Materia values ('ACF-0902','Calculo intgral');
-- insert into Materia values ('AEE-1051','Probabilidad y estaditica');
-- insert into Materia values ('ACD-0908','Desarrollo sustentable');
insert into Materia values ('ETD-1021','Meidiones electricas');
insert into Materia values ('ETF-1027','Topicos selectos de fisica');
insert into Materia values ('ETQ-1009','Desarrollo Humano');
-- 3
-- insert into Materia values ('ACF-0904','Calculo vectorial');
insert into Materia values ('AEF-1020','Electromagnetismo');
-- insert into Materia values ('ACF-0903','Algebra lineal');
insert into Materia values ('ETF-1017','Fisica de semiconductores');
insert into Materia values ('ETD-1024','Programcion estructurada');
-- 4
-- insert into Materia values ('ACF-0905','Ecuaciones diferenciales');
insert into Materia values ('ETF-1004','Circuitos electricos I ');
insert into Materia values ('ETP-1020','Marco legal de la empresa');
insert into Materia values ('ETF-1003','Analisis numerico');
insert into Materia values ('ETF-1014','Diseño digital');
insert into Materia values ('ETD-1025','Progrmacion visual');
-- 5
insert into Materia values ('ETF-1005','Circuitos electricos');
insert into Materia values ('ETF-1012','Diodos y transistores');
insert into Materia values ('ETF-1026','Teoria electromagnetica');
insert into Materia values ('AEF-1040','Maquinas electricas');
insert into Materia values ('ETF-1015','Diseño dogital con vhdl');
insert into Materia values ('AEO-1388','Desarrollo profesional');
-- 6
insert into Materia values ('AEF-1009','Control I');
insert into Materia values ('ETF-1013','Diseño de transistores');
insert into Materia values ('ETP-1018','Fundamentos financieros');
insert into Materia values ('ETD-1022','Microcontroladores');
-- insert into Materia values ('ACA-0909','Taller de investigacion I');
-- 7 
insert into Materia values ('AEF-1010','Control II');
insert into Materia values ('ETF-1002','Amplificadores operacionales');
insert into Materia values ('AEF-1038','Instrumentacion ');
insert into Materia values ('ETF-1023','Optoelectronica');
insert into Materia values ('ETF-1019','Introduccion a las telecomunicaciones');
-- insert into Materia values ('ACA-0910','Taller de investigacion II');
-- 8
insert into Materia values ('ETF-1007','Control digital');
insert into Materia values ('ETF-1008','Controladores logicos progrmables');
insert into Materia values ('ETF-1016','Electronica  de potencia');
insert into Materia values ('ETR-1001','Admniatracion gerencial');
insert into Materia values ('AEO-1389','Desarrollo y avaluacion  de proyectos');




   -- Ingeniería en Tecnologías de la Información y Comunicaciones
   -- 1
-- insert into Materia values ('ACF-0901','Calculo diferncial');
insert into Materia values ('AEF-1032','Fundamentos de programacion');
insert into Materia values ('TIF-1019','Matematicas discretas I');
insert into Materia values ('TIP-1007','Introduccion a las tic´s');
-- insert into Materia values ('ACA-0907','Taller de etica');
-- insert into Materia values ('ACC-0906','Fundamentos de investigacion');
-- 2
-- insert into Materia values ('ACF-0902','Calculo integral');
insert into Materia values ('AEB-1054','Progrmacion orientada a objetos');
insert into Materia values ('TIF-1020','Matematicas discretas II');
-- insert into Materia values ('ACF-0903','Algebra lineal');
-- insert into Materia values ('AEF-1052','Probabilidad y estadistica');
insert into Materia values ('TIF-1009','Contabilidad y costos');
-- 3
insert into Materia values ('TID-1012','Estructuras y organizacion de datos');
insert into Materia values ('TIF-1021','Matematicas para la toma de decisiones');
-- insert into Materia values ('AEF-1031','Fundamenros de base de datos');
insert into Materia values ('TIC-1011','Electricidad y magnestismo');
insert into Materia values ('TIC-1002','Administracion general');
-- 4
insert into Materia values ('TIE-1004','Matematicas aplicadas a comnicaciones');
insert into Materia values ('TIB-1024','Progrmacion II');
insert into Materia values ('TIF-1013','Fundamentos de redes');
insert into Materia values ('AEA-1063','Taller de base de datos');
insert into Materia values ('TID-1008','Circuitos electricos y electronicos');
insert into Materia values ('TIC-1014','Ingenieria de software');
-- 5
insert into Materia values ('TID-1004','Analisis de señales y sistemas de comunicacion');
insert into Materia values ('TIF-1001','Administracion de proyectos');
insert into Materia values ('TIF-1025','Redes de computadoras');
insert into Materia values ('TIF-1007','Bases de datos distribuidas');
insert into Materia values ('TIC-1005','Arquitectura  de computadoras');
insert into Materia values ('TIC-1027','Taller de ingenieria de software');
-- 6
insert into Materia values ('TIF-1029','Telecomunicaciones');
-- insert into Materia values ('AEB-1055','Progrmacion web');
insert into Materia values ('TID-1010','Desarrollo de emprendedores');
-- insert into Materia values ('AEC-1061','Sistemas operativos');
-- insert into Materia values ('ACD-0908','Desarrollo sustentable');
insert into Materia values ('TIC-1028','Tecnologias inalambricas');
-- 7
insert into Materia values ('TIF-1026','Redes convergentes');
insert into Materia values ('AEB-1011','Desarrollo de aplicaciones para dispositivos moviles');
-- insert into Materia values ('ACA-0909','Taller de investigacion');
insert into Materia values ('AED-1062','Sistemas operativos II');
insert into Materia values ('TIC-1022','Negocios electronicos');
insert into Materia values ('TIH-1016','Interaccion humano computadora');
-- 8
insert into Materia values ('TIB-1003','Administracion y seguridad de redes');
insert into Materia values ('TIC-1006','Auditoria en tecnologia de la informacion');
-- insert into Materia values ('ACA-0910','Taller de investigacion II');
insert into Materia values ('TIC-1015','Ingenieria de conocimineto');
insert into Materia values ('TIC-1023','Negocios electronicos II');
   

   -- Ingeniería Mecatrónica
  -- 1
Insert into Materia values ('AEF-1058','Quimica');
-- Insert into Materia values ('ACF-0901','Calculo diferencial');
-- Insert into Materia values ('ACA-0907','Taller de etica');
Insert into Materia values ('AEA-1013','Dibujo Asistido por computadora');
Insert into Materia values ('AEC-1047','Metrologias y normalizacion');
-- Insert into Materia values ('ACC-0906','Fundamentos de investigacion');
-- 2
-- insert into Materia values ('ACF-0902','Calculo integral');
-- insert into Materia values ('ACF-0903','Algebra lineal');
insert into Materia values ('MTF-1004','Ciencia e ingenieria  de materiales');
insert into Materia values ('MTD-1024','Progrmacion basica');
insert into Materia values ('MTC-1014','Estadisticas y control de calidad');
insert into Materia values ('MTC-1001','Administracion y contabilidad');
-- 3
 -- insert into Materia values ('ACF-0904','Calculo vectorial');
insert into Materia values ('MTC-1022','Procesos de fabricacion');
-- insert into Materia values ('AEF-1020','Electromagnetismo');
insert into Materia values ('MTC-1015','Estatica');
insert into Materia values ('AEC-1046','Metodos numericos');
-- insert into Materia values ('ACD-0908','Desarrollo sustentable');
-- 4
-- insert into Materia values ('ACF-0905','Ecuaciones diferenciales');
insert into Materia values ('MTC-1017','Fundamentos de termodinamica');
insert into Materia values ('MTJ-1020','Mecanica de materiales');
insert into Materia values ('MTC-1008','Dinamica');
insert into Materia values ('MTJ-1002','Analisis  de circuitos electricos');
-- 5
-- insert into Materia values ('AEF-1040','Maquinas electricas');
insert into Materia values ('MTJ-1011','Electronica analogica');
insert into Materia values ('AED-1043','Mecanismos');
insert into Materia values ('MTC-1003','Analisis de fluidos');
-- insert into Materia values ('ACA-0909','Taller de ivestigacion I');
-- 6
insert into Materia values ('MTJ-1012','Electronico  de potencia aplicada');
-- insert into Materia values ('AEF-1038','Instrumentacion');
insert into Materia values ('MTF-1010','Diseño de elementos mecanicos');
insert into Materia values ('MTF-1013','Electronica digital');
insert into Materia values ('AED-1067','Vibraciones mecanicas');
-- insert into Materia values ('ACA-0910','Taller de investigacion II');
-- 7
insert into Materia values ('MTF-1009','Dinamica de sistemas');
insert into Materia values ('MTD-1019','Manufactura avanzada');
insert into Materia values ('MTG-1005','Circuitos hidraulicos y neumaticos');
insert into Materia values ('MTF-1018','Mantenimiento');
insert into Materia values ('MTF-1021','Microcontroladores');
insert into Materia values ('MTG-1023','Programacion avanzada');
-- 8
insert into Materia values ('MTJ-1006','Control');
insert into Materia values ('MTO-1016','Formulacion y evaluacion  de proyectos');
insert into Materia values ('MTD-1007','Controladores logicos progrmables');
insert into Materia values ('MTF-1025','Robotica');
	


   -- Convalidaciones
   -- desarrollo de aplicaciones
   -- 1
   insert into Convalidaciones values ('1','ACF-0901');
   insert into Convalidaciones values ('1','AED-1285');
   insert into Convalidaciones values ('1','ACA-0907');
   insert into Convalidaciones values ('1','AEF-1041');
   insert into Convalidaciones values ('1','SCH-1024');
   insert into Convalidaciones values ('1','ACC-0906');
   -- 2
   insert into Convalidaciones values ('1','ACF-0902');
   insert into Convalidaciones values ('1','ACF-0903');
   insert into Convalidaciones values ('1','AED-1286');
   insert into Convalidaciones values ('1','AEC-1008');
   insert into Convalidaciones values ('1','AEC-1058');
   insert into Convalidaciones values ('1','AEF-1052');
   -- 3
   insert into Convalidaciones values ('1','ACF-0904');
   insert into Convalidaciones values ('1','SCC-1013');
   insert into Convalidaciones values ('1','AED-1026');
   insert into Convalidaciones values ('1','ACC-0906');
   insert into Convalidaciones values ('1','ACD-0908');
   insert into Convalidaciones values ('1','SCF-1006');
   -- 4
  INSERT INTO convalidaciones VALUES ('1', 'ACF-0905');
  INSERT INTO convalidaciones VALUES ('1', 'AEF-1031');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1027');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1022');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1017');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1018');
  -- 5
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1007');
  INSERT INTO convalidaciones VALUES ('1', 'SCA-1025');
  INSERT INTO convalidaciones VALUES ('1', 'AEC-1061');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1010');
  INSERT INTO convalidaciones VALUES ('1', 'AEC-1034');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1003');
  -- 6
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1011');
  INSERT INTO convalidaciones VALUES ('1', 'SCB-1001');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1015');
  INSERT INTO convalidaciones VALUES ('1', 'SCA-1026');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1021');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1014');
  -- 7
  INSERT INTO convalidaciones VALUES ('1', 'SCG-1009');
  INSERT INTO convalidaciones VALUES ('1', 'DAH2101');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1016');
  INSERT INTO convalidaciones VALUES ('1', 'ACA-0909');
  INSERT INTO convalidaciones VALUES ('1', 'SCD-1004');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1023');
  -- 8
  INSERT INTO convalidaciones VALUES ('1', 'DAH2103');
  INSERT INTO convalidaciones VALUES ('1', 'DAC2104');
  INSERT INTO convalidaciones VALUES ('1', 'DAH2102');
  INSERT INTO convalidaciones VALUES ('1', 'ACA-0910');
  INSERT INTO convalidaciones VALUES ('1', 'SCA-1002');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1019');
  -- 9
  INSERT INTO convalidaciones VALUES ('1', 'AEB-1055');
  INSERT INTO convalidaciones VALUES ('1', 'DAH2105');
  INSERT INTO convalidaciones VALUES ('1', 'DAD2106');
  INSERT INTO convalidaciones VALUES ('1', 'SCC-1012');
  -- Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes
   -- 1
   insert into Convalidaciones values ('2','ACF-0901');
   insert into Convalidaciones values ('2','AED-1285');
   insert into Convalidaciones values ('2','ACA-0907');
   insert into Convalidaciones values ('2','AEF-1041');
   insert into Convalidaciones values ('2','SCH-1024');
   insert into Convalidaciones values ('2','ACC-0906');
   -- 2
   insert into Convalidaciones values ('2','ACF-0902');
   insert into Convalidaciones values ('2','ACF-0903');
   insert into Convalidaciones values ('2','AED-1286');
   insert into Convalidaciones values ('2','AEC-1008');
   insert into Convalidaciones values ('2','AEC-1058');
   insert into Convalidaciones values ('2','AEF-1052');
   -- 3
   insert into Convalidaciones values ('2','ACF-0904');
   insert into Convalidaciones values ('2','SCC-1013');
   insert into Convalidaciones values ('2','AED-1026');
   insert into Convalidaciones values ('2','ACC-0906');
   insert into Convalidaciones values ('2','ACD-0908');
   insert into Convalidaciones values ('2','SCF-1006');
   -- 4
  INSERT INTO convalidaciones VALUES ('2', 'ACF-0905');
  INSERT INTO convalidaciones VALUES ('2', 'AEF-1031');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1027');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1022');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1017');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1018');
  -- 5
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1007');
  INSERT INTO convalidaciones VALUES ('2', 'SCA-1025');
  INSERT INTO convalidaciones VALUES ('2', 'AEC-1061');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1010');
  INSERT INTO convalidaciones VALUES ('2', 'AEC-1034');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1003');
  -- 6
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1011');
  INSERT INTO convalidaciones VALUES ('2', 'SCB-1001');
  INSERT INTO convalidaciones VALUES ('2', 'RAD-202');
  
select * from Materia where clave='Desarrollo sustentable';
  select * from materia where clave='RAD-2020';
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1021');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1014');
  -- 7
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1011');
  INSERT INTO convalidaciones VALUES ('2', 'RAD2001');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1016');
  INSERT INTO convalidaciones VALUES ('2', 'ACA-0909');
  INSERT INTO convalidaciones VALUES ('2', 'SCD-1004');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1023');
  -- 8
  INSERT INTO convalidaciones VALUES ('2', 'SCD1016');
  INSERT INTO convalidaciones VALUES ('2', 'DAC2104');
  INSERT INTO convalidaciones VALUES ('2', 'SCA1002');
  INSERT INTO convalidaciones VALUES ('2', 'ACA-0910');
  INSERT INTO convalidaciones VALUES ('2', 'RAD2004');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1019');
  -- 9
  INSERT INTO convalidaciones VALUES ('2', 'AEB-1055');
  INSERT INTO convalidaciones VALUES ('2', 'RAD2005');
  INSERT INTO convalidaciones VALUES ('2', 'S1');
  INSERT INTO convalidaciones VALUES ('2', 'R1');
  INSERT INTO convalidaciones VALUES ('2', 'SCC-1012');
  
   -- Gestion empresarial
   -- 1
   insert into Convalidaciones values ('3','ACC-0906');
   insert into Convalidaciones values ('3','ACF-0901');
   insert into Convalidaciones values ('3','GEC-0905');
   insert into Convalidaciones values ('3','AEF-1074');
   insert into Convalidaciones values ('3','AEC-1014');
   insert into Convalidaciones values ('3','GEF-0910');
   -- 2
   insert into Convalidaciones values ('3','AEB-1082');
   insert into Convalidaciones values ('3','ACF-0902');
   insert into Convalidaciones values ('3','GED-0903');
   insert into Convalidaciones values ('3','AEC-1014');
   insert into Convalidaciones values ('3','ACA-0907');
   insert into Convalidaciones values ('3','GEE-0918');
   -- 3
   insert into Convalidaciones values ('3','AEC-1078');
   insert into Convalidaciones values ('3','GED-0921');
   insert into Convalidaciones values ('3','GED-0904');
   insert into Convalidaciones values ('3','AEC-1014');
   insert into Convalidaciones values ('3','AEF-1071');
   insert into Convalidaciones values ('3','ACF-0903');
   -- 4
   INSERT INTO convalidaciones VALUES ('3', 'GED-0917');
   INSERT INTO convalidaciones VALUES ('3', 'GEG-0907');
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0915');
   INSERT INTO convalidaciones VALUES ('3', 'GEC-0914');
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0906');
   INSERT INTO convalidaciones VALUES ('3', 'AEF-1076');
   -- 5
   INSERT INTO convalidaciones VALUES ('3', 'AEF-1073'); 
   INSERT INTO convalidaciones VALUES ('3', 'GEG-0908');
   INSERT INTO convalidaciones VALUES ('3', 'GEC-0911');
   INSERT INTO convalidaciones VALUES ('3', 'AEG-1075');
   INSERT INTO convalidaciones VALUES ('3', 'ACD-0908');
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0919');
   -- 6
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0916');
   INSERT INTO convalidaciones VALUES ('3', 'AED-1072');
   INSERT INTO convalidaciones VALUES ('3', 'GEC-0912');
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0901');
   INSERT INTO convalidaciones VALUES ('3', 'AED-1069');
   INSERT INTO convalidaciones VALUES ('3', 'GED-0922');
   -- 7
   INSERT INTO convalidaciones VALUES ('3', 'GED-0920');
   INSERT INTO convalidaciones VALUES ('3', 'CID-1076');
   INSERT INTO convalidaciones VALUES ('3', 'ACA-0909');
   INSERT INTO convalidaciones VALUES ('3', 'AED-1015');
   INSERT INTO convalidaciones VALUES ('3', 'AEB-1045');
   -- 8
   INSERT INTO convalidaciones VALUES ('3', 'CID-1705');
   INSERT INTO convalidaciones VALUES ('3', 'CIA-1701');
   INSERT INTO convalidaciones VALUES ('3', 'CIA-1707');
   INSERT INTO convalidaciones VALUES ('3', 'CIA-1703');
   INSERT INTO convalidaciones VALUES ('3', 'ACA-0910');
   INSERT INTO convalidaciones VALUES ('3', 'AED-1035');
   -- 9
   INSERT INTO convalidaciones VALUES ('3', 'GEF-0902');
   INSERT INTO convalidaciones VALUES ('3', 'CIC-1704');
   INSERT INTO convalidaciones VALUES ('3', 'CIA-1702');
   -- Ingeniria electromecanica
   -- 1
   INSERT INTO convalidaciones VALUES ('4', 'ACA-0907');
   INSERT INTO convalidaciones VALUES ('4', 'ACF-0901');
   INSERT INTO convalidaciones VALUES ('4', 'EMH-1016');
   INSERT INTO convalidaciones VALUES ('4', 'ACD-0908');
   INSERT INTO convalidaciones VALUES ('4', 'AEC-1058');
   INSERT INTO convalidaciones VALUES ('4', 'ACC-0906');
   -- 2
   INSERT INTO convalidaciones VALUES ('4', 'EME-1012');
   INSERT INTO convalidaciones VALUES ('4', 'ACF-0902');
   INSERT INTO convalidaciones VALUES ('4', 'ACF-0903');
   INSERT INTO convalidaciones VALUES ('4', 'AEF-1047');
   INSERT INTO convalidaciones VALUES ('4', 'EME-1028');
   INSERT INTO convalidaciones VALUES ('4', 'AEF-1390');
   -- 3
   INSERT INTO convalidaciones VALUES ('4', 'EME-1008');
   INSERT INTO convalidaciones VALUES ('4', 'ACF-0904');
   INSERT INTO convalidaciones VALUES ('4', 'EMC-1022');
   INSERT INTO convalidaciones VALUES ('4', 'EMC-1011');
   INSERT INTO convalidaciones VALUES ('4', 'EMI-1021');
   INSERT INTO convalidaciones VALUES ('4', 'AEE-1051');
   -- 4
   INSERT INTO convalidaciones VALUES ('4', 'EME-1005');
   INSERT INTO convalidaciones VALUES ('4', 'ACF-09050');
   INSERT INTO convalidaciones VALUES ('4', 'EME-1029');
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1004');
   INSERT INTO convalidaciones VALUES ('4', 'EME-1020');
   INSERT INTO convalidaciones VALUES ('4', 'AEF-1021');
   -- 5
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1009');
   INSERT INTO convalidaciones VALUES ('4', 'EMC-1010');
   INSERT INTO convalidaciones VALUES ('4', 'EME-1030');
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1003');
   INSERT INTO convalidaciones VALUES ('4', 'EMJ-1026');
   INSERT INTO convalidaciones VALUES ('4', 'AEC-1022');
   -- 6
   INSERT INTO convalidaciones VALUES ('4', 'EMC-1018');
   INSERT INTO convalidaciones VALUES ('4', 'EMJ-1002');
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1015');
   INSERT INTO convalidaciones VALUES ('4', 'EMJ-1017');
   INSERT INTO convalidaciones VALUES ('4', 'EMJ-1001');
   INSERT INTO convalidaciones VALUES ('4', 'ACA-0909');
   -- 7
   INSERT INTO convalidaciones VALUES ('4', 'EMC-1009');
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1024');
   INSERT INTO convalidaciones VALUES ('4', 'EMF-1006');
   INSERT INTO convalidaciones VALUES ('4', 'EMJ-1014');
   INSERT INTO convalidaciones VALUES ('4', 'ACA-0910');
   -- 8
  INSERT INTO convalidaciones VALUES ('4', 'EMF-1023');
  INSERT INTO convalidaciones VALUES ('4', 'EMF-1027');
  INSERT INTO convalidaciones VALUES ('4', 'EMJ-1025');
  INSERT INTO convalidaciones VALUES ('4', 'EMC-1013');
 

   -- Ingenieria en logistica
   -- 1
   insert into Convalidaciones values ('5','LOC-0919');
   insert into Convalidaciones values ('5','ACF-0901');
   insert into Convalidaciones values ('5','LOC-0927');
   insert into Convalidaciones values ('5','LOC-0913');
   insert into Convalidaciones values ('5','LOH-0909');
   insert into Convalidaciones values ('5','AEC-1018');
   -- 2
   insert into Convalidaciones values ('5','ACA-0907');
   insert into Convalidaciones values ('5','ACF-0902');
   insert into Convalidaciones values ('5','AEC-1053');
   insert into Convalidaciones values ('5','LOC-0908');
   insert into Convalidaciones values ('5','ACC-0906');
   insert into Convalidaciones values ('5','LOD-0906');
   -- 3
   insert into Convalidaciones values ('5','LOC-0903');
   insert into Convalidaciones values ('5','ACF-0903');
   insert into Convalidaciones values ('5','AEF-1024');
   insert into Convalidaciones values ('5','LOC-0914');
   insert into Convalidaciones values ('5','AEF-1042');
   insert into Convalidaciones values ('5','LOF-0912');
   -- 4
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0905');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0929');
   INSERT INTO Convalidaciones VALUES ('5', 'AEF-1025');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0911');
   INSERT INTO Convalidaciones VALUES ('5', 'LOF-0930');
   INSERT INTO Convalidaciones VALUES ('5', 'LOH-0902');
   -- 5
   INSERT INTO Convalidaciones VALUES ('5', 'LOF-0901');
   INSERT INTO Convalidaciones VALUES ('5', 'LOE-0920');
   INSERT INTO Convalidaciones VALUES ('5', 'LOE-0921');
   INSERT INTO Convalidaciones VALUES ('5', 'LOJ-0917');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0925');
   INSERT INTO Convalidaciones VALUES ('5', 'AED-1044');
   -- 6
   INSERT INTO Convalidaciones VALUES ('5', 'LOF-0931');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0907');
   INSERT INTO Convalidaciones VALUES ('5', 'LOE-0922');
   INSERT INTO Convalidaciones VALUES ('5', 'ACD-0908');
   INSERT INTO Convalidaciones VALUES ('5', 'ACA-0909');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0910');
   -- 7
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0928');
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0926');
   INSERT INTO Convalidaciones VALUES ('5', 'LOE-0924');
   INSERT INTO Convalidaciones VALUES ('5', 'LOD-0923');
   INSERT INTO Convalidaciones VALUES ('5', 'ACA-0910');
   INSERT INTO Convalidaciones VALUES ('5', 'AEC-1037');
   -- 8
   INSERT INTO Convalidaciones VALUES ('5', 'LOF-0918');
   INSERT INTO Convalidaciones VALUES ('5', 'LOH-0904');
   INSERT INTO Convalidaciones VALUES ('5', 'AED-1030');
   INSERT INTO Convalidaciones VALUES ('5', 'LOD-0915');
   -- 9
   INSERT INTO Convalidaciones VALUES ('5', 'LOC-0916');
   -- Ingeniria en electronica 
   -- 1
   INSERT INTO Convalidaciones VALUES ('6', 'ACF-0901');
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1042');
   INSERT INTO Convalidaciones VALUES ('6', 'AEC-1058');
   INSERT INTO Convalidaciones VALUES ('6', 'ACA-0907');
   INSERT INTO Convalidaciones VALUES ('6', 'ACC-0906');
   INSERT INTO Convalidaciones VALUES ('6', 'AEQ-1387');
   -- 2
   INSERT INTO Convalidaciones VALUES ('6', 'ACF-0902');
   INSERT INTO Convalidaciones VALUES ('6', 'AEE-1051');
   INSERT INTO Convalidaciones VALUES ('6', 'ACD-0908');
   INSERT INTO Convalidaciones VALUES ('6', 'ETD-1021');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1027');
   INSERT INTO Convalidaciones VALUES ('6', 'ETQ-1009');
   -- 3
   INSERT INTO Convalidaciones VALUES ('6', 'ACF-0904');
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1020');
   INSERT INTO Convalidaciones VALUES ('6', 'ACF-0903');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1017');
   INSERT INTO Convalidaciones VALUES ('6', 'ETD-1024');
   -- 4
   INSERT INTO Convalidaciones VALUES ('6', 'ACF-0905');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1004'); 
   INSERT INTO Convalidaciones VALUES ('6', 'ETP-1020');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1003');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1014');
   INSERT INTO Convalidaciones VALUES ('6', 'ETD-1025');
   -- 5
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1005');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1012');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1026');
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1040');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1015');
   INSERT INTO Convalidaciones VALUES ('6', 'AEO-1388');
   -- 6
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1009');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1013');
   INSERT INTO Convalidaciones VALUES ('6', 'ETP-1018');
   INSERT INTO Convalidaciones VALUES ('6', 'ETD-1022');
   INSERT INTO Convalidaciones VALUES ('6', 'ACA-0909');
   -- 7
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1010');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1002');
   INSERT INTO Convalidaciones VALUES ('6', 'AEF-1038');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1023');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1019');
   INSERT INTO Convalidaciones VALUES ('6', 'ACA-0910');
   -- 8
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1007');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1008');
   INSERT INTO Convalidaciones VALUES ('6', 'ETF-1016');
   INSERT INTO Convalidaciones VALUES ('6', 'ETR-1001');
   INSERT INTO Convalidaciones VALUES ('6', 'AEO-1389');
   -- Ingeniería en Tecnologías de la Información y Comunicaciones
   -- 1
   INSERT INTO Convalidaciones VALUES ('7', 'ACF-0901');
   INSERT INTO Convalidaciones VALUES ('7', 'AEF-1032');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1019');
   INSERT INTO Convalidaciones VALUES ('7', 'TIP-1007');
   INSERT INTO Convalidaciones VALUES ('7', 'ACA-0907');
   INSERT INTO Convalidaciones VALUES ('7', 'ACC-0906');
   -- 2
   INSERT INTO Convalidaciones VALUES ('7', 'ACF-0902');
   INSERT INTO Convalidaciones VALUES ('7', 'AEB-1054'); 
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1020');
   INSERT INTO Convalidaciones VALUES ('7', 'ACF-0903');
   INSERT INTO Convalidaciones VALUES ('7', 'AEF-1052');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1009');
   -- 3
   INSERT INTO Convalidaciones VALUES ('7', 'TID-1012');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1021');
   INSERT INTO Convalidaciones VALUES ('7', 'AEF-1031');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1011');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1002');
   -- 4
   INSERT INTO Convalidaciones VALUES ('7', 'TIE-1004');
   INSERT INTO Convalidaciones VALUES ('7', 'TIB-1024');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1013');
   INSERT INTO Convalidaciones VALUES ('7', 'AEA-1063');
   INSERT INTO Convalidaciones VALUES ('7', 'TID-1008');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1014');
   -- 5
   INSERT INTO Convalidaciones VALUES ('7', 'TID-1004');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1001');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1025');
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1007');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1005');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1027');
   -- 6
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1029');
   INSERT INTO Convalidaciones VALUES ('7', 'AEB-1055');
   INSERT INTO Convalidaciones VALUES ('7', 'TID-1010');
   INSERT INTO Convalidaciones VALUES ('7', 'AEC-1061');
   INSERT INTO Convalidaciones VALUES ('7', 'ACD-0908');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1028');
   -- 7
   INSERT INTO Convalidaciones VALUES ('7', 'TIF-1026');
   INSERT INTO Convalidaciones VALUES ('7', 'AEB-1011');
   INSERT INTO Convalidaciones VALUES ('7', 'ACA-0909');
   INSERT INTO Convalidaciones VALUES ('7', 'AED-1062');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1022');
   INSERT INTO Convalidaciones VALUES ('7', 'TIH-1016');
   -- 8
   INSERT INTO Convalidaciones VALUES ('7', 'TIB-1003');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1006');
   INSERT INTO Convalidaciones VALUES ('7', 'ACA-0910');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1015');
   INSERT INTO Convalidaciones VALUES ('7', 'TIC-1023');
   -- Ingeniería Mecatrónica
   -- 1
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1058');
   INSERT INTO Convalidaciones VALUES ('8', 'ACF-0901');
   INSERT INTO Convalidaciones VALUES ('8', 'ACA-0907');
   INSERT INTO Convalidaciones VALUES ('8', 'AEA-1013');
   INSERT INTO Convalidaciones VALUES ('8', 'AEC-1047');
   INSERT INTO Convalidaciones VALUES ('8', 'ACC-0906');
   -- 2
   INSERT INTO Convalidaciones VALUES ('8', 'ACF-0902');
   INSERT INTO Convalidaciones VALUES ('8', 'ACF-0903');
   INSERT INTO Convalidaciones VALUES ('8', 'MTF-1004');
   INSERT INTO Convalidaciones VALUES ('8', 'MTD-1024');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1014');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1001');
   -- 3
   INSERT INTO Convalidaciones VALUES ('8', 'ACF-0904');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1022');
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1020');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1015');
   INSERT INTO Convalidaciones VALUES ('8', 'AEC-1046');
   INSERT INTO Convalidaciones VALUES ('8', 'ACD-0908');
   -- 4
   INSERT INTO Convalidaciones VALUES ('8', 'ACF-0905');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1017');
   INSERT INTO Convalidaciones VALUES ('8', 'MTJ-1020');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1008');
   INSERT INTO Convalidaciones VALUES ('8', 'MTJ-1002');
   -- 5
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1040');
   INSERT INTO Convalidaciones VALUES ('8', 'MTJ-1011');
   INSERT INTO Convalidaciones VALUES ('8', 'AED-1043');
   INSERT INTO Convalidaciones VALUES ('8', 'MTC-1003');
   INSERT INTO Convalidaciones VALUES ('8', 'ACA-0909');
   -- 6
   INSERT INTO Convalidaciones VALUES ('8', 'MTJ-1012');
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1038');
   INSERT INTO Convalidaciones VALUES ('8', 'MTF-1010');
   INSERT INTO Convalidaciones VALUES ('8', 'MTF-1013');
   INSERT INTO Convalidaciones VALUES ('8', 'AED-1067');
   INSERT INTO Convalidaciones VALUES ('8', 'ACA-0910');
   -- 7
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1010');
   INSERT INTO Convalidaciones VALUES ('8', 'ETF-1002');
   INSERT INTO Convalidaciones VALUES ('8', 'AEF-1038');
   INSERT INTO Convalidaciones VALUES ('8', 'ETF-1023');
   INSERT INTO Convalidaciones VALUES ('8', 'ETF-1019');
   INSERT INTO Convalidaciones VALUES ('8', 'ACA-0910');
   -- 8
   INSERT INTO Convalidaciones VALUES ('8', 'MTJ-1006');
   INSERT INTO Convalidaciones VALUES ('8', 'MTO-1016');
   INSERT INTO Convalidaciones VALUES ('8', 'MTD-1007');
   INSERT INTO Convalidaciones VALUES ('8', 'MTF-1025');
/*
   -- vistas
-- CREATE VIEW vistaingenieriaenlogistica AS
-- SELECT m.*
-- FROM Especialidad e
JOIN convalidaciones c ON e.claveE = c.claveE
JOIN Materia m ON c.Clave = m.Clave
WHERE e.Nombre = 'Ingenieria en Logistica';
select * from vistaingenieriaenlogistica;

CREATE VIEW vistaingenieriaenmecatronica AS
SELECT m.*
FROM Especialidad e
JOIN convalidaciones c ON e.claveE = c.claveE
JOIN Materia m ON c.Clave = m.Clave
WHERE e.Nombre = 'Ingeniería Mecatrónica';

 select * from vistaingenieriaenmecatronica ;

*/
CREATE VIEW VistaMateriasPorEspecialidad AS
SELECT *
FROM Especialidad e
JOIN convalidaciones c ON e.claveE = c.claveEC
JOIN Materia m ON c.ClaveC = m.Clave;

SELECT * FROM VistaMateriasPorEspecialidad;