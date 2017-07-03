
Following:  <http://casino.rbcas.com/docs/installation/>

1. git clone ...
2. cd CASinoApp
3. edit .ruby-version to 2.3.0
4. ./script/install sqlite
5. Update cas.yml to use sqlite3
6. Add  
    ```
    */5 * * * * cd /home/ubuntu/CASinoApp && RAILS_ENV=production bundle exec rake casino:cleanup:all > /dev/null
    ````
   to cron using:  `crontab -e`
   
6. edit `production.rb`

    DEPRECATION WARNING: The configuration option `config.serve_static_assets` has been renamed to `config.serve_static_files` to clarify its role (it merely enables serving everything in the `public` folder and is unrelated to the asset pipeline). The `serve_static_assets` alias will be removed in Rails 5.0. Please migrate your configuration files accordingly. (called from block in <top (required)> at /home/ubuntu/CASinoApp/config/environments/production.rb:12)

    DEPRECATION WARNING: You did not specify a `log_level` in `production.rb`. Currently, the default value for `log_level` is `:info` for the production environment and `:debug` in all other environments. In Rails 5 the default value will be unified to `:debug` across all environments. To preserve the current setting, add the following line to your `production.rb`:

    config.log_level = :info


7. bundle exec rake db:migrate SCOPE=casino
8. bundle exec rake assets:precompile

Use:

RAILS_ENV=production bundle exec rails s -p 8081 -b 0.0.0.0