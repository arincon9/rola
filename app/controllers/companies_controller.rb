class CompaniesController < ApplicationController
  def index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save

    redirect_to @company
  end

  def show
    @company = Company.find(params[:id])
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :address1, :address2,
                                    :city, :zipcode, :phone, :email)
  end

end
