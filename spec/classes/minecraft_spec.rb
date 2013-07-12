require 'spec_helper'

describe 'minecraft' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end
  it do
    should contain_package('Minecraft').with({
      :source   => 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg',
      :provider => 'appdmg'
    })
  end
end
