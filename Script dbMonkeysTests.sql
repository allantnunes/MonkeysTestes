SET GLOBAL event_scheduler = ON;

CREATE DATABASE dbmonkeystests;
USE dbmonkeystests;

CREATE EVENT limparBanco ON SCHEDULE EVERY 15 DAY
	DO DELETE FROM questao WHERE questao.status = 1
		AND timestampdiff(DAY, questao.dataUso, current_timestamp()) >= 7;
    
CREATE EVENT setDisponivel ON SCHEDULE EVERY 1 DAY
	DO UPDATE questao SET questao.status = 5, questao.vidaUtil = questao.vidaUtil - 1
		WHERE timestampdiff(MONTH, questao.dataUso, current_timestamp()) >= 3
			AND questao.status = 3;
    
DELIMITER //        
	CREATE TRIGGER congelarQuestao BEFORE UPDATE ON questao
		FOR EACH ROW
			BEGIN
				IF NEW.vidaUtil = 0 THEN
					SET NEW.status = 2;
				END IF;
			END//
DELIMITER ;
    
SELECT * FROM disciplina;
SELECT * FROM turma;
SELECT * FROM aluno;
SELECT * FROM respostadissertativa;
SELECT * FROM respostaobjetiva;
DESC respostaobjetiva;
SELECT * FROM funcionario;
DESC funcionario;
SELECT * FROM questao;
DESC questao;
SELECT * FROM provamodelo;
DESC provamodelo_questao;
SELECT * FROM provaaluno;
SELECT * FROM provamodelo_questao;
desc respostaobjetiva;

select * from RespostaObjetiva r where r.id = 1;

INSERT INTO turma VALUES(null, '1° A', 1, true);
INSERT INTO turma VALUES(null, '1° B', 1, false);

INSERT INTO disciplina
	VALUES(null, 'Programação Orientada a Objetos');
    
INSERT INTO disciplina
	VALUES(null, 'Programação');
    
INSERT INTO disciplina
	VALUES(null, 'História');
    
INSERT INTO aluno
	VALUES (null, null, '11 914512038', '12547863201', '2001-1-1', 'allantnunes@email.com', 0, 'allantnunes', '12352', 'Allan Tavares', '123', true, '11 45212369', 1);

INSERT INTO funcionario 
	VALUES (null, 0, '11 914512038', '12547863201', '1991-1-1', 'chile@email.com', 0, 'chile', 'Jose Roberto Chile', '123', true, '11 45212369');
    
INSERT INTO funcionario 
	VALUES (null, 1, '11 914512038', '54435345654', '1988-1-1', 'diretor@email.com', 0, 'adm', 'Diretor Silva', '123', true, '11 45212369');    
    
INSERT INTO questao
	VALUES(null, null, null, 1, 'Em POO (Programação Orientada a Objetos), dizer que a classe A estende a classe B é o mesmo que dizer que:', null, 
		'Orientação a Objetos', 5, null, 1, 4, 1, 1),
    (null, null, null, 1, 'Em POO (programação orientada a objetos), dizer que a classe A é superclasse de B é o mesmo que dizer que:', null, 
		'Orientação a Objetos', 5, null, 1, 4, 1, 1),
    (null, null, null, 1, 'A assinatura dos métodos de uma classe é composta por nome do método, tipo de retorno, lista de argumentos e visibilidade', null, 
		'Orientação a Objetos', 5, null, 1, 4, 1, 1),
    (null, null, null, 1, 'Ao se utilizar o encapsulamento, não é necessário saber como ele funciona internamente, apenas como transmite os seus atributos.', null, 
		'Orientação a Objetos', 5, null, 1, 4, 1, 1),
    (null, null, null, 1, 'Em programação orientada a objetos, a possibilidade de haver funções de mesmo nome, com funcionalidades similares em classes sem nenhuma relação entre elas, denomina-se',
		null, 'Orientação a Objetos', 5, null, 1, 4, 1, 1);
    
INSERT INTO respostaobjetiva
	VALUES(null, 'a classe B é subclasse de A;', false, 1), (null, 'a classe A é superclasse de B;', false, 1),
    (null, 'a classe A é derivada de B;', true, 1), (null, 'a classe B é derivada de A;', false, 1),
    (null, 'as classes A e B são irmãs.', false, 1), (null, 'A é derivada de B;', false, 2),
    (null, 'A estende B;', false, 2), (null, 'B é derivada de A;', true, 2),
    (null, 'B implementa A;', false, 2), (null, 'A implementa B.', false, 2),
    (null, 'Certo.', true, 3), (null, 'Errado.', false, 3), (null, 'Certo.', true, 4),
    (null, 'Errado.', false, 4), (null, 'encapsulamento.', false, 5),
    (null, 'objeto.', false, 5), (null, 'classe.', true, 5), 
    (null, 'polimorfismo.', false, 5), (null, 'relacionamento hierárquico.', false, 5);
    
INSERT INTO questao
	VALUES(null, null, null, 1, 'Construa uma função que encaixa dois dados inteiros positivos a e b e verifica se b corresponde aos últimos dígitos de a.',
		null, 'Funções', 5, null, 0, 4, 2, 1);
        
INSERT INTO respostadissertativa
	VALUES(null, '', 6);
    
INSERT INTO provamodelo
	VALUES(null, 0, false, null, '2016-10-27 19:30', 5, 40, 'ProvaTeste', 5, 1);
    
INSERT INTO provamodelo_questao
	VALUES(1, 1), (1, 2), (1, 3), (1, 4), (1, 5);
    
INSERT INTO provaaluno()
	VALUES(null, null, false, 0, null, 2, 123456, 1, 1);
    
DESC questao;

SELECT q.enunciado FROM questao q;
UPDATE questao q SET q.status = 5;