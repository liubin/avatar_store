require "avatar_store/version"
require 'digest/md5'

module AvatarStore

  FARM = "//farm.avatarstore.org"

  def self.img_src(email, size = nil)
    key = "#{FARM}/#{Digest::MD5.hexdigest email.downcase}"
    key = "#{key}_#{size}" if not size.nil?
    key
  end

end
