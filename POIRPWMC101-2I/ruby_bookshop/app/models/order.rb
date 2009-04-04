class Order
  include DataMapper::Resource
  
  property :id, Serial

  property :customer_name, String
  property :price, Float

  belongs_to :book
end
