module CalcHelper

  def processing(v)
    v.split(' ').map(&:to_i)
        .split{|el| Math::log(el,5).modulo(1).nonzero?}
        .reject(&:empty?)
  end

end
