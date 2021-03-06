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

class G197Customer < ActiveRecord::Base
  has_many :g197_orders
end

class G197SalesRep < ActiveRecord::Base
  has_many :g197_orders
end

class G197Order < ActiveRecord::Base
  belongs_to :g197_sales_rep
  has_many :g197_order_items
  belongs_to :g197_customer
end

class G197OrderItem < ActiveRecord::Base
  belongs_to :g197_order
  belongs_to :g197_product
end

class G197Product < ActiveRecord::Base
  has_many :g197_order_items
end
