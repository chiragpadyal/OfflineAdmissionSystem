
from PyQt5 import QtCore, QtGui, QtWidgets
import sys

import MysqlConn


class Ui_Form(object):
    def __init__(self, Form): #step 2 init
        self.setupUi( Form )

    def setupUi(self, Obj):
        Form = Obj.page4_holder #step 3 set page #step 4 remove the hoz from main temp
        Form.setObjectName("Form")
        Form.resize(775, 564)
        self.verticalLayout = QtWidgets.QVBoxLayout(Form)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label = QtWidgets.QLabel(Form)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label, 0, QtCore.Qt.AlignHCenter)
        self.widget = QtWidgets.QWidget(Form)
        self.widget.setObjectName("widget")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout(self.widget)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.lineEdit = QtWidgets.QLineEdit(self.widget)
        self.lineEdit.setObjectName("lineEdit")
        self.horizontalLayout_2.addWidget(self.lineEdit)
        self.pushButton = QtWidgets.QPushButton(self.widget)
        self.pushButton.setObjectName("pushButton")
        self.horizontalLayout_2.addWidget(self.pushButton)
        self.comboBox = QtWidgets.QComboBox(self.widget)
        self.comboBox.setObjectName("comboBox")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.horizontalLayout_2.addWidget(self.comboBox)



        self.RefreshBtn = QtWidgets.QPushButton(self.widget)
        self.RefreshBtn.setObjectName("RefreshBtn")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("icons/reload.svg"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.RefreshBtn.setIcon(icon)

        self.horizontalLayout_2.addWidget(self.RefreshBtn)

        self.verticalLayout.addWidget(self.widget)
        self.widget_2 = QtWidgets.QWidget(Form)
        self.widget_2.setObjectName("widget_2")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.widget_2)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.tableWidget = QtWidgets.QTableWidget(self.widget_2)
        self.tableWidget.setShowGrid(True)
        self.tableWidget.setCornerButtonEnabled(False)
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(29)
        # self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setVerticalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(5, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(6, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(7, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(8, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(9, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(10, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(11, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(12, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(13, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(14, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(15, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(16, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(17, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(18, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(19, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(20, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(21, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(22, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(23, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(24, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(25, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(26, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(27, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(28, item)

        self.horizontalLayout.addWidget(self.tableWidget)
        self.verticalLayout.addWidget(self.widget_2)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)
        self.TableMapper()
        self.pushButton.clicked.connect(lambda: self.tableWidget.removeRow(0))
        self.RefreshBtn.clicked.connect(lambda: self.TableMapper())

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.label.setText(_translate("Form", "Admin Panel"))
        self.lineEdit.setPlaceholderText(_translate("Form", "Search By Name...."))
        self.pushButton.setText(_translate("Form", "Find"))
        self.comboBox.setItemText(0, _translate("Form", "All"))
        self.comboBox.setItemText(1, _translate("Form", "IT"))
        self.comboBox.setItemText(2, _translate("Form", "CS"))
        self.comboBox.setItemText(3, _translate("Form", "Civil"))
        self.comboBox.setItemText(4, _translate("Form", "Mech"))
        # item = self.tableWidget.verticalHeaderItem(0)
        # item.setText(_translate("Form", "Row_1"))

        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("Form", "Rank."))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("Form", "Profile"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("Form", "First Name"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("Form", "Middle Name"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("Form", "Last Name"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("Form", "DOB"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("Form", "Gender"))
        item = self.tableWidget.horizontalHeaderItem(7)
        item.setText(_translate("Form", "Branch"))
        item = self.tableWidget.horizontalHeaderItem(8)
        item.setText(_translate("Form", "Branch Optional"))
        item = self.tableWidget.horizontalHeaderItem(9)
        item.setText(_translate("Form", "Email Address"))
        item = self.tableWidget.horizontalHeaderItem(10)
        item.setText(_translate("Form", "Address"))
        item = self.tableWidget.horizontalHeaderItem(11)
        item.setText(_translate("Form", "City"))
        item = self.tableWidget.horizontalHeaderItem(12)
        item.setText(_translate("Form", "State"))
        item = self.tableWidget.horizontalHeaderItem(13)
        item.setText(_translate("Form", "Country"))
        item = self.tableWidget.horizontalHeaderItem(14)
        item.setText(_translate("Form", "Zipcode"))
        item = self.tableWidget.horizontalHeaderItem(15)
        item.setText(_translate("Form", "PhoneNo. 1"))
        item = self.tableWidget.horizontalHeaderItem(16)
        item.setText(_translate("Form", "PhoneNo. 2"))
        item = self.tableWidget.horizontalHeaderItem(17)
        item.setText(_translate("Form", "SSC"))
        item = self.tableWidget.horizontalHeaderItem(18)
        item.setText(_translate("Form", "HSC"))
        item = self.tableWidget.horizontalHeaderItem(19)
        item.setText(_translate("Form", "MH-CET"))
        item = self.tableWidget.horizontalHeaderItem(20)
        item.setText(_translate("Form", "Jee"))
        item = self.tableWidget.horizontalHeaderItem(21)
        item.setText(_translate("Form", "SSC_file"))
        item = self.tableWidget.horizontalHeaderItem(22)
        item.setText(_translate("Form", "HSC_file"))
        item = self.tableWidget.horizontalHeaderItem(23)
        item.setText(_translate("Form", "MH-CET_file"))
        item = self.tableWidget.horizontalHeaderItem(24)
        item.setText(_translate("Form", "Jee_file"))
        item = self.tableWidget.horizontalHeaderItem(25)
        item.setText(_translate("Form", "SSC Date"))
        item = self.tableWidget.horizontalHeaderItem(26)
        item.setText(_translate("Form", "HSC Date"))
        item = self.tableWidget.horizontalHeaderItem(27)
        item.setText(_translate("Form", "MH-CET Date"))
        item = self.tableWidget.horizontalHeaderItem(28)
        item.setText(_translate("Form", "Jee Date"))
        self.RefreshBtn.setText(_translate("Form", "Refresh", ))
        __sortingEnabled = self.tableWidget.isSortingEnabled()
        self.tableWidget.setSortingEnabled(False)
        self.tableWidget.setSortingEnabled(__sortingEnabled)


    def TableMapper(self):
        #combine
        while (self.tableWidget.rowCount() > 0):
            self.tableWidget.removeRow(0)
        mydb = MysqlConn.mydb
        mycursor = mydb.cursor()
        mycursor.execute("SELECT  a.`ProfilePic`, a.`Firstname`, a.`Middlename`, a.`Lastname`, a.`DOB`, a.`Gender`, b.Branch, b.Branch_Preferred, a.`EmailID`, a.`Address1`, a.`City`, a.`State`, a.`Country`, a.`Zipcode`, a.`PhoneNo1`, a.`PhoneNo2` , b.SSC, b.HSC, b.mhtcet, b.jee, b.ssc_file, b.hsc_file, b.mhcet_file, b.jee_file, b.ssc_date, b.hsc_date, b.mhcet_date, b.jee_date FROM `Admission Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID ")
        myresult = mycursor.fetchall()
        for x in myresult:
            a = self.tableWidget.rowCount() 
            b = a + 1
            self.tableWidget.setRowCount(b)
            
            item = QtWidgets.QTableWidgetItem()
            self.tableWidget.setVerticalHeaderItem(a, item)
            item = self.tableWidget.verticalHeaderItem(a)
            item.setText(str(b))

            for y in range(self.tableWidget.columnCount()):
                if y == 0:
                    #Rank Calculator
                    item = QtWidgets.QTableWidgetItem()
                    self.tableWidget.setItem(a, y , item)
                    item = self.tableWidget.item(a, y)
                    item.setText( str(a+1) )
                    continue
                #Table Mapper
                item = QtWidgets.QTableWidgetItem()
                self.tableWidget.setItem(a, y , item)
                item = self.tableWidget.item(a, y)
                item.setText( str(x[y-1]) )


    def getAdminData(self):
        mydb = MysqlConn.mydb
        mycursor = mydb.cursor()
        mycursor.execute("SELECT a.`StudentID`, a.`ProfilePic`, a.`Firstname`, a.`Middlename`, a.`Lastname`, a.`DOB`, a.`Gender`, b.Branch, b.Branch_Preferred, a.`EmailID`, a.`Address1`, a.`City`, a.`State`, a.`Country`, a.`Zipcode`, a.`PhoneNo1`, a.`PhoneNo2` , b.SSC, b.HSC, b.mhtcet, b.jee, b.ssc_file, b.hsc_file, b.mhcet_file, b.jee_file, b.ssc_date, b.hsc_date, b.mhcet_date, b.jee_date FROM `Admission Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID ")
        myresult = mycursor.fetchall()
        for x in myresult:
            print(x)

# SELECT a.`ProfilePic`,  a.`Firstname`, a.`Middlename`, a.`Lastname`, a.`DOB`, a.`PhoneNo1`, b.`Branch` , b.SSC , b.HSC, b.mhtcet, b.jee FROM `Admission Details` a, `Academic_Details` b

# SELECT * FROM `Admission Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID INNER JOIN `Branch_details` as c ON b.`Std_ID` = c.Std_ID

# SELECT * FROM `Admission Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID



if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    Form = QtWidgets.QWidget()
    controller = Ui_Form(Form)
    Form.show()
    sys.exit(app.exec_())       
