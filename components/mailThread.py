import threading
import time
from MysqlConn.mail_send import message

class myThread (threading.Thread):
   def __init__(self, name,email):
      threading.Thread.__init__(self)
      self.name = name
      self.email = email
   def run(self):
      print ("Starting " + self.name)
      for m in self.email:
        message(m)
      print( "Exiting " + self.name)

# # Create new threads
# thread1 = myThread("Thread-1" )
# thread2 = myThread("Thread-2")

# # Start new Threads
# thread1.start()
# thread2.start()

# print ("Exiting Main Thread")