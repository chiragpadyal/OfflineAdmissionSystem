
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QFileDialog 
from datetime import date
from components.roundimage import mask_image2

import os
import MysqlConn
class Ui_Form(object):

    def __init__(self, Form): #step 2 init
        self.setupUi( Form )

    def setupUi(self, Obj):
        Form = Obj.page1_holder #step 3 set page #step 4 remove the hoz from main temp
        Form.setObjectName("Form")
        Form.resize(454, 542)
        self.horizontalLayout = QtWidgets.QHBoxLayout(Form)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.main_middle_scroll_area = QtWidgets.QScrollArea(Form)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.main_middle_scroll_area.sizePolicy().hasHeightForWidth())
        self.main_middle_scroll_area.setSizePolicy(sizePolicy)
        self.main_middle_scroll_area.setMinimumSize(QtCore.QSize(0, 100))
        self.main_middle_scroll_area.setStyleSheet(
"\n"
"QComboBox{\n"
"height: 30px;\n"
"}\n"
"\n"
"QLabel{\n"
"    font-family: \"DejaVu Serif\" ;\n"
"\n"
"font-weight: bold;\n"
"}\n"
"\n"
"QPushButton{\n"
"height: 30px;\n"
"\n"
"}\n"
"QDateEdit{\n"
"height: 30px;\n"
"\n"
"}\n"
"\n"
"QLineEdit{\n"
"height: 30px;\n"
"\n"
"}\n"
"\n"
"\n"
"/*\n"
"QScrollArea{\n"
"  border: 1px solid black;\n"
"border-top-left-radius: 30px;\n"
"border-top-right-radius: 30px;\n"
"padding-left: 30px;\n"
"padding-right: 30px;\n"
"padding-top: 10px;\n"
"padding-bottom: 10px;\n"
"}\n"
"*/\n"
"QScrollArea{\n"
"\n"
"}\n"
"        QScrollBar:vertical {\n"
"            border: none;\n"
"            background: none;\n"
"            width:15px;    \n"
"            margin: 0px 0px 0px 0px;\n"
"\n"
"        }\n"
"\n"
"        QScrollBar::handle:vertical {\n"
"            background: lightgray;\n"
"border: 0px solid red;\n"
"border-radius: 3px;\n"
"        }\n"
"\n"
"        QScrollBar::add-line:vertical {\n"
"            background: none;\n"
"\n"
"\n"
"        }\n"
"\n"
"        QScrollBar::sub-line:vertical {\n"
"            background: none;\n"
"\n"
"        }\n"
"\n"
"\n"
"\n"
"")
        self.main_middle_scroll_area.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.main_middle_scroll_area.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.main_middle_scroll_area.setWidgetResizable(True)
        self.main_middle_scroll_area.setObjectName("main_middle_scroll_area")
        self.middle_scroll_area_vcont = QtWidgets.QWidget()
        self.middle_scroll_area_vcont.setGeometry(QtCore.QRect(0, 0, 421, 838))
        self.middle_scroll_area_vcont.setObjectName("middle_scroll_area_vcont")
        self.verticalLayout_10 = QtWidgets.QVBoxLayout(self.middle_scroll_area_vcont)
        self.verticalLayout_10.setObjectName("verticalLayout_10")
        self.personal_info_header = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        self.personal_info_header.setStyleSheet("*{font-family:  \"DejaVu Math TeX Gyre\";\n"
"}")
        self.personal_info_header.setObjectName("personal_info_header")
        self.verticalLayout_10.addWidget(self.personal_info_header)
        self.under_personal_header_line = QtWidgets.QFrame(self.middle_scroll_area_vcont)
        self.under_personal_header_line.setFrameShape(QtWidgets.QFrame.HLine)
        self.under_personal_header_line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.under_personal_header_line.setObjectName("under_personal_header_line")
        self.verticalLayout_10.addWidget(self.under_personal_header_line)
        self.profile_pic_label = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.profile_pic_label.sizePolicy().hasHeightForWidth())
        self.profile_pic_label.setSizePolicy(sizePolicy)
        self.profile_pic_label.setObjectName("profile_pic_label")
        self.verticalLayout_10.addWidget(self.profile_pic_label)
        self.image_vcont = QtWidgets.QHBoxLayout()
        self.image_vcont.setObjectName("image_vcont")
        self.image_profile = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.image_profile.sizePolicy().hasHeightForWidth())
        self.image_profile.setSizePolicy(sizePolicy)
        self.image_profile.setMaximumSize(QtCore.QSize(100, 100))
        self.image_profile.setAutoFillBackground(False)
        self.image_profile.setStyleSheet("")
        self.image_profile.setText("")
        
        self.image_profile.setPixmap(mask_image2(open("./images/profile_placeholder.png", 'rb').read(), 'png'))
        self.image_profile.setScaledContents(True)
        self.image_profile.setObjectName("image_profile")
        self.image_vcont.addWidget(self.image_profile)
        self.verticalLayout_10.addLayout(self.image_vcont)
        self.User_detail_label = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.User_detail_label.sizePolicy().hasHeightForWidth())
        self.User_detail_label.setSizePolicy(sizePolicy)
        self.User_detail_label.setMinimumSize(QtCore.QSize(0, 0))
        self.User_detail_label.setObjectName("User_detail_label")
        self.verticalLayout_10.addWidget(self.User_detail_label)
        self.form_gridCont = QtWidgets.QGridLayout()
        self.form_gridCont.setObjectName("form_gridCont")
        self.first_name = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.first_name.setObjectName("first_name")
        self.form_gridCont.addWidget(self.first_name, 1, 0, 1, 1)
        self.middle_name = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.middle_name.setObjectName("middle_name")
        self.form_gridCont.addWidget(self.middle_name, 1, 1, 1, 1)
        self.dob = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.dob.setReadOnly(True)
        self.dob.setObjectName("dob")
        self.form_gridCont.addWidget(self.dob, 6, 0, 1, 2)
        self.phone_no_opt = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.phone_no_opt.setObjectName("phone_no_opt")
        self.form_gridCont.addWidget(self.phone_no_opt, 18, 0, 1, 3)
        self.submit_btn = QtWidgets.QPushButton(self.middle_scroll_area_vcont)
        self.submit_btn.setObjectName("submit_btn")
        self.form_gridCont.addWidget(self.submit_btn, 20, 1, 1, 1)
        self.file_Selection_label = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.file_Selection_label.setText("")
        self.file_Selection_label.setReadOnly(True)
        self.file_Selection_label.setObjectName("file_Selection_label")
        self.form_gridCont.addWidget(self.file_Selection_label, 7, 0, 1, 2)
        self.state = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.state.setObjectName("state")
        self.form_gridCont.addWidget(self.state, 13, 2, 1, 1)
        self.city = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.city.setObjectName("city")
        self.form_gridCont.addWidget(self.city, 13, 1, 1, 1)
        self.email_id = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.email_id.sizePolicy().hasHeightForWidth())
        self.email_id.setSizePolicy(sizePolicy)
        self.email_id.setObjectName("email_id")
        self.form_gridCont.addWidget(self.email_id, 16, 0, 1, 3)
        self.country = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.country.setObjectName("country")
        self.form_gridCont.addWidget(self.country, 14, 0, 1, 3)
        self.address_opt = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.address_opt.setObjectName("address_opt")
        self.form_gridCont.addWidget(self.address_opt, 12, 0, 1, 3)
        self.browse_img = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.browse_img.setReadOnly(True)
        self.browse_img.setObjectName("browse_img")
        self.form_gridCont.addWidget(self.browse_img, 0, 0, 1, 2)
        self.phone_no = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.phone_no.setObjectName("phone_no")
        self.form_gridCont.addWidget(self.phone_no, 17, 0, 1, 3)
        self.address = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.address.setObjectName("address")
        self.form_gridCont.addWidget(self.address, 11, 0, 1, 3)
        self.tele_phone_no_opt = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.tele_phone_no_opt.setObjectName("tele_phone_no_opt")
        self.form_gridCont.addWidget(self.tele_phone_no_opt, 19, 0, 1, 3)
        self.Contact_det_label = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        self.Contact_det_label.setObjectName("Contact_det_label")
        self.form_gridCont.addWidget(self.Contact_det_label, 15, 0, 1, 1)
        self.browse_profile_btn = QtWidgets.QPushButton(self.middle_scroll_area_vcont)
        self.browse_profile_btn.setObjectName("browse_profile_btn")
        self.form_gridCont.addWidget(self.browse_profile_btn, 0, 2, 1, 1)
        self.dob_setter = QtWidgets.QDateEdit(self.middle_scroll_area_vcont)
        self.dob_setter.setProperty("showGroupSeparator", False)
        self.dob_setter.setCalendarPopup(True)
        self.dob_setter.setTimeSpec(QtCore.Qt.LocalTime)
        self.dob_setter.setObjectName("dob_setter")
        self.form_gridCont.addWidget(self.dob_setter, 6, 2, 1, 1)
        self.id_proof_drop_down = QtWidgets.QComboBox(self.middle_scroll_area_vcont)
        self.id_proof_drop_down.setObjectName("id_proof_drop_down")
        self.id_proof_drop_down.addItem("")
        self.id_proof_drop_down.addItem("")
        self.id_proof_drop_down.addItem("")
        self.form_gridCont.addWidget(self.id_proof_drop_down, 7, 2, 1, 1)
        self.zipcode = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.zipcode.setObjectName("zipcode")
        self.form_gridCont.addWidget(self.zipcode, 13, 0, 1, 1)
        self.last_name = QtWidgets.QLineEdit(self.middle_scroll_area_vcont)
        self.last_name.setObjectName("last_name")
        self.form_gridCont.addWidget(self.last_name, 1, 2, 1, 1)
        self.Residential_label = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        self.Residential_label.setObjectName("Residential_label")
        self.form_gridCont.addWidget(self.Residential_label, 9, 0, 1, 1)
        self.male_radioButton = QtWidgets.QRadioButton(self.middle_scroll_area_vcont)
        self.male_radioButton.setChecked(True)
        self.male_radioButton.setObjectName("male_radioButton")
        self.form_gridCont.addWidget(self.male_radioButton, 8, 1, 1, 1)
        self.female_radioButton = QtWidgets.QRadioButton(self.middle_scroll_area_vcont)
        self.female_radioButton.setObjectName("female_radioButton")
        self.form_gridCont.addWidget(self.female_radioButton, 8, 2, 1, 1)
        self.gender_label = QtWidgets.QLabel(self.middle_scroll_area_vcont)
        self.gender_label.setStyleSheet("*{\n"
"font-weight:0;\n"
"    font: 10pt \"Fira Mono\";\n"
"padding-left: 3px\n"
"}")
        self.gender_label.setObjectName("gender_label")
        self.form_gridCont.addWidget(self.gender_label, 8, 0, 1, 1)
        self.verticalLayout_10.addLayout(self.form_gridCont)
        self.main_middle_scroll_area.setWidget(self.middle_scroll_area_vcont)
        self.horizontalLayout.addWidget(self.main_middle_scroll_area)


        self.submit_btn.clicked.connect(lambda: self.UploadForm(Obj))
        self.browse_profile_btn.clicked.connect(lambda: self.clicker("photo"))
        self.id_proof_drop_down.currentIndexChanged.connect(lambda: self.clicker("id"))
        self.dob_setter.editingFinished.connect(lambda: self.date_method())

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def clicker(self, type):
        fname = QFileDialog.getOpenFileName(None, "Open File", "", " Document or Images (*.png *.jpg *.bmp *.pdf)"  )
        split_tup = os.path.splitext(fname[0])
        # Output filename to screen
        if type == "photo" and len(fname[0]) != 0 and split_tup[1] != '.pdf':
            self.browse_img.setText(fname[0])
            img_path = open(fname[0], 'rb').read()
            pixmap = mask_image2(img_path , split_tup[1])
            self.image_profile.setPixmap(pixmap)
            print(fname[0])
        elif type == "id"  and len(fname[0]) != 0:
            self.file_Selection_label.setText(fname[0])
            
    def date_method(self):
        value = self.dob_setter.date().toPyDate()
        dateS = value
        datestring = dateS.strftime("%d %B, %Y")
        print(datestring)
        self.dob.setText(datestring)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.personal_info_header.setText(_translate("Form", "Personal Information Form"))
        self.profile_pic_label.setText(_translate("Form", "Profile Picture:"))
        self.User_detail_label.setText(_translate("Form", "Users Details:"))
        self.first_name.setPlaceholderText(_translate("Form", "First name"))
        self.middle_name.setPlaceholderText(_translate("Form", "Middle name"))
        self.dob.setPlaceholderText(_translate("Form", "Select Date Of Birth"))
        self.phone_no_opt.setPlaceholderText(_translate("Form", "Phone Number 2 (optional)"))
        self.submit_btn.setText(_translate("Form", "Next"))
        self.file_Selection_label.setPlaceholderText(_translate("Form", "Select ID Proof From Drop Down"))
        self.state.setPlaceholderText(_translate("Form", "State"))
        self.city.setPlaceholderText(_translate("Form", "City"))
        self.email_id.setPlaceholderText(_translate("Form", "Email ID"))
        self.country.setPlaceholderText(_translate("Form", "Country"))
        self.address_opt.setPlaceholderText(_translate("Form", "Appartment, Area etc (optional)"))
        self.browse_img.setPlaceholderText(_translate("Form", "Browse Image"))
        self.phone_no.setPlaceholderText(_translate("Form", "Phone Number"))
        self.address.setPlaceholderText(_translate("Form", "Address"))
        self.tele_phone_no_opt.setPlaceholderText(_translate("Form", "Tele Number (optional)"))
        self.Contact_det_label.setText(_translate("Form", "Contact Details:"))
        self.browse_profile_btn.setText(_translate("Form", "Browse"))
        self.dob_setter.setDisplayFormat(_translate("Form", "d/M/yy"))
        self.id_proof_drop_down.setItemText(0, _translate("Form", "none"))
        self.id_proof_drop_down.setItemText(1, _translate("Form", "Adhar Card"))
        self.id_proof_drop_down.setItemText(2, _translate("Form", "Pan Card"))
        self.zipcode.setPlaceholderText(_translate("Form", "Zipcode"))
        self.last_name.setPlaceholderText(_translate("Form", "Last name"))
        self.Residential_label.setText(_translate("Form", "Residential Details:"))
        self.male_radioButton.setText(_translate("Form", "Male"))
        self.female_radioButton.setText(_translate("Form", "Female"))
        self.gender_label.setText(_translate("Form", "Gender:"))

    def UploadForm(self, Obj):
        sql = "INSERT INTO `Admission_Details` (`StudentID`, `ProfilePic`, `Firstname`, `Middlename`, `Lastname`, `DOB`, `IDProof`, `Gender`, `Address1`, `Address2`, `Zipcode`, `City`, `State`, `Country`, `EmailID`, `PhoneNo1`, `PhoneNo2`, `TelePhoneNo`) VALUES (%s, %s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s ) "
        val = (
            MysqlConn.RowCount() + 1,
            self.browse_img.text(),
            self.first_name.text(),
            self.middle_name.text(),
            self.last_name.text(),
            self.dob.text(),
            self.file_Selection_label.text(),
            'male' if self.male_radioButton.isChecked() else 'female',
            self.address.text(),
            self.address_opt.text(),
            self.zipcode.text(),
            self.city.text(),
            self.state.text(),
            self.country.text(),
            self.email_id.text(),
            self.phone_no.text(),
            self.phone_no_opt.text(),
            self.tele_phone_no_opt.text()
                )
        
        if MysqlConn.UploadForm(sql, val, False) == True:  Obj.stackedWidget.setCurrentIndex(1)
        else: MysqlConn.AlertPop("Wrong Or Empty Data!")
