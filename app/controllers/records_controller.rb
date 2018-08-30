class RecordsController < ApplicationController
    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_params)
        @record.owner = current_owner
        if @record.save!
            redirect_to new_owner_record_path
        end
    end

    def show
        @record = Record.find(params[:id])
        @node = Node.new
    end

end


private

def record_params
    params.require(:record).permit(:name)
end
