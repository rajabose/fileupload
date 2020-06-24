# config/initializers/load_config.rb
APP_CONFIG = YAML.load_file("#{Rails.root}/config/data.yml")

# # application.rb
# if APP_CONFIG[]
#   # Do stuff
# end

# Rails.application.config.before_configuration do
#     #APP_CONFIG = Hashie::Mash.new(Rails.application.credentials[Rails.env.to_sym])
#     # APP_CONFIG = YAML.load_file("#{Rails.root}/config/data.yml")
#     APP_CONFIG = YAML.load_file(File.expand_path('../data.yml', __dir__))
# end