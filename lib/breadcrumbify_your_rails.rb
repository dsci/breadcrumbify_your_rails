require 'breadcrumbify_your_rails/controller_extensions'

module BreadCrumbifyYourRails

  module Controllers
    def self.included(base)
      base.class_eval do
        extend ControllerExtensions::ClassMethods
        include ControllerExtensions::InstanceMethods
      end
    end
  end
end
