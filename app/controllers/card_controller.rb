class CardController < ApplicationController
        def create
            @card = Card.new(card_params)
      end
      def destroy
        @card = Card.find(params[:id])
        @card.destroy
      end
end
