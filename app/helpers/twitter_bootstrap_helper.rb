module  TwitterBootstrapHelper

  IMAGE_TYPES = %w|png jpg jpeg gif|

  def express_carousel(image_urls, labels: [], use_indicators: true, element_id: 'express_carousel', slide_delay: 5000)
    render :partial => 'twitter_bootstrap_partials/carousel',
          :locals => {:images => image_urls, :use_indicators => use_indicators, :labels => labels,
                      :element_id => element_id,
                      :delay => slide_delay}
  end

  def express_modal(title, footer_content: nil, destroy_on_close: true, element_id: 'express_modal', &content)
    # destroy_on_close = true includes a script in the modal that detaches the modal from the document. Good for ajax.
    render :partial => 'twitter_bootstrap_partials/modal',
           :locals => {:title => title, :footer_content => footer_content, :content => capture(&content),
                       :destroy_on_close => destroy_on_close, :element_id => element_id}
  end

  def modal_close_button
    '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'.html_safe
  end

  def empty_container(container_id: nil, &block)
    html = %Q|<div class="container"#{%Q[ id="#{container_id}"] if container_id}>|
    html += '<div class="row">'
    html += '<div class="col-sm-12">'
    html += capture(&block)
    html += '</div><!-- col -->
           </div><!-- row -->
         </div><!-- cont -->'
    html.html_safe
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