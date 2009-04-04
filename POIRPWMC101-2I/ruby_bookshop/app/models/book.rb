class Book
  include DataMapper::Resource
  
  property :id, Serial
  
  property  :price, Float, :nullable => false, :scale => 2, :precision => 5,            
            :message =>"Please, enter the price in range [0.01, 999.99]."
  property :name, String, :nullable => false, :within => 3..40
  property :description, Text, :default => "To be provided"
  
  has n, :orders
      
  validates_is_unique :name
  validates_with_method :price, :positive_price?
  validates_with_method :name,  :sensible_name?
  
  
  def positive_price?
      if self.price <= 0.0
          [false, "Please, enter a positive price"]
      else
          true
      end
  end
  
  def sensible_name?
      stripped_name = self.name.strip
      if stripped_name == '' || stripped_name.length < 3
          [false, "Please, enter a sensible name with at least 3 significant caracter"]
      else
          true
      end
  end




end

