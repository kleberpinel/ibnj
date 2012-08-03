# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ibnj::Application.initialize!

Time::DATE_FORMATS[:default] = "%d/%m/%Y" #dd/mm/aaaa
Date::DATE_FORMATS[:default] = "%d/%m/%Y" #dd/mm/aaaa
