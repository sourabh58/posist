class NodesController < ApplicationController
    def new
        @node = Node.new
        @record = Record.find(params[:record_id])
    end

    def create

    end

    def show

    end
end
