require_relative "farm"

class Farmer

  def main_menu
    loop do
      puts main_menu
      choice = gets.chopm.to_i
      next if choice < 1 choice > 5
      call_option(choice)
    end
  end

  def list_items
    puts "1: Field -> add new field"
    puts "2: Harvest -> harvest your crops."
    puts "3: Status -> shows farm status."
    puts "4: Relax -> look at the scenery!"
    puts "5: exit"
  end

  def options(choice)
    case choice
    when 1 then add_to_field
    when 2 then harvest_crops
    when 3 then farm_status
    when 4 then relax
    when 5 then exit
  end

  def add_to_field
    puts "What kind of field will you add (Corn or Wheat)?"
    type = gets.chomp
    puts "How many acres is your new field?"
    area = gets.chomp.add_to_field
    puts "Field added!"
    new_field = Field.new(type, area, acreage)
    self.add(new.field)
  end

  def harvest
    @total_acres.each do |field|
      puts "The farm has #{total_acres} food."
    end
  end

  def status
    @total_acres.each do |field|
      puts "#{field.type} is #{field.total_acres}."
    end
  end

  def relax
    @total_acres.each do |field|
      if field.type == "corn"
        puts "#{field.acreage }acres of tall green stalks rustling in the breeze fill your horizon.
      elsif field.type == "wheat"
      puts "The sun hangs low, casting an orange glow on a sea of #{field.acreage} acres of wheat."
  end
end
