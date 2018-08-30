class NodesController < ApplicationController
    def new
        @node = Node.new
        @record = Record.find(params[:record_id])
    end

    def create
        @node = Node.new(node_params)
        @node.record = Record.find(params[:record_id])

        if (@node.referenceNodeId)
            parent_node = Node.find(@node.referenceNodeId)

            if @node.nodeNumber > parent_node.nodeNumber
                redirect_to root_path
            else
                if @node.save!
                    redirect_to root_path
                end

            end
        else

                if @node.save!
                    redirect_to root_path
                end

        end

    end

    def show

    end
end

def node_params
    params.require(:node).permit(:data,:nodeNumber,:referenceNodeId)
end
