
import Database as db
from tabulate import tabulate

class System:

    def __init__(self):
        self.__connection = db.Database()

    def menu(self):
        print('''
        1 - Inserir em uma tabela
        2 - Atualizar uma tabela
        3 - Deletar uma tabela
        4 - Listar uma tabela
        5 - Sair
        ''')
        option = int(input('Escolha uma opção: '))
        return option

    def run(self):
        option = self.menu()
        while option != 5:
            if option == 1:
                self.insert()
            elif option == 2:
                self.update()
            elif option == 3:
                self.delete()
            elif option == 4:
                self.list()
            option = self.menu()
        print('Saindo...')

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
