
from email import iterators
import mysql.connector
from mysql.connector import Error
from PyQt5.QtCore import QSettings
from PyQt5.QtWidgets import QMessageBox
import mail_send

"""
try 2 database 
"""
try:
    mydb = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="root",
        database="Inhouse_Admission_System",
        port=3307
    )
except Error as err:
    print(err)
    try:
        mydb = mysql.connector.connect(
            host="localhost",
            user="chiragsp",
            password="admin",
            database="Inhouse_Admission_System",
            port=3306
        )
    except Error as err2:
        print(err2)
    else:
        print("Success 2nd")
else:
    print("Success 1st")

mycursor = mydb.cursor()
settings = QSettings("MySoft", "Star Runner")


def AlertPop( text):
    msg = QMessageBox()
    msg.setText(text)
    msg.setWindowTitle("Alert!")
    msg.setIcon(QMessageBox.Warning)
    msg.exec_() 

# arr = []
sql_arr = []
val_arr = []

def UploadForm( sql, val, a):  

    sql_arr.append(sql)
    val_arr.append(val)
    #print(
    #    sql_arr," -- ",
    #    val_arr, "  -- ",
    #    )

    if a == True:
        print(val_arr[0][14])
        prev_count = mycursor.rowcount
        try:
            for a in range(0,len(sql_arr)):
                mycursor.execute(sql_arr[a], val_arr[a])
            mydb.commit()
        except Error as err:
            print("Mysql Error.: " , err)
            return False 
        else :
            mail_send.message(val_arr[0][14], "password")
            sql_arr.clear()
            val_arr.clear()
            return True
    return True

def Backward(Obj , x):

    sql_arr.pop()
    val_arr.pop()
    a = x
    b = [0,1,6]
    if a in b:
        index = b.index(a)
        Obj.stackedWidget.setCurrentIndex(b[(index - 1)%3])

def RowCount():
    mycursor = mydb.cursor()
    sql = "SELECT `StudentID` FROM `Admission Details`"
    mycursor.execute(sql)
    mycursor.fetchall()
    return mycursor.rowcount

