### Basic Heroku Static Site

This is more or less the simple structure for either a 100% static site, and or a basic sinatra app hosted on heroku.

Enjoy!

### Heroku

http://devcenter.heroku.com/articles/quickstart

### Setup

1. git clone git@github.com:peppyheppy/heroku_static.git
2. Signup for a Heroku account (of you don't already have one)
3. gem install heroku
4. heroku create appname
5. git remote add heroku git@heroku.com:appname.git
4. heroku addons:add custom_domains:basic
5. heroku domains:add www.peppyheppy.com (add your domain not mine)
6. Update your DNS to point to the ips found on: http://devcenter.heroku.com/tags/ip-address
7. Add your static files in the public directory
8. Add Ruby/Sinatra stuff as needed
9. Go on over to your new site and collect the dough from your client, mom, cousin, or neighbor

Note: I probably missed some steps.

### Contributing

Sure, why not. Fork the project, make your changes, and I will bring them in.


http://www.prppyheppy.com   


