class SupportsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :destroy, :update]
  def index
    @supports2 = Support.search(params[:keyword])
    @supports = @supports2.order(created_at: :DESC).page(params[:page]).per(5)
    
  end
  def show
  end
  def new
  @supports = Support.new
  end
  def create
    @supports = Support.new pokemon
    if @supports.save
      redirect_to supports_path
    else
      render :new
    end
  end

  def destroy
    @supports.destroy
    redirect_to supports_path
  end
  def edit
  end
  def update
    if @supports.update pokemon
      redirect_to supports_path
    else
      render :edit
    end

  end

  private

  def find_params
    @supports = Support.find params[:id]
  end

  def pokemon
    params.require(:support).permit([:name, :email, :department, :message, :mark])
  end
end
