-- Inserção de Equipes
INSERT INTO `mydb`.`EQUIPES` (`id_equipes`, `nome`, `pais`, `ano`) VALUES
(1, 'Mercedes', 'Alemanha', 2024),
(2, 'Red Bull', 'Áustria', 2024),
(3, 'Ferrari', 'Itália', 2024),
(4, 'McLaren', 'Reino Unido', 2024),
(5, 'Alpine', 'França', 2024),
(6, 'Aston Martin', 'Reino Unido', 2024),
(7, 'Williams', 'Reino Unido', 2024),
(8, 'AlphaTauri', 'Itália', 2024),
(9, 'Alfa Romeo', 'Suíça', 2024),
(10, 'Haas', 'EUA', 2024);

-- Inserção de Pilotos
INSERT INTO `mydb`.`PILOTOS` (`id_pilotos`, `nome`, `idade`, `numero`, `EQUIPES_id_equipes`) VALUES
(1, 'Lewis Hamilton', 38, 44, 1),
(2, 'George Russell', 26, 63, 1),
(3, 'Max Verstappen', 26, 33, 2),
(4, 'Sergio Perez', 34, 11, 2),
(5, 'Charles Leclerc', 26, 16, 3),
(6, 'Carlos Sainz', 29, 55, 3),
(7, 'Lando Norris', 24, 4, 4),
(8, 'Oscar Piastri', 23, 81, 4),
(9, 'Esteban Ocon', 27, 31, 5),
(10, 'Pierre Gasly', 28, 10, 5),
(11, 'Fernando Alonso', 42, 14, 6),
(12, 'Lance Stroll', 25, 18, 6),
(13, 'Alex Albon', 28, 23, 7),
(14, 'Logan Sargeant', 23, 2, 7),
(15, 'Yuki Tsunoda', 24, 22, 8),
(16, 'Daniel Ricciardo', 35, 3, 8),
(17, 'Valtteri Bottas', 34, 77, 9),
(18, 'Zhou Guanyu', 25, 24, 9),
(19, 'Kevin Magnussen', 32, 20, 10),
(20, 'Nico Hülkenberg', 37, 27, 10);

-- Inserção de Veículos
INSERT INTO `mydb`.`VEICULOS` (`idVEICULOS`, `modelo`, `ano`, `PILOTOS_id_pilotos`, `PILOTOS_EQUIPES_id_equipes`) VALUES
(1, 'W14', 2024, 1, 1),
(2, 'W14', 2024, 2, 1),
(3, 'RB20', 2024, 3, 2),
(4, 'RB20', 2024, 4, 2),
(5, 'SF-24', 2024, 5, 3),
(6, 'SF-24', 2024, 6, 3),
(7, 'MCL60', 2024, 7, 4),
(8, 'MCL60', 2024, 8, 4),
(9, 'A523', 2024, 9, 5),
(10, 'A523', 2024, 10, 5),
(11, 'AMR24', 2024, 11, 6),
(12, 'AMR24', 2024, 12, 6),
(13, 'FW46', 2024, 13, 7),
(14, 'FW46', 2024, 14, 7),
(15, 'AT05', 2024, 15, 8),
(16, 'AT05', 2024, 16, 8),
(17, 'C43', 2024, 17, 9),
(18, 'C43', 2024, 18, 9),
(19, 'VF-24', 2024, 19, 10),
(20, 'VF-24', 2024, 20, 10);

-- Inserção de Pistas
INSERT INTO `mydb`.`PISTAS` (`idPISTAS`, `Nome`, `Local`, `Data`) VALUES
(1, 'Bahrain International Circuit', 'Bahrein', '2024-03-02'),
(2, 'Jeddah Street Circuit', 'Arábia Saudita', '2024-03-09'),
(3, 'Circuito de Melbourne', 'Austrália', '2024-03-24'),
(4, 'Suzuka International Racing Course', 'Japão', '2024-04-07'),
(5, 'Shanghai International Circuit', 'China', '2024-04-21'),
(6, 'Miami International Autodrome', 'Estados Unidos', '2024-05-05'),
(7, 'Autodromo Enzo e Dino Ferrari', 'Itália', '2024-05-19'),
(8, 'Circuit de Monaco', 'Monaco', '2024-05-26'),
(9, 'Circuit Gilles-Villeneuve', 'Canadá', '2024-06-09'),
(10, 'Circuit de Barcelona-Catalunya', 'Espanha', '2024-06-23');

-- Inserção de Resultados
INSERT INTO `mydb`.`RESULTADO` (`posicao`, `PISTAS_has_PILOTOS_PISTAS_idPISTAS`, `PISTAS_has_PILOTOS_PILOTOS_id_pilotos`, `PISTAS_has_PILOTOS_PILOTOS_EQUIPES_id_equipes`) VALUES
(1, 1, 3, 2),
(1, 2, 3, 2),
(1, 3, 6, 3),
(1, 4, 3, 2),
(1, 5, 3, 2),
(1, 6, 7, 4),
(1, 7, 3, 2),
(1, 8, 5, 3),
(1, 9, 3, 2),
(1, 10, 3, 2);

-- Inserção de Engenheiros
INSERT INTO `mydb`.`ENGENHEIRO` (`idENGENHEIRO`, `nome`, `especialidades`, `EQUIPES_id_equipes`) VALUES
(1, 'James Allison', 'Aerodinâmica', 1),
(2, 'Adrian Newey', 'Aerodinâmica', 2),
(3, 'Mattia Binotto', 'Motor', 3),
(4, 'Andreas Seidl', 'Estratégia', 4),
(5, 'Pat Fry', 'Aerodinâmica', 5),
(6, 'Andrew Green', 'Aerodinâmica', 6),
(7, 'Dave Robson', 'Desempenho', 7),
(8, 'Jody Egginton', 'Desempenho', 8),
(9, 'Jan Monchaux', 'Aerodinâmica', 9),
(10, 'Ayao Komatsu', 'Desempenho', 10);

-- Inserção de Chefes
INSERT INTO `mydb`.`CHEFE` (`idCHEFE`, `nome`, `funcao`, `EQUIPES_id_equipes`) VALUES
(1, 'Toto Wolff', 'Diretor Executivo', 1),
(2, 'Christian Horner', 'Diretor de Equipe', 2),
(3, 'Frederic Vasseur', 'Diretor de Equipe', 3),
(4, 'Zak Brown', 'CEO', 4),
(5, 'Laurent Rossi', 'CEO', 5),
(6, 'Mike Krack', 'Diretor de Equipe', 6),
(7, 'James Vowles', 'Diretor de Equipe', 7),
(8, 'Franz Tost', 'Diretor de Equipe', 8),
(9, 'Alessandro Alunni Bravi', 'Diretor de Equipe', 9),
(10, 'Guenther Steiner', 'Diretor de Equipe', 10);

-- Inserção de Relação Pistas e Pilotos
INSERT INTO `mydb`.`PISTAS_has_PILOTOS` (`PISTAS_idPISTAS`, `PILOTOS_id_pilotos`, `PILOTOS_EQUIPES_id_equipes`) VALUES
(1, 3, 2),
(2, 3, 2),
(3, 6, 3),
(4, 3, 2),
(5, 3, 2),
(6, 7, 4),
(7, 3, 2),
(8, 5, 3),
(9, 3, 2),
(10, 3, 2);
