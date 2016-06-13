# README

Sample app for a potential bug in rails 5.0.0.rc1

* Ruby version: 2.3.1

* Database: PostgreSQL

* Setting up:
# Install PostgreSQL
# Create a new user rails with password rails that has the privilege to create databases.
# Install ruby 2.3.1
# Run `bundle` to install all gems
# Run `rails db:create`
# Run `rails db:migrate`
# Run `rails db:seed` .... boom! You'll see it fail as follows:
# Now uncomment the line `self.table_name = 'users'` from `app/models/user.rb` and db:seed will work fine!

PG::UndefinedTable: ERROR:  relation "application_records" does not exist
LINE 8:                WHERE a.attrelid = '"application_records"'::r...
                                          ^
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/postgresql/database_statements.rb:88:in `async_exec'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/postgresql/database_statements.rb:88:in `block in query'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/abstract_adapter.rb:566:in `block in log'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activesupport-5.0.0.rc1/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/abstract_adapter.rb:560:in `log'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/postgresql/database_statements.rb:87:in `query'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/postgresql_adapter.rb:739:in `column_definitions'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/postgresql/schema_statements.rb:227:in `columns'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/schema_cache.rb:56:in `columns'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/connection_adapters/schema_cache.rb:62:in `columns_hash'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/model_schema.rb:354:in `load_schema!'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/attributes.rb:233:in `load_schema!'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/attribute_decorators.rb:28:in `load_schema!'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/model_schema.rb:349:in `load_schema'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/model_schema.rb:266:in `attribute_types'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/attribute_methods.rb:179:in `has_attribute?'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/inheritance.rb:54:in `new'
/Users/foo/.rvm/gems/ruby-2.3.1@rails5.0/gems/activerecord-5.0.0.rc1/lib/active_record/persistence.rb:50:in `create!'
/Users/foo/Documents/projects/mirai/code/railsbug/db/seeds.rb:8:in `<top (required)>'


