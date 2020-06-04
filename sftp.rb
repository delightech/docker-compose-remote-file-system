require 'net/sftp'
option = {
  password: 'pass',
  port: 10220
}
Net::SFTP.start('localhost', 'sftp-without-key', option) do |sftp|
  #sftp.mkdir!("/remote/test")
  sftp.upload!(File.expand_path("./test.csv"), "/remote/test.csv")
end
