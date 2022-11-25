import cx_Oracle
from dotenv import load_dotenv

load_dotenv()


class Database:
    __instance = None

    @staticmethod
    def getInstance():
        if Database.__instance is None:
            Database()
        return Database.__instance

    def __init__(self):
        if Database.__instance != None:
            raise Exception("This class is a singleton!")
        else:
            Database.__instance = cx_Oracle.connect(
                "{DB_USER}", "{DB_PASSWORD}", "{DB_HOST}")

    def runQuery(self, query):
        '''
        Método responsável por executar uma query no banco de dados
        '''
        cursor = self.__instance.cursor()
        cursor.execute(query)
        return cursor

    def runQueryWithParams(self, query, params):
        '''
        Método responsável por executar uma query com parametros no banco de dados
        '''
        cursor = self.__instance.cursor()
        cursor.execute(query, params)
        return cursor

    def commit(self):
        '''
        Método responsável por realizar o commit no banco de dados
        '''
        self.__instance.commit()

    def close(self):
        '''
        Método responsável por fechar a conexão com o banco de dados
        '''
        self.__instance.close()
