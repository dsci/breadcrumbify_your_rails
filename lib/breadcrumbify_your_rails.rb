require 'breadcrumbify_your_rails/controller_extensions'
require 'breadcrumbify_your_rails/view_extensions'

module BreadCrumbifyYourRails

  module Controllers
    def self.included(base)
      base.class_eval do
        extend ControllerExtensions::ClassMethods
        include ControllerExtensions::InstanceMethods
      end
    end
  end
  
  module Views
    def self.included(base)
      base.class_eval do
        include ViewExtensions::InstanceMethods
      end
    end
  end
end
