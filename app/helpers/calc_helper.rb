module CalcHelper

  def processing(v)
    v.split(' ').map(&:to_i)
        .split{|el| (0..Float::INFINITY)
                        .lazy
                        .take_while { |y| 5**y <= el }
                        .all?{ |y| 5**y != el }
    }
        .reject(&:empty?)
  end
end
