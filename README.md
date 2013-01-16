# [Middleman](http://middlemanapp.com/) & [Twitter Bootstrap](http://twitter.github.com/bootstrap/)

## A simple Middleman starting point

demo:

[http://middleman-bootstrap.herokuapp.com/](http://middleman-bootstrap.herokuapp.com/)

supports:

* [Slim](http://slim-lang.com/)
* [CoffeeScript](http://coffeescript.org/)
* [Sass](http://sass-lang.com/)
* [Compass](http://compass-style.org/)
* [TwitterBootstrap](http://twitter.github.com/bootstrap/)
* [jQuery](http://jquery.com/)
* [Modernizr](http://modernizr.com/)
* [FontAwesome](http://fortawesome.github.com/Font-Awesome/)

install:


```
$ git clone git://github.com/fujimogn/middleman-bootstrap.git #{APP_DIR} && cd #{APP_DIR}
( $ gem install bundle --pre )
$ bundle install --without production
$ bower install
```

deploy:

```
$ heroku create middleman-bootstrap --stack cedar
$ git add .
$ git commit -m "first commit"
$ git push heroku master
```
