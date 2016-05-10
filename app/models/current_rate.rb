class CurrentRate < Struct.new(:id, :value, :buyer_id, :day)
  def self.from(model)
    self.new.tap do |c|
      self.members.each do |m|
        c[m] = model.send(m)
      end
    end
  end

  def save
    puts "SAVED!"
  end
end
