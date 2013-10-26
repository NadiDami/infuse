class Array

  def infuse memo = self.first
    if memo == self.first
      self[1..-1].each do |item|
      memo = yield(memo, item)
      end
    else
      self[0..-1].each do |item|
      memo = yield(memo, item)
    end
  end
    memo
  end



end