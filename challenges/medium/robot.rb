class Robot
  @@names = []

  def name
    return @name if @name
    loop do
      break unless @@names.include?(@name) || @name.nil?
      @name = generate_name 
    end
    @@names << @name
    @name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    result = ''
    2.times { result << rand(65..90).chr }
    3.times { result << rand(0..9).to_s }
    result
  end
end