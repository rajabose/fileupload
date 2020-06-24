class InvoicesController < ApplicationController
    def show
        invoicedata = Invoices::Show.new(params[:id]).execute!
        if invoicedata.present?
            render json: invoicedata, status: :ok
        else
            render :text => "Not Found", :status => 404
        end
    end

    def index
        invoicedata = Invoices::Index.new.execute!
        render json: invoicedata, status: :ok
    end

    def create
        invoicedata = Invoices::Create.new(create_params).execute!
        render json: invoicedata, status: :created
    end

    def update
    end

    def delete 
    end

    def import
    end

    private

    def create_params
        params.permit(:files)
    end

    def update_params
        params.permit(:description, :status)
    end
end