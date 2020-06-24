class Admin::InvoicesController < ApplicationController
    def show
        invoicedata = Invoices::Show.new(params[:id]).execute!
        render json: invoicedata, status: :ok
    end

    def update
        invoicedata = Invoices::Update.new(update_params).execute!
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

    private

    def update_params
        params.permit(:description, :status, :name)
    end
end
