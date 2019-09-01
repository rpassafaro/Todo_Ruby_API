class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]
    
    def index
        @items = Todo.find(params[:todo_id]).items
        json_response(@items)
    end
    
    def create
        puts params
        @item = Item.create!(item_params)
        json_response(@item, :created)
    end

    # private

    def item_params
        #whitelist params
        params.permit(:name, :todo_id)
    end

    def set_item
        puts params
        @item = Item.find(params[:id])
    end
end
