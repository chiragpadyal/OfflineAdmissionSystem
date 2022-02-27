# -*- coding: utf-8 -*-

from PyQt5 import QtCore, QtGui, QtWidgets
import mysql.connector
class Ui_Form(object):
    def __init__(self, Form): #step 2 init
        self.setupUi( Form )

    def setupUi(self, Obj):
        Form = Obj.page5_holder #step 3 set page #step 4 remove the hoz from main temp
        Form.setObjectName("Form")
        Form.resize(400, 462)
        self.horizontalLayout = QtWidgets.QHBoxLayout(Form)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.main_widget = QtWidgets.QWidget(Form)
        self.main_widget.setObjectName("main_widget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.main_widget)
        self.verticalLayout.setObjectName("verticalLayout")
        self.Title = QtWidgets.QLabel(self.main_widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Title.sizePolicy().hasHeightForWidth())
        self.Title.setSizePolicy(sizePolicy)
        self.Title.setObjectName("Title")
        self.verticalLayout.addWidget(self.Title)
        self.body_widget = QtWidgets.QWidget(self.main_widget)
        self.body_widget.setObjectName("body_widget")
        self.verticalLayout_2 = QtWidgets.QVBoxLayout(self.body_widget)
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.head_widget = QtWidgets.QWidget(self.body_widget)
        self.head_widget.setObjectName("head_widget")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout(self.head_widget)
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.head_label = QtWidgets.QLabel(self.head_widget)
        self.head_label.setObjectName("head_label")
        self.horizontalLayout_2.addWidget(self.head_label)
        self.lineEdit = QtWidgets.QLineEdit(self.head_widget)
        self.lineEdit.setObjectName("lineEdit")
        self.horizontalLayout_2.addWidget(self.lineEdit)
        self.verticalLayout_2.addWidget(self.head_widget)
        self.priority_widget = QtWidgets.QWidget(self.body_widget)
        self.priority_widget.setObjectName("priority_widget")
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout(self.priority_widget)
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.priority_label = QtWidgets.QLabel(self.priority_widget)
        self.priority_label.setObjectName("priority_label")
        self.horizontalLayout_4.addWidget(self.priority_label)
        self.piority_combobox = QtWidgets.QComboBox(self.priority_widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.piority_combobox.sizePolicy().hasHeightForWidth())
        self.piority_combobox.setSizePolicy(sizePolicy)
        self.piority_combobox.setObjectName("piority_combobox")
        self.piority_combobox.addItem("")
        self.piority_combobox.addItem("")
        self.horizontalLayout_4.addWidget(self.piority_combobox)
        self.verticalLayout_2.addWidget(self.priority_widget)
        self.body_label = QtWidgets.QLabel(self.body_widget)
        self.body_label.setObjectName("body_label")
        self.verticalLayout_2.addWidget(self.body_label)
        self.body_text_input = QtWidgets.QPlainTextEdit(self.body_widget)
        self.body_text_input.setObjectName("body_text_input")
        self.verticalLayout_2.addWidget(self.body_text_input)
        self.verticalLayout.addWidget(self.body_widget)
        self.submit_widget = QtWidgets.QWidget(self.main_widget)
        self.submit_widget.setObjectName("submit_widget")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout(self.submit_widget)
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.space_1 = QtWidgets.QLabel(self.submit_widget)
        self.space_1.setText("")
        self.space_1.setObjectName("space_1")
        self.horizontalLayout_3.addWidget(self.space_1)
        self.notice_publish = QtWidgets.QPushButton(self.submit_widget)
        self.notice_publish.setObjectName("notice_publish")
        self.horizontalLayout_3.addWidget(self.notice_publish)
        self.space_2 = QtWidgets.QLabel(self.submit_widget)
        self.space_2.setText("")
        self.space_2.setObjectName("space_2")
        self.horizontalLayout_3.addWidget(self.space_2)
        self.verticalLayout.addWidget(self.submit_widget)
        self.horizontalLayout.addWidget(self.main_widget)
        self.notice_publish.clicked.connect(lambda: self.insertMysql(Obj))
        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    # def publish(self, Obj):
    #     Obj.signal_notice.emit()

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.Title.setText(_translate("Form", "Publish Notice"))
        self.head_label.setText(_translate("Form", "Header:"))
        self.lineEdit.setPlaceholderText(_translate("Form", "Title"))
        self.priority_label.setText(_translate("Form", "Priority:"))
        self.piority_combobox.setItemText(0, _translate("Form", "Important"))
        self.piority_combobox.setItemText(1, _translate("Form", "Casual"))
        self.body_label.setText(_translate("Form", "Body:"))
        self.notice_publish.setText(_translate("Form", "Publish"))


    def insertMysql(self ,Obj):
        body = self.body_text_input.toPlainText()
        title = self.lineEdit.text()
        priority = self.piority_combobox.currentText()
        mydb = mysql.connector.connect(
            host="localhost",
            user="Chiragsp",
            password="admin",
            database="Inhouse_Admission_System"
        )

        mycursor = mydb.cursor()

        sql = "INSERT INTO `Notice_Board` (`Title`, `Prioirty`, `Body`) VALUES ( %s, %s, %s);"
        val = (title, priority, body)
        mycursor.execute(sql, val)

        mydb.commit()
        Obj.signal_notice.emit()

        print(mycursor.rowcount, "record inserted.")