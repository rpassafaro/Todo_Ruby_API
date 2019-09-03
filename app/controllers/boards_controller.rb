class BoardsController < ApplicationController
    def index
        @boards = Board.all
        json_response(@items)
    end

    
end
