def question_server()
  server = TCPServer.new('localhost',2345)
  count = 0
  loop do
    socket = server.accept
    request = socket.gets

    if request.include?("getMathsQuestion?")
      parameters = request.split('?')[1]
      parameters = parameters.split(' ')[0]
      paramarray = parameters.split('/')
      lower = paramarray[1].to_i
      upper = paramarray[2].to_i
    end
 
    STDERR.puts request
    response = question(lower,upper)
    socket.print "HTTP/1.1 200 OK\r\n" +
                   "Content-Type: text/plain\r\n" +
                   "Content-Length: #{response.bytesize}\r\n" +
                   "Connection: close\r\n"
     socket.print "\r\n"
     socket.print response
     socket.close
  end
end
