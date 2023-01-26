module MyEnumerable
  def all?
    if block_given?
      array_responses = []
      list.each do |n|
        array_responses << yield(n)
      end
      response = array_responses.include? false
      puts !response
    else
      puts 'Please pass in a block.'
    end
  end

  def any?
    if block_given?
      array_responses = []
      list.each do |n|
        array_responses << yield(n)
      end
      response = array_responses.include? true
      puts response
    else
      puts 'Please pass in a block.'
    end
  end

  def filter
    if block_given?
      array_responses = []
      list.each do |n|
        array_responses << n if yield(n)
      end
      puts array_responses
    else
      puts 'Please pass in a block.'
    end
  end
end
