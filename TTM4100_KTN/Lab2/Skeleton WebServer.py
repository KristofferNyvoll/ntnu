# This skeleton is valid for both Python 2.7 and Python 3.
# You should be aware of your additional code for compatibility of the Python version of your choice.

# Import socket module
from socket import *

# Create a TCP server socket
#(AF_INET is used for IPv4 protocols)
#(SOCK_STREAM is used for TCP)
serverSocket = socket(AF_INET, SOCK_STREAM)

# Prepare a server socket
# FILL IN START


# Assign a port number
serverPort = 6789

#serverSocket.connect((serverName, serverPort))
# Bind the socket to server address and server port
serverSocket.bind(('', serverPort))

# Listen to at most 1 connection at a time (max. number of threads in the connection queue)
serverSocket.listen(1)

# FILL IN END

# Server should be up and running and listening to the incoming connections
while True:
	print('Ready to serve...')

	# Set up a new connection from the client
	connectionSocket, addr = serverSocket.accept()

	# If an exception occurs during the execution of try clause
	# the rest of the clause is skipped
	# If the exception type matches the word after except
	# the except clause is executed
	try:
		# Receives the request message from the client
		message = connectionSocket.recv(2048)

		# Extract the path of the requested object from the message
		# The path is the second part of HTTP header, identified by [1]
		filepath = message.split()[1]

		# Because the extracted path of the HTTP request includes
		# a character '\', we read the path from the second character
		
		f = open(filepath[1:].decode())
		print('../'+filepath[1:])
		# Read the file "f" and store the entire content of the requested file in a temporary buffer
		outputdata = f.read() # FILL IN START		# FILL IN END

		# Send the HTTP response header line to the connection socket
		# Format: "HTTP/1.1 *code-for-successful-request*\r\n\r\n"
		connectionSocket.send("HTTP/1.1 200 OK\r\n\r\n".encode())
 		

		# Send the content of the requested file to the connection socket  
		response = outputdata + "\r\n"
		connectionSocket.send(response.encode()) #Python 3

		# Close the client connection socket
		connectionSocket.close()

	except (IOError, IndexError) as e:
		# Send HTTP response message for file not found
		# Same format as above, but with code for "Not Found" (see outputdata variable)
		print(e)
		connectionSocket.send("HTTP/1.1 404 Not Found\r\n\r\n".encode())
		connectionSocket.send("<html><head></head><body><h1>404 Not Found</h1></body></html>\r\n".encode())

		# Close the client connection socket
		connectionSocket.close()

serverSocket.close()