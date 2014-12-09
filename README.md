# Christmasify

Adds Santas hat to page logo

## Installation

Add this line to your application's Gemfile:

    gem 'christmasify', git: 'https://github.com/liepa/christmasify.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install christmasify


## Installation

  The christmasify file will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these lines:

  application.js:
  ```js
  //= require christmasify
  ```

  application.css
  ```css
  *= require christmasify
  ```


## Contributing

1. Fork it ( http://github.com/liepa/christmasify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
