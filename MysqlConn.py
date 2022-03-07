
from email import iterators
import mysql.connector
from mysql.connector import Error
from PyQt5.QtCore import QSettings
from PyQt5.QtWidgets import QMessageBox


"""
try 2 database 
"""
try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="admin",
        password="",
        database="Inhouse_Admission_System"
    )
except Error as err:
    print(err)
    try:
        mydb = mysql.connector.connect(
            host="localhost",
            user="Chiragsp",
            password="admin",
            database="Inhouse_Admission_System"
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
iterator = 0
def UploadForm( sql, val, a):  
    global iterator
    iterator += 1
    sql_arr.append(sql)
    val_arr.append(val)
    print(
        sql_arr," -- ",
        val_arr, "  -- ",
        iterator
        )
    if a == True:
        prev_count = mycursor.rowcount
        try:
            for a in range(0,len(sql_arr)):
                mycursor.execute(sql_arr[a], val_arr[a])
        except Error as err:
            print("Mysql Error.: " , err)
            sql_arr.pop()
            val_arr.pop()
            return False 
        else :    
            mydb.commit()
            sql_arr.clear()
            val_arr.clear()
            return True
    return True

def Backward(Obj , x):
    global iterator
    iterator -= 1
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

