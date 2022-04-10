import smtplib #importing the module
from smtplib import SMTPResponseException 
from getpass import getpass
from decouple import config

def message(receiver_add):
	
	sender_add='freakstar03@gmail.com' #storing the sender's mail id
	password=str(config('KEY'))
	 #creating the SMTP server object by giving SMPT server address and port number
	try:
		smtp_server=smtplib.SMTP("smtp.gmail.com",587)
		smtp_server.ehlo() #setting the ESMTP protocol
		smtp_server.starttls() #setting up to TLS connection
		smtp_server.ehlo() #calling the ehlo() again as encryption happens on calling startttls()
		smtp_server.login(sender_add,password) #logging into out email id
		message = """From: A.P.Shah <from@fromdomain.com>
		To: me <to@todomain.com>
		Subject: Admission Done

		Admission Done, If you got selected a response will be provided from us!
		"""
		#sending the mail by specifying the from and to address and the message 
		smtp_server.sendmail(sender_add,receiver_add,message)
		# print('Successfully the mail is sent') #priting a message on sending the mail
	except SMTPResponseException as err:
		print('error : ', err)
	finally:
		smtp_server.quit()#terminating the server

# receiver_add = '20104034.chirag.padyal@gmail.com' #storing the receiver's mail id
# password = str(config('KEY'))
# message(receiver_add, password)

