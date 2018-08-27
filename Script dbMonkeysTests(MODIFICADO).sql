CREATE DATABASE IF NOT EXISTS dbmonkeystests;
USE dbmonkeystests;

-- LIMPAR QUESTÕES REPROVADAS A CADA 1 DIA	 --
CREATE EVENT IF NOT EXISTS limparBanco ON SCHEDULE EVERY 1 DAY
	DO DELETE FROM questao WHERE questao.status = 1
		AND timestampdiff(DAY, questao.dataUso, current_timestamp()) >= 1;
     
-- APÓS CONGELAR AS QUESTÕES, ELAS SERÃO DESCONGELADAS APÓS 3 MESES
CREATE EVENT IF NOT EXISTS setDisponivel ON SCHEDULE EVERY 1 DAY
	DO UPDATE questao SET questao.status = 5, questao.vidaUtil = questao.vidaUtil - 1
		WHERE timestampdiff(month, questao.dataUso, current_timestamp()) >= 3
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

SET GLOBAL event_scheduler = ON;

INSERT INTO aluno
	VALUES (null, null, '11 914512038', '12547863201', '2001-1-1', 'allantnunes@email.com', 0, 'allantnunes', '12352', 'Allan Tavares', '123', true, '11 45212369', 1);

INSERT INTO funcionario 
	VALUES (null, 0, '11 914512038', '12547863201', '1991-1-1', 'chile@email.com', 0, 'chile', 'Jose Roberto Chile', '123', true, '11 45212369');
    
INSERT INTO funcionario 
	VALUES (null, 1, '11 914512038', '54435345654', '1988-1-1', 'diretor@email.com', 0, 'adm', 'Diretor Silva', '123', true, '11 45212369');    