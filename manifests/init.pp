# Public: Install minecraft via s3 zipped file
#
# Examples
#
#  include minecraft
class minecraft {
  package { 'Minecraft':
    source   => 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg',
    provider => 'appdmg'
  }

  file { '/Applications/Minecraft.app/Contents/MacOS/JavaApplicationStub':
    mode    => '0755',
    require => Package['Minecraft'],
  }
}
