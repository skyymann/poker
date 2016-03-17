class Array

  def my_uniq
    uniqs = []
    self.each {|el| uniqs << el unless uniqs.include?(el) }
    uniqs
  end
  def two_sum
    sums = []

    i = 0
    while i < self.length

      j = i + 1
      while j < self.length
        sums << [i,j] if self[i] + self[j] == 0
        j += 1
      end

      i += 1
    end
    sums
  end

  # def my_transpose
  #   transposed_matrix = []
  #   transposed_rows = []
  #   i = 0
  #   while i < self.length
  #     transposed_rows << []
  #     j = 0
  #     while j < self.length
  #       transposed_rows[i] << self[j, i]
  #       j += 1
  #     end
  #
  #     i += 1
  #   end
  #   transposed_rows.each do |el|
  #     transposed_matrix << el
  #   end
  # end

  def my_transpose
    self[0].zip(*self[1..-1])
  end

  def stock_picker
    return [-1] if self.length < 2
    profitable_days = [0,0, 1000]
    self.each_with_index  do |el, i|
      self.each_with_index do |el2, i2|
        if el2 - el > self[profitable_days[1]] - self[profitable_days.first] && i2 > i
          profitable_days = [i, i2, (i2 - i)]
        elsif el2 - el == self[profitable_days[1]] - self[profitable_days.first] && (i2 -i) < profitable_days.last
          profitable_days = [i, i2, (i2 - i)]
        end

      end
    end
    profitable_days[0..1]
  end

end
