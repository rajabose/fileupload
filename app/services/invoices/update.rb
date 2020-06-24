class Invoices::Update
    def initialize(context)
        @id = context[:id].to_i
        context.delete(:id)
        @context =  context
    end

    def execute!
        invoices_list = APP_CONFIG['invoices_transactions']
        result = nil
        if invoices_list.present?
            invoices_list.each do |invoice|
                if @id == invoice['id']
                    @context.each do |key, value|
                        invoice[key] = value if invoice.has_key?(key)
                    end
                    result = invoice
                    break
                end
            end
        end
        result
    end
end