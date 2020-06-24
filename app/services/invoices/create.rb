class Invoices::Create
    def initialize(context)
        @context =  context
    end

    def execute!
        if APP_CONFIG['invoices_transactions'].blank?
            APP_CONFIG['invoices_transactions'] = []
            result = {}
            result['name'] = @context["files"].original_filename
            result['id'] = 0
            result['description'] = ""
            result['status'] = "processing" 
            file_upload(@context["files"])
            APP_CONFIG['invoices_transactions'] << result
            result
        else
            count = APP_CONFIG['invoices_transactions'].count
            result = {}
            result['name'] = @context["files"].original_filename
            result['id'] = count + 1
            result['description'] = ""
            result['status'] = "processing" 
            file_upload(@context["files"])
            APP_CONFIG['invoices_transactions'] << result
            result
        end
    end

    def file_upload(filedata)
        uploaded_io = filedata
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
            file.write(uploaded_io.read)
        end
    end
end