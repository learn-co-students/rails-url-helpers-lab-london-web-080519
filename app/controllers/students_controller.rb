class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def activate
    if @student.active == true
       @student.active = false
       @student.save
    else
      @student.active = true
      @student.save
    end
    redirect_to @student
  end

  def show
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end