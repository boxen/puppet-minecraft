# Public: Install minecraft via s3 zipped file
#
# Examples
#
#  include minecraft
class minecraft {
  package { 'Minecraft':
    source   => 'http://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.zip',
    provider => 'compressed_app'
  }

  file { '/Applications/Minecraft.app/Contents/MacOS/JavaApplicationStub':
    mode    => '0755',
    require => Package['Minecraft'],
  }
}
