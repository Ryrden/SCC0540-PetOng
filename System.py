
import Database as db
from tabulate import tabulate
from sys import platform
import os
import Voluntario as volunter

if platform == 'linux':
    clear_screen='clear'
else:
    clear_screen='cls'


class System:

    def __init__(self):
        '''
        Este é o construtor da classe System.
        Ele é responsável por inicializar a conexão com o banco de dados e 
        as demais instâncias de classes.
        '''
        self.__connection = db.Database()
        #self.__volunter = volunter.Voluntario()

    def menu(self):
        '''
        Essa função é responsável por exibir o menu principal do sistema.
        '''
        print('''
        1 - Registrar um novo Voluntário
        2 - Excluir um Voluntário
        3 - Listar Voluntários
        4 - Registrar uma Doação
        5 - Editar uma Doação
        6 - Excluir uma Doação
        7 - Listar Doações
        8 - Executar Queries Personalizadas
        9 - Sair
        ''')
        option = int(input('Escolha uma opção: '))
        return option

    def run(self):
        '''
        Essa função é responsável por executar o sistema e a partir
        de uma opção do menu, chamar a função responsável por executar
        '''
        option = self.menu()
        os.system(clear_screen)
        while option != 5:
            if option == 1:
                self.insert_volunter()
            elif option == 2:
                self.delete_volunter()
            elif option == 3:
                self.list_volunters()
            elif option == 4:
                self.insert_donation()
            elif option == 5:
                self.update_donation()
            elif option == 6:
                self.delete_donation()
            elif option == 7:
                self.list_donation()
            elif option == 8:
                self.custom_query()
            elif option == 9:
                self.__connection.close()
                break
            option = self.menu()
        print('Saindo...')

    # VOLUNTARIO

    def insert_volunter(self):
        '''
        Essa função é responsável por registrar um novo voluntário no banco de dados.
        Este  Voluntário pode ser do tipo 'Amador' ou 'Profissional'.
        '''

        print('Dados do Voluntário:\n')
        nome = input('Nome: ')
        cpf = input('CPF (XXX.XXX.XXX-XX): ')
        dataNascimento = input('Data de Nascimento (dd/mm/yyyy): ')
        telefone = input('Telefone (xx x xxxx-xxxx): ')
        email = input('Email (exemplo@email.com): ')

        print('\n Tipo de voluntário\n')
        tipo = input('Tipo (Amador || Profissional): ')

        SQL_AMADOR = ""
        SQL_PROFISSIONAL = ""

        if (tipo == 'Amador'):
            print("Endereço do Voluntário Amador:\n")
            cep = input('CEP (xxxxx-xxx): ')
            numero = input('Número: ')
            complemento = input('Complemento: ')

            SQL_AMADOR = '''INSERT INTO VOLUNTARIO_AMADOR (CEP, NUMERO, COMPLEMENTO)
                VALUES (:cep, :numero, :complemento)'''
        elif (tipo == 'Profissional'):
            print("CRM do Voluntário Profissional:\n")
            crm = input('CRM ([SiglaEstado] XXXXXX): ')

            SQL_PROFISSIONAL = '''INSERT INTO VOLUNTARIO_PROFISSIONAL (CRM)
                VALUES (:crm)'''
        else:
            print('Tipo inválido')
            return

        print('\nInserindo voluntario...')
        # Tratando SQL Injection
        SQL_VOLUNTARIO = '''INSERT INTO VOLUNTARIO(nome, cpf, dataNascimento, telefone, email, tipo)
            VALUES(: nome, : cpf, : dataNascimento, : telefone, : email, : tipo)'''
        responde_voluntario = self.__connection.runQueryWithParams(
            SQL_VOLUNTARIO, [nome, cpf, dataNascimento, telefone, email, tipo])

        if (responde_voluntario):
            if (SQL_AMADOR != ""):
                response_amador = self.__connection.runQueryWithParams(
                    SQL_AMADOR, [cep, numero, complemento])
            if (SQL_PROFISSIONAL != ""):
                response_profissional = self.__connection.runQueryWithParams(
                    SQL_PROFISSIONAL, [crm])

            if (response_amador or response_profissional):
                print('Voluntário inserido com sucesso')

    def delete_volunter(self):
        '''
        Essa função é responsável por excluir um voluntário do banco de dados.
        Para que ela seja executada, é necessário que o usuário informe o CPF do voluntário.
        '''
        print('Qual o CPF do voluntário que deseja excluir?')
        cpf = input('CPF (XXX.XXX.XXX-XX): ')

        SQL = '''DELETE FROM VOLUNTARIO 
                    WHERE CPF = :cpf'''

        print("tem certeza que deseja excluir o voluntário?")
        print("1 - Sim")
        print("2 - Não")
        option = int(input('Escolha uma opção: '))
        if option == 1:
            response = self.__connection.runQueryWithParams(SQL, [cpf])
            if (response):
                print('Voluntário deletado com sucesso')
        elif option == 2:
            print('Operação cancelada')

    def list_volunters(self):
        '''
        Essa função é responsável por listar todos os voluntários do banco de dados.
        '''

        SQL = "SELECT * FROM VOLUNTARIO"
        response = self.__connection.runQuery(SQL)
        #print("CPF\tNome\tData de Nascimento\tTelefone\tEmail")
        rows_data = []
        for row in response:
            data = row[2].strftime("%d/%m/%Y")
            rows_data.append([row[0], row[1], data, row[3], row[4]])
        print(tabulate(rows_data, headers=['CPF','Nome','Data de Nascimento','Telefone', 'Email']))


    def custom_query(self):
        while (True):
            submenu='''
                1 - Executar Query 1
                2 - Executar Query 2
                3 - Executar Query 3
                4 - Executar Query 4
                5 - Executar Query 5
                6 - Executar Query 6
                7 - Voltar ao menu principal
                '''
            print(submenu)
            option = int(input('Escolha uma opção: '))
            os.system(clear_screen)
            if (option == 1):
                SQL='''	SELECT  v.nome AS DONO, 
        		pet.nome AS PET_NOME, 
        		v.cpf AS CPF, 
        		av.data AS DATA, 
        		av.descricao AS DESCRICAO,
        		SUM(din.valor) AS DINHEIRO_DOADO
		FROM ACAO_VOLUNTARIA av
		INNER JOIN VOLUNTARIO v ON v.cpf = av.voluntario
		INNER JOIN PET pet ON pet.dono = v.cpf
		INNER JOIN DINHEIRO_ARRECADADO din ON din.voluntario = v.cpf
		LEFT OUTER JOIN PRODUTO_DOADO prod ON prod.voluntario = v.cpf
		WHERE prod.nome IS NULL
		GROUP BY v.nome, pet.nome, v.cpf, av.data, av.descricao
		HAVING SUM(din.valor) > 500
                    '''
                tab_form=['Dono', 'Nome_Pet', 'CPF', 'Data', 'Descricao', 'Dinheiro doado']
            elif (option == 2):
                pass
            elif (option == 7):
                break
            response = self.__connection.runQuery(SQL)
            rows_data = []
            for row in response:
                rows_data.append([row[0], row[1], row[2], row[3].strftime("%d/%m/%Y"), row[4], row[5]])
            print(tabulate(rows_data, headers=tab_form))
        print("[+] Voltando ao menu principal")

"""
    def list(self):
        print('''
        1 - Listar tabela TIME
        2 - Listar tabela JOGADOR
        ''')
        option = int(input('Escolha uma opção: '))
        if option == 1:
            self.list_time()
        elif option == 2:
            self.list_jogador()

    def list_time(self):
        SQL = "SELECT * FROM TIME"
        ans = self.__connection.runQuery(SQL)
        print(tabulate(ans, headers=['TIME', 'ESTADO', 'TIPO', 'SALDO_GOLS'])) 
"""
