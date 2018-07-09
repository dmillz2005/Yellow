class YellowController < ApplicationController
  def index
    @columns = Column.all


  end
  def show
    @column = Column.find(params[:id])
  end  
  def new
    @column = Column.new
  end  
  def create
    # render plain: params.inspect
    @column = Column.new(column_params)
    if @column.save
      redirect_to yellow_index_url
    else
      render 'index'
    end
  end 
  def destroy
    @column = Column.find(params[:id])
    @column.destroy

    redirect_to yellow_index_url
  end   
  private
        def column_params
          params.permit(:title)
        end
end
