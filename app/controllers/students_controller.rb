class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # cannot use mass assignment (Student.create(params)) here or else will give ForbiddenAttributesError
    @student = Student.create!(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to student_path(@student)
  end

end
