import socket
import sys

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    sock.bind(('', 6667))
except socket.error as msg:
    print 'Bind failed. Error code: ' + str(msg[0]) + ', message: ' + msg[1]
    sys.exit()

sock.listen(10)

while 1:
    conn, addr = sock.accept()
    print 'Connected with ' + addr[0] + ':' + str(addr[1])
    conn.send(':irc.hellface.com NOTICE * :*** Please reconnect on port 6697 with SSL enabled.\n');
    conn.close()
    
sock.close()