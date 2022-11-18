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

INSERT INTO VOLUNTARIO_AMADOR VALUES('123.456.789-10', '13053-244', 45, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('778.875.232-06', '13051-345', 22, 'Perto do parque');
INSERT INTO VOLUNTARIO_AMADOR VALUES('883.458.339-69', '13043-756', 13, 'Perto do parque');

INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('232.350.830-06', 'CRM/SP 123456');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('682.334.910-71', 'CRM/SP 853379');
INSERT INTO VOLUNTARIO_PROFISSIONAL VALUES('287.202.084-56', 'CRM/SP 937465');

INSERT INTO TIPO_VOLUNTARIO VALUES ('123.456.789-10', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('778.875.232-06', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('883.458.339-69', 'AMADOR');
INSERT INTO TIPO_VOLUNTARIO VALUES ('232.350.830-06','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('682.334.910-71','PROFISSIONAL');
INSERT INTO TIPO_VOLUNTARIO VALUES ('287.202.084-56','PROFISSIONAL');

INSERT INTO ACAO_PROFISSIONAL VALUES('232.350.830-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Castração');
INSERT INTO ACAO_PROFISSIONAL VALUES('682.334.910-71', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Vacinação');
INSERT INTO ACAO_PROFISSIONAL VALUES('287.202.084-56', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Castração');

INSERT INTO ACAO_VOLUNTARIA VALUES('123.456.789-10', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('778.875.232-06', TO_DATE('07/09/2022','dd/mm/yyyy'), 'Doação de ração e Adoção');
INSERT INTO ACAO_VOLUNTARIA VALUES('883.458.339-69', TO_DATE('12/12/2022','dd/mm/yyyy'), 'Doação de brinquedos');

INSERT INTO PRODUTO_DOADO VALUES('778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Ração', 'Ração pastor alemão premimum (2.5kg)', 'OTIMO', 'Royal', 2, 'GRANDE');
INSERT INTO PRODUTO_DOADO VALUES('883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');

INSERT INTO DINHEIRO_ARRECADADO VALUES('123.456.789-10', TO_DATE('07/09/2022','dd/mm/yyyy'), 1250);

INSERT INTO PETSHOP VALUES ('11.020.997/0001-68', 'PetShop Maximus Cães', 25, '12042-245', 432, NULL);
INSERT INTO PETSHOP VALUES ('78.116.468/0001-33', 'PetShop Royal', 15, '12044-745', 132, NULL);
INSERT INTO PETSHOP VALUES ('42.762.532/0001-06', 'PetShop PetHotel', 10, '14042-845', 422, NULL);
INSERT INTO PETSHOP VALUES ('16.571.380/0001-54', 'PetShop Paulista', 21, '15042-945', 864, NULL);

INSERT INTO EVENTO VALUES(TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224', NULL, 'Na praça central', 'Evento HelpPet');
INSERT INTO EVENTO VALUES(TO_DATE('12/12/2022','dd/mm/yyyy'), '12013-224', NULL, 'Na praça central', 'Evento HelpPet 2.0');

INSERT INTO PROMOCAO VALUES ('11.020.997/0001-68', TO_DATE('07/09/2022','dd/mm/yyyy'), '12013-224');

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
INSERT INTO PET VALUES(2, 'Cão', 'Macho', 'Zeus', 'Pastor Alemão', 5, '11.020.997/0001-68', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(3, 'Cão', 'Macho', 'Jerry', 'Pastor Alemão', 5, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(4, 'Cão', 'Fêmea', 'Luma', 'Pastor Belga', 5, '42.762.532/0001-06', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(5, 'Cão', 'Fêmea', 'Tina', 'Pastor Belga', 5, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), NULL, NULL);
INSERT INTO PET VALUES(6, 'Cão', 'Fêmea', 'Luna', 'Husky Siberiano', 5, '16.571.380/0001-54', TO_DATE('04/06/2021', 'dd/mm/yyyy'), '123.456.789-10', TO_DATE('07/09/2022','dd/mm/yyyy'));

--validar e ser mais criativo
--INSERT INTO PRODUTO_DOADO VALUES('778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 'Ração', 'Ração pastor alemão premimum (2.5kg)', 'OTIMO', 'Royal', 2, 'GRANDE');
--INSERT INTO PRODUTO_DOADO VALUES('883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '778.875.232-06', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 8, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '883.458.339-69', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 7, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));

INSERT INTO PRODUTO_DOADO VALUES('232.350.830-06', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');
INSERT INTO PRODUTO_DOADO VALUES('123.456.789-10', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 'Brinquedos', 'Bola de Tênis', 'OTIMO', 'Royal', 4, 'MEDIO');

INSERT INTO REMESSA VALUES('11.020.997/0001-68', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 1, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('11.020.997/0001-68', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 2, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('78.875.232-06', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 3, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('78.875.232-06', '287.202.084-56', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 4, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('42.762.532/0001-06', '682.334.910-71', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 5, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('42.762.532/0001-06', '232.350.830-06', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 6, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
INSERT INTO REMESSA VALUES('16.571.380/0001-54', '123.456.789-10', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 9, 1, TO_DATE('04/11/2022', 'dd/mm/yyyy'));
