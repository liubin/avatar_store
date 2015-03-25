# AvatarStore

helper methods for avatarstore.org

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'avatar_store'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install avatar_store

## Usage

There only one method `img_src`, the first parameter `email` is required, and `size` is optional.

```
irb(main):001:0> require 'avatar_store'
=> true

irb(main):002:0> e = "liubin0329@gmail.com"
=> "liubin0329@gmail.com"

irb(main):003:0> AvatarStore.img_src e
=> "//farm.avatarstore.org/2c07a4ee1a8447320fceb4a62989ed71"

irb(main):004:0> AvatarStore.img_src e, 32
=> "//farm.avatarstore.org/2c07a4ee1a8447320fceb4a62989ed71_32"
```


## Contributing

1. Fork it ( https://github.com/liubin/avatar_store/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
