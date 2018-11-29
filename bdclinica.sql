/*Banco de dados do projeto do Clodoaldo e Antonio*/

/*o Bd possuirá Paciente, Clinica(Atendente), e Fisioterapeuta */
-- if exists drop clinicafisioterapeuta; -- comente essa linha para ignorar esse passo
/* Se o banco existir, ele é apagado */
create database clinicafisioterapeuta;

use clinicafisioterapeuta;

-- if exists drop paciente; -- se existir, ele apaga... somente para fins de teste, senão, comente essa linha ...
create table paciente(
id_paciente int not null auto_increment,
paciente_nome varchar(100) not null,
paciente_endereco varchar(50) not null,
paciente_telefone varchar(16) not null,
paciente_idade int not null,
primary key (id_paciente));

/*inserir dados na tabela paciente*/
insert into paciente values(1,"Francisco Everaldo","Rua A, N 254","86 99525-1830", 24);
insert into paciente values(2,"Artur da Silva","Rua B N 333","86 8816-1619", 34);
insert into paciente values(3,"Francisco Moraes","Rua C N 235","86 5524-2424", 24);
insert into paciente values(4,"Roberto da Silva","Rua F N 23","86 99541-1515", 33);
insert into paciente values(5,"Carlos da Silva Soares","Rua Antonio Cajuba, N 248","86 99995-5562", 32);
insert into paciente values(6,"Francisco das Costa Pinto","Rua Francisco do B, N 400","86 95522-9522", 40);


-- if exists drop fisioterapeuta; -- se existe, apaga (para fins de teste), senão, comente essa linha...
create table fisioterapeuta(
id_fisioterapeuta int not null auto_increment,
fisioterapeuta_nome varchar(100) not null,
fisioterapeuta_endereco varchar(50) not null,
fisioterapeuta_telefone varchar(16) not null,
fisioterapeuta_especialidade varchar(100),
primary key (id_fisioterapeuta));

/*insere dados na tabela fisioterapeuta*/
insert into fisioterapeuta values(1,"Carlos da Silva Freitas","Rua B N 22","86 9955-1820","Especialista em tratamento de recuperação de movimentos com ginastica e massagem...");
insert into fisioterapeuta values(2,"Francisco Cajuba","Rua C, N 600","86 9955-1830","Especialista em tratamento de recuperação de movimentos com eletrochoque...");
insert into fisioterapeuta values(3,"Armando de Sousa Gomes da Silva","Rua F, N 900","86 99995-2524","Especialista em tratamento em pacientes com paralisia parcial dos membros inferiores....");
insert into fisioterapeuta values(4,"Bruno Bezerra da Costa Silva","Rua Francisco Fenando de Sa, N 45","88 95524-1023","Especialista em tratamento com paralisia mediana...");
insert into fisioterapeuta values(5,"Carlos Cesar da Costa","AV Bularmarque, N 2200","86 9933-2518","Especialista em tratamentos gerais e recuperação...");
insert into fisioterapeuta values(6,"Alberto Soraes de Sousa","AV Teresina, N 6000","85 2345-1830","Especialista em massagem e recuperação...");

-- if exists drop consulta; -- se existe, apaga (para fins de teste, senão, comente essa linha tambem...)....
create table consulta(
id_consulta int not null auto_increment,
id_paciente int not null,
id_fisioterapeuta int not null,
horario_consulta varchar(5), -- deixei como string para fins de teste >.-.> :v óooooooo
patologia varchar(500),
primary key (id_consulta),
foreign key (id_paciente) references paciente(id_paciente),
foreign key (id_fisioterapeuta) references fisioterapeuta(id_fisioterapeuta));

/*insere dados na tabela consulta*/
insert into consulta values(1,1,3,"11:30","O paciente possuir paralisia dos membros inferiores resultado de um acidente, necessita de tratamento especifico para recuperação dos movimentos.");
insert into consulta values(2,5,2,"13:30","O paciente possuir paralisia dos membros inferiores, necessita de tratamento especifico para recuperação dos movimentos, recomendado terapia de eletrochoque.");
insert into consulta values(3,2,3,"16:30","O paciente possuir paralisia dos membros inferiores resultado de uma doença cronica, necessita de tratamento com eletrochoque para avaliação especifica.");
insert into consulta values(4,1,1,"17:30","O paciente possuir paralisia pacial em um dos membros inferiores, necessita de tratamento especifico e sessão para tratamento e recuperação dos movimentos.");
insert into consulta values(5,6,5,"18:00","O paciente necessita de uma avaliação, o mesmo passará por um tratamento geral e acompanhamento fisioterapico.");
insert into consulta values(6,6,1,"18:30","O paciente possuir paralisia dos membros inferiores resultado de um acidente, passará por tratamento e sessões de massagem e ginastica para tratamento.");
insert into consulta values(7,2,3,"19:00","O paciente possuir paralisia em um dos membros superiores, será realizado um tratamento de eletrochoque para estimulação dos movimentos.");
