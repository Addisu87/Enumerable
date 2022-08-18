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
      @check_all = unless yield(i)
    end
    @check_all
  end

  def any?
    @lists.each do |i|
      return true if yield i
    end
    false    
  end

  
  
end