class minecraft {
  package { 'Minecraft':
    source => template('minecraft/download_url'),
    provider => 'compressed_app'
  }
}
