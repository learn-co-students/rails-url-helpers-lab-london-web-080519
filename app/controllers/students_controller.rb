class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render "index"
  end

  def show
    @student = Student.find(params[:id])
    render "show"
  end

  def activate_student
    @student = Student.find(params[:id])
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end