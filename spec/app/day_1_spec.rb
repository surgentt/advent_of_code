require_relative '../spec_helper'

describe Day1 do

  describe '#calc_total_freq' do 
    it 'Return Adjastent values' do
      day_1 = Day1.new
      day_1.load_data 
      day_1.calc_total_freq
      expect(day_1.total_frequency).to eq(574)
    end
  end

  describe '#calc_duplicate_frequency' do 
    it 'works on sample data' do 
      day_1 = Day1.new
      day_1.freq_changes = [[:+,1], [:-,2], [:+,3], [:+,1], [:+,1],[:-,2]]
      day_1.calc_duplicate_frequency
      expect(day_1.duplicate_frequency).to eq(2)
    end
  end

  describe '#calc_duplicate_frequency' do 
    it 'works on sample data' do 
      day_1 = Day1.new
      day_1.freq_changes = [[:+,3], [:+,3], [:+,4], [:-,2], [:-,4]]
      day_1.calc_duplicate_frequency
      expect(day_1.duplicate_frequency).to eq(10)
    end
  end

  describe '#calc_duplicate_frequency' do 
    it 'works on sample data' do 
      day_1 = Day1.new
      day_1.freq_changes = [[:-,6], [:+,3], [:+,8], [:+,5], [:-,6]]
      day_1.calc_duplicate_frequency
      expect(day_1.duplicate_frequency).to eq(5)
    end
  end

  describe '#calc_duplicate_frequency' do 
    it 'works on sample data' do 
      day_1 = Day1.new
      day_1.freq_changes = [[:+,7], [:+,7], [:-,2], [:-,7], [:-,4]]
      day_1.calc_duplicate_frequency
      expect(day_1.duplicate_frequency).to eq(14)
    end
  end


  # describe '#first_repeat_find' do 
  #   it 'works on real data' do 
  #     day_1 = Day1.new
  #     day_1.load_data 
  #     day_1.calc_duplicate_frequency
  #     expect(day_1.duplicate_frequency).to eq(0)
  #   end
  # end

  describe '#check_repeat_frequency' do 
    it 'Check for duplicated frequencies' do
      day_1 = Day1.new
      day_1.total_frequency = 0
      day_1.freq_history = [0,4,5,6]
      expect(day_1.send(:repeat_frequency?)).to eq(true)
    end
  end

end