class Robot
  @@robot_name_log = []

  def initialize
    set_name
    log_name
  end

  def generate_new_name
    result = ''
    2.times { result << rand(65..90).chr }
    3.times { result << rand(9).to_s }
    result
  end

  def set_name
    @name = verified_random_name
  end

  def verified_random_name
    new_name = ''
    loop do
      new_name = generate_new_name
      break if !@@robot_name_log.include?(new_name)
    end
    new_name
  end

  def log_name
    @@robot_name_log << @name
  end

  def name
    set_name if @name.nil?
    @name
  end

  def reset
    @name = nil
  end
end