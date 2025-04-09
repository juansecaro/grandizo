class ElementsController < ApplicationController
  before_action :set_element, only: %i[ show edit update destroy ]

  # GET /elements
  def index
    @elements = Element.all
  end

  # GET /elements/1
  def show
  end

  def new
    @element = Element.new
    (params[:add_price_range].to_i + 3).times { @element.price_ranges.build }
  end

  def edit
    @element = Element.find(params[:id])
    params[:add_price_range].to_i.times { @element.price_ranges.build }
    @element.price_ranges.build if @element.price_ranges.empty?
  end

  # POST /elements
  def create
    @element = Element.new(element_params)

    if @element.save
      redirect_to elements_path, notice: "Elemento creado"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /elements/1
  def update
    if @element.update(element_params)
      redirect_to elements_path, notice: "Elemento actualizado", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /elements/1
  def destroy
    @element.destroy!
    redirect_to elements_path, notice: "Elemento eliminado", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element
      @element = Element.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def element_params
      params.expect(element: [ :name, :price ])
    end
end
