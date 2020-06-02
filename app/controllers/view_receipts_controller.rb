class ViewReceiptsController < ApplicationController
    def show_receipts
        @receipts = Receipt.all
    end 
end
