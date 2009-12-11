require 'socket'

begin
  STDOUT.print 'Connecting...'
  STDOUT.flush
  #s = TCPSocket.open('ftp.ibiblio.org', 21)
  s = TCPSocket.open('localhost', 65000)
  STDOUT.puts 'done'
  local, peer = s.addr, s.peeraddr
  STDOUT.print("Connected to #{peer[2]}:#{peer[1]} (IP addr: #{peer[3]})")
  STDOUT.puts " using local port #{local[1]}"
  begin
    sleep(0.5)
    msg = s.read_nonblock(4096)
    STDOUT.puts.msg.chop
  rescue SystemCallError
  end

  loop do
    STDOUT.print '>'
    STDOUT.flush
    local = STDIN.gets
    break if !local
    s.puts(local)
    
    response = s.readpartial(8192)
    puts(response.chop)
  end

rescue
  puts $!
ensure
  s.close if s
end