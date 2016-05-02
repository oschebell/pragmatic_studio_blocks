class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end


    def to_s
      "#{name} (#{email}): #{miles_flown}"
    end

  flyers = []

  1.upto(5) do |count|
    flyers << Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count*1000)
  end

  total = 0

  flyers.each do |count|
    total += count.miles_flown
  end

  puts "Total miles flown: #{total}"

  promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }


  flyers.each do |flyer|
    promotions.each do |airline, multiplier|
      puts "#{flyer.name} could earn #{multiplier}x miles by flying #{airline}!"
    end
  end
end
