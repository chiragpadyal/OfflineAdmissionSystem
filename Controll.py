import sys
from PyQt5 import QtWidgets, QtCore , QtGui
from PyQt5.QtWidgets import ( QMessageBox )
from main_template import Ui_MainWindow as page2
from Login import Ui_Login as page1
from PyQt5.QtGui import QPalette, QColor
from PyQt5.QtCore import Qt
#do not works with mainwindow
import mysql.connector

class Login(QtWidgets.QWidget,page1):
    switch_window = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QWidget.__init__(self)
        self.setupUi(self)
        self.pushButton.clicked.connect(lambda: self.switch_window.emit())


class Newuser(QtWidgets.QMainWindow, page2):
    ThemeSet = 'White'
    switch_window = QtCore.pyqtSignal()
    switch_window2 = QtCore.pyqtSignal()

    def __init__(self):
        QtWidgets.QMainWindow.__init__(self)
        self.setupUi(self)
        self.noticeUpdate()
        self.logout_btn.clicked.connect(lambda: self.switch_window.emit())
        self.signal_notice.connect(lambda: self.noticeUpdate())
        self.head_drop.currentIndexChanged.connect(lambda: self.changeTheme())
    
    def noticeUpdate(self):
        a = syncNotice()
        self.MainTextEdit.clear()
        for i in a:
            if (i[1] == "Important"):self.MainTextEdit.setTextBackgroundColor(QColor('#CD5C5C'))
            else: self.MainTextEdit.setTextBackgroundColor(QColor('#66FFE6')) 
            self.MainTextEdit.append("Title: " + i[0] )
            self.MainTextEdit.append("Body: " + i[2])
            self.MainTextEdit.setTextBackgroundColor(QColor('#FFFFF0')) 
            self.MainTextEdit.append("")
    def changeTheme(self):
        if self.head_drop.currentIndex() == 0:
            self.head_btn.setPixmap(QtGui.QPixmap("icons/sun.png"))
        else:
            self.head_btn.setPixmap(QtGui.QPixmap("icons/moon.png"))
        self.ThemeSet = ToggleTheme(self.ThemeSet)
  
class Controller:
    def show_login_page(self):
        self.login = Login()#login constructor is called
        self.login.switch_window.connect(self.show_newuser_page)#on the emission of signal changes the function
        self.login.show()
        if hasattr(self, 'newuser'): self.newuser.close()#to cycle back and forth(as it is first page)

    def show_newuser_page(self):
        self.newuser = Newuser()
        self.newuser.switch_window.connect(self.show_login_page)
        self.login.close()
        self.newuser.show()



def ToggleTheme(ThemeSet):
    if ThemeSet == "White":
        app.setStyleSheet(open("Stylesheets/pyqt5-dark-theme.stylesheet").read())
        return 'Dark'
   
    elif ThemeSet == "Dark":
        app.setStyleSheet(open("Stylesheets/pyqt5-light-theme.stylesheet").read())
        return 'White'

def syncNotice():
    mydb = mysql.connector.connect(
            host="localhost",
            user="Chiragsp",
            password="admin",
            database="Inhouse_Admission_System"
    )

    mycursor = mydb.cursor()

    mycursor.execute("SELECT `Title`,`Prioirty`,`Body` FROM `Notice_Board`")

    myresult = mycursor.fetchall()
    return myresult

app = QtWidgets.QApplication(sys.argv)
if __name__ == "__main__":
    app.setStyle("Fusion")
    app.setStyleSheet(open("Stylesheets/pyqt5-light-theme.stylesheet").read())
    controller = Controller()
    controller.show_login_page()
    sys.exit(app.exec_())
