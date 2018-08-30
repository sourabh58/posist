class RecordsController < ApplicationController
    def new
        @record = Record.new
    end

    def create
        @record = current_owner.records.new
    end
end
