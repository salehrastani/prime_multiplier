class MultipliedTable
  def initialize(digits)
    @digits = digits
  end

  def create_table
    @digits.unshift(1)
    @rows = @digits.map do |multiplicand|
      @digits.map do |multiplier|
        multiplicand * multiplier
      end
    end
  end

  def render_table
    length = justification
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |unit, unit_index|
       render_unit(unit, row_index, unit_index, length)
      end
      print "\n"
    end
  end

  def render_unit(unit, row_index, unit_index, length)
    unit = unit_index == 0 && row_index == 0 ? " " * length : unit.to_s.rjust(length)
    print unit
    print " "
  end

  def justification
    (@digits[-1] * @digits[-1]).to_s.size
  end
end