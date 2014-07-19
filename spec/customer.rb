class Customer

attr_reader :name, :number

  def initialize(name, number=333)
    @name = name
    @number = number
  end
end

def requests_menu
  menu.to_s
end