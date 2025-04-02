class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[ show edit update destroy ]

  def index
    @budgets = Budget.all
  end

  def show
    @budget = Budget.find(params[:id])
    @available_elements = Element.all
  end

  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to @budget, notice: 'Presupuesto creado'
    else
      render :new
    end
  end

  def update

  end

  def destroy
    @budget = Budget.find(params[:id])
    # Eliminamos los LineElements asociados con el presupuesto
    @budget.line_elements.destroy_all
    @budget.destroy
    redirect_to budgets_path, notice: 'Presupuesto eliminado correctamente.'
  end

  def add_element
    @budget = Budget.find(params[:id])
    @budget.line_elements.create(element_id: params[:element_id], quantity: params[:quantity])
    redirect_to @budget, notice: 'Elemento añadido'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def budget_params
      params.expect(budget: [ :client_name, :notes ])
    end
end
