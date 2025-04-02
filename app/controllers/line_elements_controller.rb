class LineElementsController < ApplicationController
  before_action :set_line_element, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    if @line_element.update(line_element_params)
      redirect_to @line_element.budget, notice: "Elemento actualizado correctamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @budget = @line_element.budget
    @line_element.destroy
    respond_to do |format|
      format.html { redirect_to @budget, notice: "Elemento eliminado correctamente." }
      format.turbo_stream # If using Turbo Streams
    end
  end

  private

  def set_line_element
    @line_element = LineElement.find(params[:id])
  end

  def line_element_params
    params.require(:line_element).permit(:quantity)
  end
end
