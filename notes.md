
# Log of activities to build new-casdemo

1. Base Cloud9 Rails.
2. Add another service at root for Casino (separate punch list)
3. Add `gem 'omniauth-cas3'` to `Gemfile`
4. Run `bundle` inside workspace - failed due to conflict on version of nokogirl
5. Ran `bundle update` to resolve
6. Run `rails g model User provider:string uid:string name:string email:string`
   to generate a User model which has the fields we need (it could have more)
7. Run `rake db:migrate` to apply changes to database
8. Run Create a new file called `omniauth.rb` in the `config/initializers` directory
9. See rails still runs, debug typos
10. Create a sessions controller... `rails g controller sessions`
11. Tried to start the CASino server, it would not start since all the gems were moved.
12. While in CASinoApp directory, did a `gem install bundler`, followed by a new `bundle install` which
    put all of this into the ./vendor/bundle instead of in the system.
13. start CASinoApp: `RAILS_ENV=production bundle exec rails s -p 8081 -b 0.0.0.0`
14. Updated cloud's hosts to table to map server to localhost for self-reference

Present problem is callback is not working... I wonder if we are having a problem of addressing with
the cloud code.  Issue with using / not using ssl (and the environment of Cloud9)

References: https://github.com/ralphos/omniauth-facebook-example


URL: https://ee448-newcas-demo-dgreenbhm.c9users.io/auth/cas3

/usr/local/rvm/gems/ruby-2.3.0/gems/omniauth-cas3-1.1.4/lib/omniauth/strategies/cas3 
comment out https on service validation

15. Moved the CAS server into its own machine to (hopefully) get around the SSL issue.