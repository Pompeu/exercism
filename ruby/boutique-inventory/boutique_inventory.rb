class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map{|item| item[:name]}.sort
  end

  def cheap
    @items.filter{|item| item[:price] < 30}
  end

  def out_of_stock
    @items.filter{|item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items
      .filter{|item| item[:name] == name }
      .map{|item| item[:quantity_by_size]}
      .first
  end

  def total_stock
    @items
      .map{|item| item[:quantity_by_size].values}
      .flatten
      .sum
  end

end
