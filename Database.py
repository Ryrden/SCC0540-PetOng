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
        cursor = self.__instance.cursor()
        cursor.execute(query)
        return cursor

    def runQueryWithParams(self, query, params):
        cursor = self.__instance.cursor()
        cursor.execute(query, params)
        return cursor

    def commit(self):
        self.__instance.commit()

    def close(self):
        self.__instance.close()
