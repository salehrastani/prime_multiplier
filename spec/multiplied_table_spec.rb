require_relative '../lib/multiplied_table.rb'


describe MultipliedTable do
  before do
    @table = MultipliedTable.new([2,3,5])
  end

  describe '#initialize' do
    it 'assigns digits to given arguments' do
      expect(@table.instance_variable_get(:@digits)).to eql([2,3,5])
    end
  end

  describe '#create_table' do
    it 'returns array containing rows of multiplication table in sub-arrays' do
      expect(@table.create_table).to eq([[1, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]])
    end
  end

  describe '#render_table' do
    it 'returns string of multiplication table for rendering' do
      @table.instance_variable_set(:@rows,[[1, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]])
      expect { @table.render_table }.to output("    2  3  5 \n 2  4  6 10 \n 3  6  9 15 \n 5 10 15 25 \n").to_stdout
    end
  end

  describe '#render_unit' do
    context 'when unit is first element of first row' do
      it 'returns string of multiplication table for rendering' do
        expect { @table.render_unit(1, 0, 0, 1) }.to output("  ").to_stdout
      end
    end

    context 'when unit is not first element of first row' do
      it 'returns string of multiplication table for rendering' do
        expect { @table.render_unit(1, 1, 0, 2) }.to output(" 1 ").to_stdout
      end
    end
  end
end