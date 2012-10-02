class minecraft {
  package { 'Minecraft':
    source   => 'http://s3.amazonaws.com/MinecraftDownload/launcher/Minecraft.zip',
    provider => 'compressed_app'
  }
}
