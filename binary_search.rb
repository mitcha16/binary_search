class Search

  def binary_search(elements, value)
    if elements.size < 2 && elements[0] != value
      return "cannot be found!"
    end
    middle = elements[elements.size/2]
    if value == middle
      return "you found it!"
    elsif value > middle
      binary_search(elements[elements.size/2 + 1..-1], value)
    elsif value < middle
      binary_search(elements[0..elements.size/2 - 1], value)
    end
  end
end

puts Search.new.binary_search((1..10000).to_a.sample(1000).sort, 13)
