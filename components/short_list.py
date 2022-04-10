
from PyQt5 import QtCore, QtGui, QtWidgets, QtPrintSupport
import sys
import mysql.connector
from components.mailThread import myThread


# import MysqlConn

html = """<html>
    <head>
    <style>
    table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    }
    </style>
    </head>"""
class Ui_Form(object):
    civil = []
    mech = []
    IT = []
    CS = []
    def __init__(self, Form): #step 2 init
        self.setupUi( Form )

    def setupUi(self, Obj):
        Form = Obj.page8_holder #step 3 set page #step 4 remove the hoz from main temp
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
        self.pushButton = QtWidgets.QPushButton(self.widget)
        self.pushButton.setObjectName("pushButton")
        self.horizontalLayout_2.addWidget(self.pushButton)


        self.pushButton2 = QtWidgets.QPushButton(self.widget)
        self.pushButton2.setObjectName("pushButton2")
        self.horizontalLayout_2.addWidget(self.pushButton2)

        self.comboBox = QtWidgets.QComboBox(self.widget)
        self.comboBox.setObjectName("comboBox")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.comboBox.addItem("")
        self.horizontalLayout_2.addWidget(self.comboBox)
        self.verticalLayout.addWidget(self.widget)
        self.widget_2 = QtWidgets.QWidget(Form)
        self.widget_2.setObjectName("widget_2")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.widget_2)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.tableWidget = QtWidgets.QTableWidget(self.widget_2)
        self.tableWidget.setShowGrid(True)
        self.tableWidget.setCornerButtonEnabled(False)
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(14)
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



        self.horizontalLayout.addWidget(self.tableWidget)
        self.verticalLayout.addWidget(self.widget_2)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)
        self.TableMapper(None, self.comboBox.currentText())
        self.comboBox.setCurrentIndex(0)
        self.comboBox.currentIndexChanged.connect(lambda: self.TableMapper(None, self.comboBox.currentText()))
        self.pushButton.clicked.connect(lambda: self.controll())
        self.pushButton2.clicked.connect(lambda: self.mailall())

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.label.setText(_translate("Form", "Final List"))
        self.pushButton.setText(_translate("Form", "Print"))
        self.pushButton2.setText(_translate("Form", "Mail"))
        self.comboBox.setItemText(0, _translate("Form", "Civil Engineering"))
        self.comboBox.setItemText(1, _translate("Form", "Mechanical Engineering"))
        self.comboBox.setItemText(2, _translate("Form", "Information Technology"))
        self.comboBox.setItemText(3, _translate("Form", "Computer Science"))

        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("Form", "Rank."))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("Form", "First Name"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("Form", "Middle Name"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("Form", "Last Name"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("Form", "DOB"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("Form", "Gender"))
        item = self.tableWidget.horizontalHeaderItem(6)
        item.setText(_translate("Form", "Branch"))
        item = self.tableWidget.horizontalHeaderItem(7)
        item.setText(_translate("Form", "Branch Optional"))
        item = self.tableWidget.horizontalHeaderItem(8)
        item.setText(_translate("Form", "Email Address"))
        item = self.tableWidget.horizontalHeaderItem(9)
        item.setText(_translate("Form", "PhoneNo. 1"))
        item = self.tableWidget.horizontalHeaderItem(10)
        item.setText(_translate("Form", "SSC"))
        item = self.tableWidget.horizontalHeaderItem(11)
        item.setText(_translate("Form", "HSC"))
        item = self.tableWidget.horizontalHeaderItem(12)
        item.setText(_translate("Form", "MH-CET"))
        item = self.tableWidget.horizontalHeaderItem(13)
        item.setText(_translate("Form", "Jee"))

        __sortingEnabled = self.tableWidget.isSortingEnabled()
        self.tableWidget.setSortingEnabled(False)
        self.tableWidget.setSortingEnabled(__sortingEnabled)


    def TableMapper(self, table, currentText):
        #combine
        while (self.tableWidget.rowCount() > 0):
            self.tableWidget.removeRow(0)
        mydb = mysql.connector.connect(
            host="127.0.0.1",
            user="root",
            password="root",
            database="Inhouse_Admission_System",
            port=3307
        )
        mycursor = mydb.cursor()
        QuerySql = "SELECT a.`Firstname`, a.`Middlename`, a.`Lastname`, a.`DOB`, a.`Gender`, b.Branch, b.Branch_Preferred, a.`EmailID`, a.`PhoneNo1`,b.SSC, b.HSC, b.mhtcet, b.jee FROM `Admission_Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID "
        # QuerySql = "SELECT a.`StudentID`, a.`ProfilePic`, a.`Firstname`, a.`Middlename`, a.`Lastname`, a.`DOB`, a.`Gender`, b.Branch, b.Branch_Preferred, a.`EmailID`, a.`Address1`, a.`City`, a.`State`, a.`Country`, a.`Zipcode`, a.`PhoneNo1`, a.`PhoneNo2` , b.SSC, b.HSC, b.mhtcet, b.jee, b.ssc_file, b.hsc_file, b.mhcet_file, b.jee_file, b.ssc_date, b.hsc_date, b.mhcet_date, b.jee_date FROM `Admission_Details` as a INNER JOIN `Academic_Details` as b  ON a.`StudentID` = b.Std_ID "
        QuerySql = QuerySql +  " where b.Branch = '" + currentText + "'"
        QuerySql = QuerySql + " ORDER BY b.mhtcet DESC, b.HSC DESC, b.SSC DESC LIMIT 10"
        mycursor.execute(QuerySql)
        myresult = mycursor.fetchall()
        for x in myresult:
            if (table == "civil"):
                self.civil.append(x[7])
            elif (table=="IT"):
                self.IT.append(x[7])
            elif( table=="mech" ):
                self.mech.append( x[7] )
            elif(table=="CS"):
                self.CS.append( x[7])

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


    def controll(self):
        # self.comboBox.setCurrentIndex(0)
        # self.print_pdf("Civil")
        # self.comboBox.setCurrentIndex(1)
        # self.print_pdf("Mechanical")
        # self.comboBox.setCurrentIndex(2)
        # self.print_pdf("Information Technology")
        # self.comboBox.setCurrentIndex(3)
        # self.print_pdf("Computer Science")

        self.TableMapper("civil", "Civil Engineering")
        self.print_pdf("Civil")
        self.TableMapper("mech", "Mechanical Engineering")
        self.print_pdf("Mechanical")
        self.TableMapper("IT", "Information Technology")
        self.print_pdf("Information Technology")
        self.TableMapper("CS", "Computer Science")
        self.print_pdf("Computer Science")
        self.TableMapper(None, self.comboBox.currentText())

        self.printall()

    def print_pdf(self, title):
        global html
        model = self.tableWidget.model()
        # Map html
        html += "<h3>"+title+" Cut Off List </h3>"
        html += "<table><thead>"
        html += "<tr>"
        for c in range(model.columnCount()):
            html += "<th>{}</th>".format(model.headerData(c, QtCore.Qt.Horizontal))

        html += "</tr></thead>"
        html += "<tbody>"
        for r in range(model.rowCount()):
            html += "<tr>"
            for c in range(model.columnCount()):
                html += "<td>{}</td>".format(model.index(r, c).data() or "")
            html += "</tr>"
        html += "</tbody></table>"

    def printall(self):
        global html
        doc = QtGui.QTextDocument()
        filename = "FinalList.pdf"
        printer = QtPrintSupport.QPrinter(QtPrintSupport.QPrinter.PrinterResolution)
        printer.setOutputFormat(QtPrintSupport.QPrinter.PdfFormat)
        printer.setPaperSize(QtPrintSupport.QPrinter.A4)
        printer.setOrientation(QtPrintSupport.QPrinter.Landscape)
        printer.setOutputFileName(filename)

        doc.setHtml(html)
        doc.setPageSize(QtCore.QSizeF(printer.pageRect().size()))
        doc.print_(printer)

    def mailall(self):
        myThread("thread1" , self.CS).start()
        myThread("thread2" , self.IT).start()
        myThread("thread3" , self.civil).start()
        myThread("thread4" , self.mech).start()
        # print(self.CS)
        # print(self.IT)
        # print(self.civil)
        # print(self.mech)

if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    Form = QtWidgets.QWidget()
    controller = Ui_Form(Form)
    Form.show()
    sys.exit(app.exec_())       
