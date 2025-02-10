class EmployeesController < ApplicationController

  before_action :set_company
  before_action :set_employee, only: [:show, :edit, :update, :destroy]


  def index
    @company = Company.find(params[:company_id])
    @employees = if params[:search].present?
      @company.employees.search_by_name_role_and_department(params[:search])
    else
      @company.employees
    end
  end

  def show
  end

  def new
    @employee = @company.employees.build  #creando una instancia vacia y al poner el build llena el numéro del papá pero a la vez agregando automáticamente el company_id
    @company = Company.find(params[:company_id])

  end

  def create
    @employee = @company.employees.build(employee_params)
    if @employee.save
      redirect_to company_employees_path(@company), notice: "Empleado creado con éxito."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to employee_path(@employee), notice: "Empleado actualizado con éxito."
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to company_employees_path(@company), notice: "Empleado eliminado con éxito."
  end

  private

  def set_company
    @company = current_user.companies.find_by(id: params[:company_id])
    #redirect_to root_path, alert: "Compañía no encontrada" if @company.nil?
  end


  def set_employee
    @employee = Employee.find(params[:id])
    #@employee = @company.employees.find_by(id: params[:id]
    #redirect_to company_employees_path(@company), alert: "Empleado no encontrado" if @employee.nil?
  end


  def employee_params
    params.require(:employee).permit(:name, :birth_date, :id_number, :role_id, :department_id, :avatar)
  end
end
