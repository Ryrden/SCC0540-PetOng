/*
    ACÕES QUE AS INSERÇÕES CONTEMPLAM
    
    1 - Dois eventos foram realizados
            Evento HelpPet na data 07/09/2022
            Evento HelpPet2.0 na data 12/12/2022
            
        Obs: Ambos no mesmo lugar.
            
    2 - Há 3 voluntários amadores e 3 voluntários profissionais
    
    3 - As ações realizadas pelos profissioanis foram Castração e Vacinação
    
    4 - As ações realizadas pelos amadores foram: adoção, doação de ração e doação de brinquedos
    
    5 - Foram arrecadados R$ 1250 no primeiro evento
    
    6 - Há três membros que participaram de ambos os eventos
    
    7 - No primeiro evento participaram dois profissionais e um amador
    
    6 - No segundo evento participaram  dois profissionais e um amador
    
    7 - Adoções ocorreram somente no primeiro evento.

*/

INSERT INTO VOLUNTARIO VALUES('123.456.789-10', 'Igor Guimarães Rosa', TO_DATE('10/6/2002', 'dd/mm/yyyy'), 'igor.guimaraes@gmail.com', '(16) 99654-9564');
INSERT INTO VOLUNTARIO VALUES('778.875.232-06', 'Emmy Farrow', TO_DATE('10/12/2000', 'dd/mm/yyyy'), 'EmmyFarrow@gmail.com', '(16) 99124-8658');
INSERT INTO VOLUNTARIO VALUES('883.458.339-69', 'Shabaz Gamble', TO_DATE('03/04/2001', 'dd/mm/yyyy'), 'SGamble@gmail.com', '(16) 99794-4567');
INSERT INTO VOLUNTARIO VALUES('232.350.830-06', 'Sophia Drake', TO_DATE('09/11/2000', 'dd/mm/yyyy'), 'SophDrake@outlook.com', '(16) 99124-5436');
INSERT INTO VOLUNTARIO VALUES('682.334.910-71', 'Najma Beach', TO_DATE('15/07/2000', 'dd/mm/yyyy'), 'NajBeach@outlook.com', '(16) 99456-8654');
INSERT INTO VOLUNTARIO VALUES('287.202.084-56', 'Lawson Hendricks', TO_DATE('21/08/1999', 'dd/mm/yyyy'), 'LawHend@outlook.com', '(16) 99765-1235');
INSERT INTO VOLUNTARIO VALUES('804.778.820-56', 'Lusel Hendricks', TO_DATE('22/08/1999', 'dd/mm/yyyy'), 'Luus@outlook.com', '(16) 99735-2236');
INSERT INTO VOLUNTARIO VALUES('824.778.820-56', 'Ben Philips', TO_DATE('25/08/1999', 'dd/mm/yyyy'), 'BenPhil@outlook.com', '(16) 99222-2236');

INSERT INTO VOLUNTARIO_AMADOR VALUES('123.456.789-10', '13053-244', 45, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('778.875.232-06', '13051-345', 22, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('883.458.339-69', '13043-756', 13, 'Perto do parque');

/* Profissionais também podem realizar as demais doações (OVERLAPPING) */
INSERT INTO VOLUNTARIO_AMADOR VALUES('232.350.830-06', '13043-956', 23, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('682.334.910-71', '13043-736', 3, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('287.202.084-56', '13043-716', 33, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('804.778.820-56', '13043-216', 393, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('824.778.820-56', '13043-456', 193, 'Perto do parque');

INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('232.350.830-06', 'CRM/SP 123456');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('682.334.910-71', 'CRM/SP 853379');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('287.202.084-56', 'CRM/SP 937465');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('804.778.820-56', 'CRM/SP 945465');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('824.778.820-56', 'CRM/SP 543477');



INSERT INTO TIPO_VOLUNTARIO VALUES ('123.456.789-10', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('778.875.232-06', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('883.458.339-69', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('232.350.830-06','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('682.334.910-71','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('287.202.084-56','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('804.778.820-56','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('824.778.820-56','PROFISSIONAL');


INSERT INTO ACAO_PROFISSIONAL VALUES('232.350.830-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('232.350.830-06', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Vacinação');
INSERT INTO ACAO_PROFISSIONAL VALUES('682.334.910-71', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Vacinação');
INSERT INTO ACAO_PROFISSIONAL VALUES('682.334.910-71', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('287.202.084-56', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('287.202.084-56', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('804.778.820-56', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('824.778.820-56', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');

INSERT INTO ACAO_VOLUNTARIA VALUES('123.456.789-10', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('778.875.232-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Doação de ração e Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('883.458.339-69', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Doação de brinquedos');
INSERT INTO ACAO_VOLUNTARIA VALUES('287.202.084-56', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Doação');
INSERT INTO ACAO_VOLUNTARIA VALUES('682.334.910-71', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Doação/Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('232.350.830-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('824.778.820-56', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('804.778.820-56', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Adoção');

INSERT INTO PRODUTO_DOADO VALUES('778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Ração', 'Ração pastor alemão premimum (2.5 kg)', 'OTIMO', 'Royal', 2, 'GRANDE');
INSERT INTO PRODUTO_DOADO VALUES('883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Osso de Brinquedo', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Ração', 'Ração Boxer (1.5 kg)', 'OTIMO', 'Royal', 3, 'GRANDE');
INSERT INTO PRODUTO_DOADO VALUES('682.334.910-71', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Ração', 'Ração Boxer (1.5 kg)', 'OTIMO', 'Royal', 2, 'GRANDE');
INSERT INTO PRODUTO_DOADO VALUES('232.350.830-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Ração', 'Ração Boxer (1.5 kg)', 'OTIMO', 'Royal', 2, 'GRANDE');
INSERT INTO PRODUTO_DOADO VALUES('804.778.820-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Osso de Brinquedo', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('804.778.820-56', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bolinha de Tênis', 'OTIMO', 'Royal', 3, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('824.778.820-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Osso de Brinquedo', 'OTIMO', 'Royal', 12, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('824.778.820-56', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bolinha de Tênis', 'OTIMO', 'Royal', 2, 'MEDIO');


INSERT INTO DINHEIRO_ARRECADADO VALUES ('123.456.789-10', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 250);
INSERT INTO DINHEIRO_ARRECADADO VALUES ('123.456.789-10', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 450);
INSERT INTO DINHEIRO_ARRECADADO VALUES('232.350.830-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 130);
INSERT INTO DINHEIRO_ARRECADADO VALUES('232.350.830-06', TO_DATE('12/12/2022','dd/mm/yyyy'), 251);

INSERT INTO DINHEIRO_ARRECADADO VALUES('682.334.910-71', TO_DATE('07/09/2022','dd/mm/yyyy'), 350);

INSERT INTO PETSHOP VALUES ('11.020.997/0001-68', 'PetShop Maximus Cães', 25, '12042-245', 432, NULL);
INSERT INTO PETSHOP VALUES ('78.116.468/0001-33', 'PetShop Royal', 15, '12044-745', 132, NULL);
INSERT INTO PETSHOP VALUES ('42.762.532/0001-06', 'PetShop PetHotel', 10, '14042-845', 422, NULL);
INSERT INTO PETSHOP VALUES ('16.571.380/0001-54', 'PetShop Paulista', 21, '15042-945', 864, NULL);

INSERT INTO EVENTO VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', NULL, 'Na praça central', 'Evento HelpPet');
INSERT INTO EVENTO VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', NULL, 'Na praça central', 'Evento HelpPet 2.0');

INSERT INTO PROMOCAO VALUES ('11.020.997/0001-68', TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224');
INSERT INTO PROMOCAO VALUES ('78.116.468/0001-33', TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224');
INSERT INTO PROMOCAO VALUES ('78.116.468/0001-33', TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224');


INSERT INTO MEMBRO VALUES ('816.570.890-29', 'Junior Almeida dos Santos', TO_DATE('13/12/2000','dd/mm/yyyy'), 'jalmeidasantos@gmail.com', '(11) 99245-6743', '14045-643', 54, 'Casa');
INSERT INTO MEMBRO VALUES ('248.568.150-32', 'Rodrigo Alves', TO_DATE('21/07/1997','dd/mm/yyyy'), 'RAlves002@gmail.com', '(11) 99345-6433','13012-232' ,09, 'AP. 11');
INSERT INTO MEMBRO VALUES ('502.242.130-59', 'Murilo Gomes de Souza', TO_DATE('18/03/1999','dd/mm/yyyy'), 'MuriloGSouza99@gmail.com', '(11) 99457-9373', '14012-532',294, 'AP.32');

INSERT INTO ORGANIZADORES VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '816.570.890-29');
INSERT INTO ORGANIZADORES VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '248.568.150-32');
INSERT INTO ORGANIZADORES VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '502.242.130-59');

INSERT INTO ORGANIZADORES VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '816.570.890-29');
INSERT INTO ORGANIZADORES VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '248.568.150-32');
INSERT INTO ORGANIZADORES VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '502.242.130-59');

INSERT INTO PARTICIPACAO VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '287.202.084-56');
INSERT INTO PARTICIPACAO VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '778.875.232-06');
INSERT INTO PARTICIPACAO VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', '883.458.339-69');
INSERT INTO PARTICIPACAO VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '232.350.830-06');
INSERT INTO PARTICIPACAO VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '682.334.910-71');
INSERT INTO PARTICIPACAO VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', '123.456.789-10');

INSERT INTO PET VALUES(1, 'Cão', 'Macho', 'Thor', 'Pastor Alemão', 5, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '778.875.232-06', TO_DATE('07/09/2022','dd/mm/yyyy'));
INSERT INTO PET VALUES(2, 'Cão', 'Macho', 'Zeus', 'Pastor Alemão', 3, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'));
INSERT INTO PET VALUES(3, 'Cão', 'Macho', 'Jerry', 'Pastor Alemão', 2, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '232.350.830-06', TO_DATE('12/12/2022', 'dd/mm/yyyy'));
INSERT INTO PET VALUES(4, 'Cão', 'Fêmea', 'Luma', 'Pastor Belga', 4, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(5, 'Cão', 'Fêmea', 'Tina', 'Pastor Belga', 1, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(6, 'Cão', 'Fêmea', 'Luna', 'Husky Siberiano', 2, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '123.456.789-10', TO_DATE('07/09/2022','dd/mm/yyyy'));
INSERT INTO PET VALUES(7, 'Cão', 'Fêmea', 'Pluma', 'Pastor Belga', 4, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '824.778.820-56', TO_DATE('08/09/2022','dd/mm/yyyy'));
INSERT INTO PET VALUES(8, 'Cão', 'Macho', 'Pol', 'Pastor Alemão', 1, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '804.778.820-56', TO_DATE('08/09/2022','dd/mm/yyyy'));
INSERT INTO PET VALUES(9, 'Cão', 'Macho', 'Boris', 'Pastor Belga', 4, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(10, 'Cão', 'Macho', 'Dom', 'Pastor Belga', 1, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(11, 'Cão', 'Fêmea', 'Kelly', 'Pastor Belga', 4, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(12, 'Cão', 'Macho', 'York', 'Pastor Belga', 1, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);

INSERT INTO PET VALUES(13, 'Cão', 'Macho', 'Thomas', 'Pastor Belga', 4, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(14, 'Cão', 'Macho', 'Phill', 'Pastor Belga', 1, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(15, 'Cão', 'Fêmea', 'Milka', 'Pastor Belga', 4, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(16, 'Cão', 'Macho', 'Tony', 'Pastor Belga', 1, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);

INSERT INTO PET VALUES(17, 'Cão', 'Macho', 'Tyr', 'Pastor Belga', 4, '78.116.468/0001-33', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(18, 'Cão', 'Macho', 'Fenrir', 'Pastor Belga', 1, '78.116.468/0001-33', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(19, 'Cão', 'Fêmea', 'Sif', 'Pastor Belga', 4, '78.116.468/0001-33', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(20, 'Cão', 'Macho', 'Atreus', 'Pastor Belga', 1, '78.116.468/0001-33', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);


INSERT INTO VACINAS VALUES(1, 'Raiva');
INSERT INTO VACINAS VALUES(2, 'Raiva');
INSERT INTO VACINAS VALUES(3, 'Raiva');
INSERT INTO VACINAS VALUES(4, 'Raiva');
INSERT INTO VACINAS VALUES(6, 'Raiva');
INSERT INTO VACINAS VALUES(16, 'Raiva');
INSERT INTO VACINAS VALUES(1, 'Antirrábica');
INSERT INTO VACINAS VALUES(2, 'Antirrábica');
INSERT INTO VACINAS VALUES(3, 'Antirrábica');
INSERT INTO VACINAS VALUES(4, 'Antirrábica');
INSERT INTO VACINAS VALUES(16, 'Antirrábica');
INSERT INTO VACINAS VALUES(1, 'Giárdia');
INSERT INTO VACINAS VALUES(2, 'Giárdia');
INSERT INTO VACINAS VALUES(3, 'Giárdia');
INSERT INTO VACINAS VALUES(4, 'Giárdia');
INSERT INTO VACINAS VALUES(5, 'Giárida');
INSERT INTO VACINAS VALUES(6, 'Giárdia');


--validar e ser mais criativo
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 8, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '682.334.910-71', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));



INSERT INTO REMESSA VALUES('78.116.468/0001-33', '778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 8, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('78.116.468/0001-33', '883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('78.116.468/0001-33', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('42.762.532/0001-06', '682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('42.762.532/0001-06', '682.334.910-71', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));

INSERT INTO REMESSA VALUES('11.020.997/0001-68', '778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 8, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));








