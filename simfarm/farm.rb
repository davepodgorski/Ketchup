class Farm


  def initialize
    @total_acres = []
  end

  def add(field)
    @total_acres << field
  end

  def acreage
    counter = 0
    @total_acres.each do |field|
      counter += acre
    end
    return counter
  end

class CornOrWheat

  def initialize(acreage)
    @acreage = acreage
  end

  def acreage(acres)
    @acreage = total_acres
  end

end

class Field < CornOrWheat

  def initialize(type, area, acreage)
    super(acreage)
    @type = type
    @area = area
  end

  def area
    @area
  end

  def area =(total_acres)
    @acrege = total_acres
  end

  def field
    field = area * acreage
    return field
  end

end

  
