# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ibnj::Application.initialize!

Time::DATE_FORMATS[:post] = "%d/%m/%Y" #dd/mm/aaaa
