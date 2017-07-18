
# Log of activities to build new-casserver

```bash
cd ~
git clone git@github.com:dgreen/CASinoApp.git
```

11. Tried to start the CASino server, it would not start since all the gems were moved.
12. While in CASinoApp directory, did a `gem install bundler`, followed by a new `bundle install` which
    put all of this into the ./vendor/bundle instead of in the system.
13. start CASinoApp: `RAILS_ENV=production bundle exec rails s -p 8081 -b 0.0.0.0`

References: https://github.com/ralphos/omniauth-facebook-example


URL: https://ee448-newcas-demo-dgreenbhm.c9users.io/auth/cas3

/usr/local/rvm/gems/ruby-2.3.0/gems/omniauth-cas3-1.1.4/lib/omniauth/strategies/cas3 
comment out https on service validation
