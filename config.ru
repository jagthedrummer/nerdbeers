# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment',  __FILE__)

#require 'unicorn/oob_gc'
require 'gctools/oobgc'
if defined?(Unicorn::HttpRequest)
 use GC::OOB::UnicornMiddleware
end

run Rails.application