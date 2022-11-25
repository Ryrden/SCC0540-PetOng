import Database


def main():
    connection = Database()

    connection.runQuery("SELECT * FROM DUAL")
    connection.close()
