module  TwitterBootstrapHelper

  IMAGE_TYPES = %w|png jpg jpeg gif|

  def express_carousel(objects, use_indicators: true, use_labels: true, carousel_id: 'express_carousel',
                       image_version: :carousel, data_interval: 5000)
    #expects object to have an #images association, in which each image responds to image_url, like carrier_wave.
    #Each image object should also respond to #description
    images = []
    objects = [objects] unless objects.is_a?(ActiveRecord::Relation)
    objects.each do |o|
      o.images.each do |i|
        images << i
      end
    end
    render :partial => 'twitter_bootstrap_partials/carousel',
           :locals => {:images => images, :use_indicators => use_indicators, :use_labels => use_labels,
                       :carousel_id => carousel_id, :image_version => image_version, :data_interval => data_interval}
  end

  def express_modal(title, footer_content: nil, destroy_on_close: false, element_id: 'express_modal', &content)
    # destroy_on_close = true includes a script in the modal that detaches the modal from the document. Good for ajax.
    render :partial => 'twitter_bootstrap_partials/modal',
           :locals => {:title => title, :footer_content => footer_content, :content => capture(&content),
                       :destroy_on_close => destroy_on_close, :element_id => element_id}
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