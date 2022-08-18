module Enumerator
  def list_items
    @lists = []
    each do |i|
      @lists.push(i)
    end
    @lists
  end

  def all?
    @check_all = true
    each do |i|
      @check_all = false unless yield i
    end
    @check_all
  end

  def any?
    @check_any = false
    each do |i|
      @check_any = true if yield i
    end
    @check_any
  end

  def filter?
    @filtered_result = []
    each do |i|
      @filtered_result.push(i) if yield i
    end
    @filtered_result
  end

  def max?
    list_items.max
  end

  def min?
    list_items.min
  end

  def sort?
    list_items.sort
  end

  private: list_items
end
