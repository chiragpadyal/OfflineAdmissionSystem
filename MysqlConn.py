
from email import iterators
import mysql.connector
from mysql.connector import Error
from PyQt5.QtCore import QSettings
from PyQt5.QtWidgets import QMessageBox
from numpy import iterable

mydb = mysql.connector.connect(
    host="localhost",
    user="Chiragsp",
    password="admin",
    database="Inhouse_Admission_System"
)

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
            # print(mycursor.rowcount ,'!=' ,prev_count)
            # if mycursor.rowcount != prev_count: return True
            # else: return False 
            return True
    return True

def Backward():
    global iterator
    iterator -= 1
    sql_arr.pop()
    val_arr.pop()

def RowCount():
    mycursor = mydb.cursor()
    sql = "SELECT `StudentID` FROM `Admission Details`"
    mycursor.execute(sql)
    mycursor.fetchall()
    return mycursor.rowcount





# def UploadForm( sql, val, a):
#     prev_count = mycursor.rowcount
#     try:
#         mycursor.execute(sql, val)
#     except:
#         print("Mysql Error.")
#     if a == True:
#         mydb.commit()
#         print(mycursor.rowcount ,'!=' ,prev_count)
#         if mycursor.rowcount != prev_count: return True
#         else: return False
#     return True