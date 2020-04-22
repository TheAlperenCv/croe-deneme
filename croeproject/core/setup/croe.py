import socket


host  = "localhost"

port = 4545

s = socket.socket()
try:
  s.connect((host, port))

   cevap = s.recv(1024)

print(cevap.decode("utf-8"))


s.close()

except socket.error as hata:
  print("SUNUCU AKTİF DEĞİL > ", hata)
