module ControllerExtensions
  
  module ClassMethods
    def add_breadcrumb(name, path, options = {})
      before_filter options do |controller|  
        controller.send(:add_breadcrumb, name, path)  
      end  
    end
  end
  
  module InstanceMethods
    def add_breadcrumb_without_translation(name, path = '')
      @breadcrumbs ||= []  
      path = eval(path) if path =~ /_path|_url|@/  
      @breadcrumbs << [name, path]  
    end  

    def add_breadcrumb(name, path = '')  
      add_breadcrumb_without_translation (name), path  
    end
    
    def breadcrumbs
      @breadcrumbs
    end
  end
end