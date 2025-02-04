class EmployeesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_employee

  end

  def set_company

  end

  def employee_params
    params.require(:employee).permit(:name, :birth_date, :id_number, :role_id, :department_id, :avatar)
  end
end


end
