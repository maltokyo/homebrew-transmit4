cask 'transmit4' do
  version '4.4.13'
  sha256 '0d7095351378aa3c581de064f99fedecbfac683377048a4c0457976f5ce79f3b'

  url "http://download.panic.com/transmit/Transmit%204/Transmit%204.4.13.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}",
          checkpoint: '10018f05299078b9e4ae952a17a0476151afd29d5612c4fdb51cad84c2a01b79'
  name 'Transmit4'
  homepage 'https://panic.com/transmit/'

  app 'Transmit.app'

  zap trash: [
               '~/Library/Preferences/com.panic.Transmit.plist',
               '~/Library/Application Support/Transmit',
             ]
end
