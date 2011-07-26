module ApplicationHelper
  def markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    (Redcarpet.new(text, *options).to_html).html_safe
  end
  
  def include_fancy_box(*args)
    content = 
         javascript_include_tag('jquery.fancy_box/jquery.fancybox-1.3.1.pack.js',
                                'jquery.fancy_box/jquery.easing-1.3.pack.js',
                                'jquery.fancy_box/load_fancybox',
                                'jquery.fancy_box/jquery.mousewheel-3.0.2.pack.js', 
                                 :cache => "fancy_box")
    content << "\n#{stylesheet_link_tag('jquery.fancybox.css')}".html_safe
  end
  
  def link_to_image(src,options={})
    options[:class] ||= ""
    options[:class] << " fancy-img"
    link_src_ary = src.split(":")
    # if you pass a absolute path with a '/', it will know to use that instead...
    root_prefix = src.first == "/" ? "" : File.join("/","images")
    if link_src_ary.length == 1
      link_src = File.join(root_prefix, src)
    elsif link_src_ary.length == 2
      link_src = File.join(root_prefix,link_src_ary.last)
      src = File.join(root_prefix,link_src_ary.first)
    else
      raise ArgumentError, "You have too many arguments for your img src, it should be: img_src:link_src"
    end
    
    link_to image_tag(src), link_src, options
  end
end
