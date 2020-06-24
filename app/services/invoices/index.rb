class Invoices::Index
    def initialize(context={})
        @context =  context
    end

    def execute!
        APP_CONFIG['invoices_transactions']
    end
end