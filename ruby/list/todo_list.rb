class TodoList
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def get_items
    @items 
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item)
    @items.delete_if{|x| x == item}
  end

  def get_item(i)
    @items.fetch(i)
  end

end 