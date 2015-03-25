require 'spec_helper'

describe AvatarStore do
  it 'has a version number' do
    expect(AvatarStore::VERSION).not_to be nil
  end

  it 'should calculate md5 for an email' do
    expect(AvatarStore.img_src('liubin0329@gmail.com')).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71")
    expect(AvatarStore.img_src('liubin0329@gmail.com', 32)).to eq("#{AvatarStore::FARM}/2c07a4ee1a8447320fceb4a62989ed71_32")
  end
end
