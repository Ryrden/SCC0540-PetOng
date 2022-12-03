
import Database as db
import Voluntario as volunter


class System:

    def __init__(self):
        self.__connection = db.Database()
        self.__volunter = volunter.Voluntario()

    def menu(self):
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
        option = self.menu()
        while option != 5:
            if option == 1:
                self.__volunter.insert_volunter()
            elif option == 2:
                self.__volunter.delete_volunter()
            elif option == 3:
                self.__volunter.list_volunters()
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
