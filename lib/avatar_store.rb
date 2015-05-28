require "avatar_store/version"
require 'digest/md5'

module AvatarStore

  FARM = "http://www.avatarstore.org"
  VALID_SIZE = [64, 128, 256]

  def self.img_src(email, size = nil)
    key = "#{FARM}/#{Digest::MD5.hexdigest email.downcase}"
    if !size.nil? and VALID_SIZE.include?(size)
      key = "#{key}/#{size}" if not size.nil?
    else
      key = "#{key}"
    end
    key
  end

end
