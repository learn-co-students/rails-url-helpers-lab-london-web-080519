class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate_student
    if @student.active== "false"
      @student.active == "true"
    else
      @student.active == "false"
    end
    redirect_to 
  end

end