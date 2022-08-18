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

  
end