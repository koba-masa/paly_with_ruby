class FactoryBotTester
  attr_accessor :first_name, :last_name, :birthplace_prefcture, :birthplace_city

  def full_name()
    "#{first_name} #{last_name}"
  end

  def birthplace()
    "#{birthplace_prefcture} #{birthplace_city}"
  end

  def self_introduce()
    "My name is #{full_name}. I'm from #{birthplace}."
  end
end
