require 'spec_helper'

describe AvatarStore do
  it 'has a version number' do
    expect(AvatarStore::VERSION).not_to be nil
  end

  it 'should calculate md5 for an email' do
    expect(AvatarStore.img_src('liubin0329@gmail.com')).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 64)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71/64")
  end

  it 'should have the extrat avatar size' do
    expect(AvatarStore.img_src('liubin0329@gmail.com')).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 64)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71/64")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 128)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71/128")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 256)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71/256")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 72)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71")
  end

end
