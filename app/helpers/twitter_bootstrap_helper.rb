module  TwitterBootstrapHelper

  IMAGE_TYPES = %w|png jpg jpeg gif|

  def express_carousel(path, use_indicators = true)
  #puts all of the images in path into a carousel. Sets the file name (titleized) as caption in <h2> tags.
    images = all_images_in path
    render :partial => 'twitter_bootstrap_partials/carousel',
           :locals => {:images => images, :use_indicators => use_indicators}
  end

  def express_modal(title, footer_content = nil, destroy_on_close = false, &content)
    render :partial => 'twitter_bootstrap_partials/modal',
           :locals => {:title => title, :footer_content => footer_content, :content => capture(&content),
                       :destroy_on_close => destroy_on_close}
  end

  def modal_close_button
    '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'.html_safe
  end

  private

  def all_images_in(path)
    paths = IMAGE_TYPES.collect{ |ext| "#{path}*.#{ext}"}
    Dir.glob(paths)
  end

  def file_name_in(path)
    File.basename(path, ".*")
  end


end