-- TESTANDO A INSERÇÃO DE DADOS

-- ONG

INSERT INTO ong VALUES
(1,'12.345.678/0001-90','11999990001','contato@maossolidarias.org','Mãos Solidárias','09750-000',100);

-- CONCESSÕES

INSERT INTO concessao VALUES
(1,'Licenca 1','Documento 1'),
(2,'Licenca 2','Documento 2'),
(3,'Licenca 3','Documento 3'),
(4,'Licenca 4','Documento 4'),
(5,'Licenca 5','Documento 5');

-- CAMPANHAS

INSERT INTO campanha VALUES
(1,'Natal Solidario','Arrecadacao de alimentos','1000 cestas','2025-01-01','2025-03-31',1,1),
(2,'Combate a Fome','Doacoes para familias','800 cestas','2025-02-01','2025-04-30',2,1),
(3,'Inverno Solidario','Ajuda para comunidades','600 cestas','2025-03-01','2025-05-31',3,1),
(4,'Alimento para Todos','Distribuicao de mantimentos','900 cestas','2025-04-01','2025-06-30',4,1),
(5,'Esperanca Viva','Doacoes gerais','700 cestas','2025-05-01','2025-07-31',5,1);

-- CONTRIBUIÇÕES

INSERT INTO contribuicao VALUES
(1,'2025-01-10','Contribuicao 1',1),
(2,'2025-01-15','Contribuicao 2',1),
(3,'2025-01-20','Contribuicao 3',1),
(4,'2025-02-05','Contribuicao 4',1),

(5,'2025-02-10','Contribuicao 5',2),
(6,'2025-02-15','Contribuicao 6',2),
(7,'2025-02-20','Contribuicao 7',2),
(8,'2025-03-01','Contribuicao 8',2),

(9,'2025-03-05','Contribuicao 9',3),
(10,'2025-03-10','Contribuicao 10',3),
(11,'2025-03-15','Contribuicao 11',3),
(12,'2025-03-20','Contribuicao 12',3),

(13,'2025-04-05','Contribuicao 13',4),
(14,'2025-04-10','Contribuicao 14',4),
(15,'2025-04-15','Contribuicao 15',4),
(16,'2025-04-20','Contribuicao 16',4),

(17,'2025-05-05','Contribuicao 17',5),
(18,'2025-05-10','Contribuicao 18',5),
(19,'2025-05-15','Contribuicao 19',5),
(20,'2025-05-20','Contribuicao 20',5);

-- ALIMENTOS

INSERT INTO alimento VALUES
(1,'Camil','2026-01-01',5,'Arroz',10,'2026-01-01',1),
(2,'Tio Joao','2026-02-01',5,'Feijao',12,'2026-02-01',2),
(3,'Yoki','2026-03-01',3,'Macarrao',20,'2026-03-01',3),
(4,'Predilecta','2026-04-01',2,'Molho',15,'2026-04-01',4),
(5,'Camil','2026-05-01',5,'Arroz',11,'2026-05-01',5),
(6,'Tio Joao','2026-06-01',5,'Feijao',10,'2026-06-01',6),
(7,'Yoki','2026-07-01',3,'Macarrao',18,'2026-07-01',7),
(8,'Predilecta','2026-08-01',2,'Molho',14,'2026-08-01',8),
(9,'Camil','2026-09-01',5,'Arroz',13,'2026-09-01',9),
(10,'Tio Joao','2026-10-01',5,'Feijao',12,'2026-10-01',10),
(11,'Yoki','2026-11-01',3,'Macarrao',17,'2026-11-01',11),
(12,'Predilecta','2026-12-01',2,'Molho',16,'2026-12-01',12),
(13,'Camil','2027-01-01',5,'Arroz',10,'2027-01-01',13),
(14,'Tio Joao','2027-02-01',5,'Feijao',10,'2027-02-01',14),
(15,'Yoki','2027-03-01',3,'Macarrao',20,'2027-03-01',15),
(16,'Predilecta','2027-04-01',2,'Molho',15,'2027-04-01',16),
(17,'Camil','2027-05-01',5,'Arroz',10,'2027-05-01',17),
(18,'Tio Joao','2027-06-01',5,'Feijao',12,'2027-06-01',18),
(19,'Yoki','2027-07-01',3,'Macarrao',19,'2027-07-01',19),
(20,'Predilecta','2027-08-01',2,'Molho',18,'2027-08-01',20);

-- PARTICIPANTES
-- IDs 1 a 20 serão voluntários
-- IDs 21 a 40 serão empresas doadoras

INSERT INTO participante VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),
(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),
(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),
(31),(32),(33),(34),(35),(36),(37),(38),(39),(40);



-- VOLUNTÁRIOS

INSERT INTO voluntario VALUES
(1,'11111111111','11990000001','Separacao','Ana Silva'),
(2,'11111111112','11990000002','Triagem','Bruno Souza'),
(3,'11111111113','11990000003','Distribuicao','Carlos Lima'),
(4,'11111111114','11990000004','Separacao','Daniela Rocha'),
(5,'11111111115','11990000005','Motorista','Eduardo Alves'),
(6,'11111111116','11990000006','Triagem','Fernanda Costa'),
(7,'11111111117','11990000007','Distribuicao','Gabriel Santos'),
(8,'11111111118','11990000008','Separacao','Helena Martins'),
(9,'11111111119','11990000009','Motorista','Igor Pereira'),
(10,'11111111120','11990000010','Triagem','Julia Ribeiro'),
(11,'11111111121','11990000011','Distribuicao','Kaio Mendes'),
(12,'11111111122','11990000012','Separacao','Larissa Gomes'),
(13,'11111111123','11990000013','Triagem','Marcos Oliveira'),
(14,'11111111124','11990000014','Distribuicao','Natalia Ferreira'),
(15,'11111111125','11990000015','Motorista','Otavio Dias'),
(16,'11111111126','11990000016','Separacao','Paula Teixeira'),
(17,'11111111127','11990000017','Triagem','Rafael Barros'),
(18,'11111111128','11990000018','Distribuicao','Sara Campos'),
(19,'11111111129','11990000019','Separacao','Thiago Nunes'),
(20,'11111111130','11990000020',NULL,'Vanessa Araujo');


-- EMPRESAS DOADORAS

INSERT INTO empresa_doadora VALUES
(21,'11.111.111/0001-01','1130000001','contato1@empresa.com','Empresa Alpha','09750-001',10),
(22,'11.111.111/0001-02','1130000002','contato2@empresa.com','Empresa Beta','09750-002',20),
(23,'11.111.111/0001-03','1130000003','contato3@empresa.com','Empresa Gama','09750-003',30),
(24,'11.111.111/0001-04','1130000004','contato4@empresa.com','Empresa Delta','09750-004',40),
(25,'11.111.111/0001-05','1130000005','contato5@empresa.com','Empresa Epsilon','09750-005',50),
(26,'11.111.111/0001-06','1130000006','contato6@empresa.com','Empresa Zeta','09750-006',60),
(27,'11.111.111/0001-07','1130000007','contato7@empresa.com','Empresa Eta','09750-007',70),
(28,'11.111.111/0001-08','1130000008','contato8@empresa.com','Empresa Theta','09750-008',80),
(29,'11.111.111/0001-09','1130000009','contato9@empresa.com','Empresa Iota','09750-009',90),
(30,'11.111.111/0001-10','1130000010','contato10@empresa.com','Empresa Kappa','09750-010',100),
(31,'11.111.111/0001-11','1130000011','contato11@empresa.com','Empresa Lambda','09750-011',110),
(32,'11.111.111/0001-12','1130000012','contato12@empresa.com','Empresa Mu','09750-012',120),
(33,'11.111.111/0001-13','1130000013','contato13@empresa.com','Empresa Nu','09750-013',130),
(34,'11.111.111/0001-14','1130000014','contato14@empresa.com','Empresa Xi','09750-014',140),
(35,'11.111.111/0001-15','1130000015','contato15@empresa.com','Empresa Omicron','09750-015',150),
(36,'11.111.111/0001-16','1130000016','contato16@empresa.com','Empresa Pi','09750-016',160),
(37,'11.111.111/0001-17','1130000017','contato17@empresa.com','Empresa Rho','09750-017',170),
(38,'11.111.111/0001-18','1130000018','contato18@empresa.com','Empresa Sigma','09750-018',180),
(39,'11.111.111/0001-19','1130000019','contato19@empresa.com','Empresa Tau','09750-019',190),
(40,'11.111.111/0001-20','1130000020','contato20@empresa.com','Empresa Omega','09750-020',200);



-- CADASTRA
-- Participantes distribuídos entre as cinco campanhas

INSERT INTO cadastra VALUES
(1,1),(1,2),(1,3),(1,4),(1,21),(1,22),(1,23),(1,24),
(2,5),(2,6),(2,7),(2,8),(2,25),(2,26),(2,27),(2,28),
(3,9),(3,10),(3,11),(3,12),(3,29),(3,30),(3,31),(3,32),
(4,13),(4,14),(4,15),(4,16),(4,33),(4,34),(4,35),(4,36),
(5,17),(5,18),(5,19),(5,20),(5,37),(5,38),(5,39),(5,40);

-- FUNCIONÁRIOS
-- Todos pertencem à ONG 1 (Mãos Solidárias)

INSERT INTO funcionario VALUES
(1,'22222222201','11980000001','func1@maossolidarias.org','André Silva','Coordenador',1),
(2,'22222222202','11980000002','func2@maossolidarias.org','Beatriz Costa','Assistente',1),
(3,'22222222203','11980000003','func3@maossolidarias.org','Caio Santos','Assistente',1),
(4,'22222222204','11980000004','func4@maossolidarias.org','Débora Lima','Analista',1),
(5,'22222222205','11980000005','func5@maossolidarias.org','Eduardo Alves','Analista',1),
(6,'22222222206','11980000006','func6@maossolidarias.org','Fernanda Rocha','Supervisor',1),
(7,'22222222207','11980000007','func7@maossolidarias.org','Gabriel Souza','Assistente',1),
(8,'22222222208','11980000008','func8@maossolidarias.org','Helena Martins','Analista',1),
(9,'22222222209','11980000009','func9@maossolidarias.org','Igor Pereira','Assistente',1),
(10,'22222222210','11980000010','func10@maossolidarias.org','Juliana Gomes','Supervisor',1),
(11,'22222222211','11980000011','func11@maossolidarias.org','Kaique Nunes','Assistente',1),
(12,'22222222212','11980000012','func12@maossolidarias.org','Larissa Campos','Analista',1),
(13,'22222222213','11980000013','func13@maossolidarias.org','Marcelo Dias','Assistente',1),
(14,'22222222214','11980000014','func14@maossolidarias.org','Natália Barros','Analista',1),
(15,'22222222215','11980000015','func15@maossolidarias.org','Otávio Ribeiro','Supervisor',1),
(16,'22222222216','11980000016','func16@maossolidarias.org','Paula Mendes','Assistente',1),
(17,'22222222217','11980000017','func17@maossolidarias.org','Rafael Teixeira','Analista',1),
(18,'22222222218','11980000018','func18@maossolidarias.org','Sara Oliveira','Assistente',1),
(19,'22222222219','11980000019','func19@maossolidarias.org','Thiago Ferreira','Supervisor',1),
(20,'22222222220','11980000020','func20@maossolidarias.org','Vanessa Araujo','Coordenador',1);



-- TRANSPORTADORAS
-- Todas vinculadas à ONG 1

INSERT INTO transportadora VALUES
(1,'1140000001','contato1@trans.com','22.222.222/0001-01','Trans Alpha','09750-101',10,1),
(2,'1140000002','contato2@trans.com','22.222.222/0001-02','Trans Beta','09750-102',20,1),
(3,'1140000003','contato3@trans.com','22.222.222/0001-03','Trans Gama','09750-103',30,1),
(4,'1140000004','contato4@trans.com','22.222.222/0001-04','Trans Delta','09750-104',40,1),
(5,'1140000005','contato5@trans.com','22.222.222/0001-05','Trans Omega','09750-105',50,1);



-- BENEFICIÁRIOS

INSERT INTO beneficiario VALUES
(1,'33333333301','João Silva','11970000001',1200,'1980-05-10','09750-201',11),
(2,'33333333302','Maria Costa','11970000002',950,'1985-07-12','09750-202',12),
(3,'33333333303','Pedro Santos','11970000003',1100,'1990-02-15','09750-203',13),
(4,'33333333304','Ana Lima','11970000004',1000,'1978-11-08','09750-204',14),
(5,'33333333305','Carlos Rocha','11970000005',1300,'1982-01-20','09750-205',15),
(6,'33333333306','Fernanda Alves','11970000006',900,'1995-03-30','09750-206',16),
(7,'33333333307','Gabriel Souza','11970000007',850,'1988-06-25','09750-207',17),
(8,'33333333308','Helena Martins','11970000008',1400,'1992-09-10','09750-208',18),
(9,'33333333309','Igor Pereira','11970000009',1000,'1987-04-14','09750-209',19),
(10,'33333333310','Julia Gomes','11970000010',950,'1993-08-17','09750-210',20),
(11,'33333333311','Kaio Mendes','11970000011',1200,'1981-12-22','09750-211',21),
(12,'33333333312','Larissa Barros','11970000012',1100,'1996-05-05','09750-212',22),
(13,'33333333313','Marcos Oliveira','11970000013',900,'1984-10-11','09750-213',23),
(14,'33333333314','Natália Dias','11970000014',1000,'1991-01-29','09750-214',24),
(15,'33333333315','Otávio Ribeiro','11970000015',1250,'1989-03-19','09750-215',25),
(16,'33333333316','Paula Teixeira','11970000016',950,'1994-06-01','09750-216',26),
(17,'33333333317','Rafael Nunes','11970000017',1150,'1983-08-09','09750-217',27),
(18,'33333333318','Sara Campos','11970000018',1000,'1997-04-23','09750-218',28),
(19,'33333333319','Thiago Ferreira','11970000019',1050,'1986-09-27','09750-219',29),
(20,'33333333320','Vanessa Souza','11970000020',980,'1998-12-15','09750-220',30);



-- ENTREGAS
-- Distribuídas entre as cinco transportadoras

INSERT INTO entrega VALUES
(1,'2025-06-01','2025-06-03','finalizada',1,1),
(2,'2025-06-01','2025-06-04','finalizada',1,2),
(3,'2025-06-02','2025-06-05','finalizada',1,3),
(4,'2025-06-03','2025-06-06','finalizada',1,4),

(5,'2025-06-05','2025-06-08','finalizada',2,5),
(6,'2025-06-06','2025-06-09','finalizada',2,6),
(7,'2025-06-07','2025-06-10','finalizada',2,7),
(8,'2025-06-08','2025-06-11','finalizada',2,8),

(9,'2025-06-10','2025-06-13','finalizada',3,9),
(10,'2025-06-11','2025-06-14','finalizada',3,10),
(11,'2025-06-12','2025-06-15','finalizada',3,11),
(12,'2025-06-13','2025-06-16','finalizada',3,12),

(13,'2025-06-15','2025-06-18','finalizada',4,13),
(14,'2025-06-16','2025-06-19','finalizada',4,14),
(15,'2025-06-17','2025-06-20','finalizada',4,15),
(16,'2025-06-18','2025-06-21','finalizada',4,16),

(17,'2025-06-20',NULL,'em_rota',5,17),
(18,'2025-06-21',NULL,'em_rota',5,18),
(19,NULL,NULL,'nao_iniciada',5,19),
(20,NULL,NULL,'nao_iniciada',5,20);