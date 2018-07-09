class ColumnController < ApplicationController
    def show
        @card = Card.find(params[:id])
      end
      def destroy
        @column = Column.find(params[:id])
        @column.destroy
    
        redirect_to yellow_index_url
      end   
end
