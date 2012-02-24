module TinyMCE::Rails
  module Helper
    def tinymce(options={})
      configuration = TinyMCE::Rails.configuration.merge(options)
      
      javascript_tag do
        "tinyMCE.init(#{configuration.options_for_tinymce.to_json});".html_safe
      end
    end
    
    def tinymce_assets
      javascript_include_tag "tinymce"
    end
  end
end