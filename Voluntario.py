import Database as db
from tabulate import tabulate


class Voluntario:

    def __init__(self):
        self.__connection = db.Database()

    def insert_volunter(self):
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
        SQL = "SELECT * FROM VOLUNTARIO"
        response = self.__connection.runQuery(SQL)
        for row in response:
            print(tabulate(row, headers=[
                'Nome',
                'CPF',
                'Data de Nascimento',
                'Telefone',
                'Email',
                'Tipo']))
