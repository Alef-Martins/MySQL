insert into cursos values
(default, 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
(default, 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
(default, 'Photoshop', 'Dicas de photoshop cc', '10', '8', '2014'),
(default, 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
(default, 'Jarva', 'Introdução a linguam Java', '10', '29', '2000'),
(default, 'MySQL', 'Banco de daos MySQL', '30', '15', '2016'),
(default, 'Word', 'Curso completo de Word', '40', '30', '2016'),
(default, 'Sapateado', 'Danças rítmicas', '40', '30', '2018'),
(default, 'Cozinha árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
(default, 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos set nome = 'HTML5' where id_curso = '1';

update cursos set nome = 'PHP', ano = '2015' where id_curso = '4';

update cursos set nome = 'Java', ano = '2015', carga = '40' where id_curso = '5' limit 1;

delete from cursos where id_curso = '8';