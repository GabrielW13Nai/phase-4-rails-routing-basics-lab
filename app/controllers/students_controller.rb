class StudentsController < ApplicationController
  def index
    student = Student.all
    render json: student
  end
  def grades
    student = Student.all.sort_by{|e| -e.grade}
    render json: student
  end
  def highest_grade
    student = Student.all.sort_by{|e| -e.grade}.max_by(&:grade)
    render json: student
  end
end
