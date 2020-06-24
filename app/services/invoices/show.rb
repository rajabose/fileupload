class Invoices::Show
    def initialize(context)
        @id =  context.to_i
    end

    def execute!
        invoices_list = APP_CONFIG['invoices_transactions']
        result = nil
        if invoices_list.present?
            invoices_list.each do |invoice|
                if @id == invoice['id']
                    result = invoice
                    break
                end
            end
        end
        result
    end
end