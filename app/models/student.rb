class Student < ActiveRecord::Base
  
  attribute :active, :boolean, default: 'false'
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def check_active
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

end