class Product
  DEFAULT_PRICE = 0
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    other.is_a?(Product) && code == other.code
  end
end


class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end    
end

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end


class User
  def self.hello
    'Hello'
  end

  private_class_method :hello
end

class ContryCode
  attr_reader :code
  
  def initialize(code)
    @code = code
  end

  def eql?(other)
    other.instance_of?(ContryCode) && code.eql?(other.code)
  end

  def hash
    code.hash
  end
end