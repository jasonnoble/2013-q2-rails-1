require 'active_record'
require 'logger'

#ActiveRecord::Base.logger = Logger.new(STDOUT)
#ActiveRecord::Base.logger.formatter = proc { |sev, time, prog, msg| "#{msg}\n" }
if ENV['DATABASE_URL']
  db = URI.parse(ENV['DATABASE_URL'])
  ActiveRecord::Base.establish_connection({
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :port     => db.port,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8',
  })
else
  ActiveRecord::Base.establish_connection(
    host:     "localhost",
    adapter:  "postgresql",
    username: "postgres",
    password: "postgres",
    database: "postgres")
end

class G301User < ActiveRecord::Base
  validates_presence_of :username
  validates_presence_of :password
  validates_uniqueness_of :username
  has_secure_password
end
