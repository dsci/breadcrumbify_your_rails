require 'breadcrumbify_your_rails'

ActionController::Base.send(:include,BreadCrumbifyYourRails::Controllers)
ActionView::Base.send(:include,BreadCrumbifyYourRails::Views)