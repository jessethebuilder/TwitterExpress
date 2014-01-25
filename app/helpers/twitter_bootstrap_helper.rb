module  TwitterBootstrapHelper

  IMAGE_TYPES = %w|png jpg jpeg gif|

  def express_carousel(objects, use_indicators: true, carousel_id: 'express_carousel')
    #expects object to have an #images association, in which each image responds to image_url, like carrier_wave.
    #Each image object should also respond to #description
    images = []
    objects = [objects] unless objects.class == Array
    objects.each do |o|
      o.images.each do |i|
        images << i
      end
    end
    render :partial => 'twitter_bootstrap_partials/carousel',
           :locals => {:images => images, :use_indicators => use_indicators, :carousel_id => carousel_id}
  end

  def express_modal(title, footer_content = nil, destroy_on_close = false, &content)
    # destroy_on_close = true includes a script in the modal that detaches the modal from the document. Good for ajax.
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