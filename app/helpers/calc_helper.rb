module CalcHelper
  def check(a)
    (0..Float::INFINITY).lazy.find do |s|
      return nil if a.to_i < s
      a.to_i == 5**s
    end
  end

  def processing(v)
    result = []
    substring = []
    array = v.split(' ').map(&:to_i)
    array.each_with_index do |x,ind|
      if (0..Float::INFINITY).lazy.take_while{|y| 5**y <= x}.find{|y| x == 5**y}
        substring << x
        result << substring if ind == array.size - 1
      elsif  substring.any?
        result << substring
        substring = []
      end
    end
    result
  end

end
