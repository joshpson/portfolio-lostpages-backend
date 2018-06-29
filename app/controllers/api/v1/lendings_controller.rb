class Api::V1::LendingsController < ApplicationController

  before_action :find_lending, only: [:update, :show, :destroy]

  def index
    @lendings = Lending.all
    render json: @lendings
  end

  def create
    @lending = Lending.create(lending_params)
    render json: @lending, status: :accepted
  end

  def update
    @lending.update(lending_params)
    render json: @lending, status: :accepted
  end

  def show
    render json: @lending
  end

  def destroy
    @lending.destroy
  end

  private

  def find_lending
    @lending = Lending.find_by(id: params[:id])
  end

  def lending_params
    params.require(:lending).permit(:book_id, :borrower_id, :lend_date, :status)
  end

end
