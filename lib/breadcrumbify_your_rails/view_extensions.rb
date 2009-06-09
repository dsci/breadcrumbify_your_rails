module ViewExtensions
  
  module InstanceMethods
    
    def render_breadcrumbs(text)
      to_render = ""
      if breadcrumbs  
        to_render << "#{text} "  
        breadcrumbs[0..-2].each do |txt, path|  
          to_render << link_to(h(txt), path) << " > "  
        end 
        to_render << h(breadcrumbs.last.first)
      end
      return to_render
    end
  end
end