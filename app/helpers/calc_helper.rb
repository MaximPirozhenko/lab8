module CalcHelper

  def processing(v)
    v.split(' ').map(&:to_i)
        .split{|el| (Math.log(el) / Math.log(5)).to_s.split('.')[1].to_i!=0}
        .reject(&:empty?)
  end

end
