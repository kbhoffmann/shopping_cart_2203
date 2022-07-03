class ShoppingCart
  attr_reader :name, :capacity, :products
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete('^0-9').to_i
    # @capacity = capacity.delete("items").to_i   <-another option
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details_hash = Hash.new
    details_hash[:name] = name
    details_hash[:capacity] = capacity
    details_hash
  end
end
