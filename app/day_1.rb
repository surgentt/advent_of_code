class Day1
  attr_accessor :freq_changes, :total_frequency, :freq_history, :duplicate_frequency

  def initialize
    @total_frequency = 0
    @freq_history = [0]
    @duplicate_frequency = nil
  end

  def load_data
    self.freq_changes = read_file
  end

  def calc_total_freq
    freq_changes.each do |direction|
      self.total_frequency = self.total_frequency.send(direction[0], direction[1])
    end
  end

  def calc_duplicate_frequency
    freq_changes.cycle do |direction|
      self.total_frequency = self.total_frequency.send(direction[0], direction[1])
      self.freq_history << self.total_frequency 
      puts self.total_frequency
      if repeat_frequency? && !self.duplicate_frequency
        self.duplicate_frequency = self.total_frequency
        break
      end
    end 
  end

  private

    def repeat_frequency?
      self.freq_history[0..-2].include?(self.total_frequency)
    end

    def read_file
      array = []
      File.open('./lib/day_1.txt', 'r') do |f|
        f.readlines.collect do |line|
          array << [line[0].to_sym, line.strip.gsub('-','').gsub('+','').to_i]
        end
      end
      array
    end

end