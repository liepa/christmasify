# Christmasify

1) Adds Santas hat to page logo

2) Adds snow effect using three.js and canvas

## Installation

Add this line to your application's Gemfile:

  ```ruby
  gem 'christmasify', git: 'https://github.com/liepa/christmasify.git'
  ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install christmasify


### Santas hat

  application.css
  ```css
  *= require christmasify/hat
  ```

  in view (parent element should be positioned relative)
  ```ruby
  <%= santas_hat %>
  ```

### Snow

  application.css
  ```css
  *= require christmasify/snow
  ```

  application.js:
  ```js
  //= require christmasify
  ```

  in view where snow will be rendered
  ```ruby
  <%= snow %>
  ```

  And initialize snow on page ready (jQuery example)
  ```js
  jQuery(function(){
    Christmasify.snow.init('header_container');
  });
  ```

## Contributing

1. Fork it ( http://github.com/liepa/christmasify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
