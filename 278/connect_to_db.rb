require 'active_record'
require 'logger'

#ActiveRecord::Base.logger = Logger.new(STDOUT)
#ActiveRecord::Base.logger.formatter = proc { |sev, time, prog, msg| "#{msg}\n" }
ActiveRecord::Base.establish_connection(
  host:     "localhost",
  adapter:  "postgresql",
  username: "postgres",
  password: "postgres",
  database: "postgres")

class ContactUsComment < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :web_site
  validates_presence_of :country
  validates_presence_of :comments
end
