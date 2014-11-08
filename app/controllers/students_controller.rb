class StudentsController < ApplicationController

skip_before_filter :authorize

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(params.require(:student).permit(:name, :profile))
		if @student.save
			redirect_to students_path
		else 
			render "new"
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(params.require(:student).permit(:name, :profile))
			redirect_to student_path
		else
			render "edit"
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

end
