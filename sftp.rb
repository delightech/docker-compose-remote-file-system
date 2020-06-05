require 'net/sftp'
option = {
  password: 'c83eDteUDT',
  port: 10220
}
Net::SFTP.start('localhost', 'sftp', option) do |sftp|
  #sftp.mkdir!("/remote/test")
  # put先のディレクトリは/から始まる
  sftp.upload!(File.expand_path("./test.csv"), "/incoming/test.csv")
end
