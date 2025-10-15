-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id, salario, nivel)
VALUES
(1, 3500, 'Estagiário'),
(2, 4700, 'Iniciante - grade 1'),
(3, 5300, 'Iniciante - grade 2');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(salario, nivel)
VALUES
(8500, 'Gerente'),
(10700, 'Coordernação de Área'),
(6500, 'Engenheiro de Qualidade de Software Mid-level'),
(8000, 'Desenvolvedor Sênior');
