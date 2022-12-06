import cx_Oracle as oracle
from dotenv import dotenv_values

env = dotenv_values(".env")
if env["INSTANT_CLIENT_PATH"]:
    oracle.init_oracle_client(lib_dir=env["INSTANT_CLIENT_PATH"])


class Database:
    '''
    Essa classe é uma implementação do Padrão de Projeto Singleton
    Este padrão está sendo utilizado para garantir que apenas uma instância
    da classe Database seja criada.
    Essa classe é responsável por realizar a conexão com o banco de dados e 
    executar as queries.
    '''
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
            print("[+] Conectando com o banco. Isso pode demorar um pouco...")
            dsn_tns = oracle.makedsn(
                env["DB_HOST"],
                env["DB_PORT"],
                service_name=env["DB_SERVICE_NAME"])
            Database.__instance = oracle.connect(
                env["DB_USER"],
                env["DB_PASSWORD"],
                dsn_tns)

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
