require 'spec_helper'

describe TwitterBootstrapHelper do
  let(:img_path){ 'C:/Users/jf/Desktop/jesseweb/TwitterExpress/spec/dummy/app/assets/images/test/' }
  describe 'carousel' do

    describe 'private functions' do

      #images for the following functions refer to png,jpg, jpeg, gif
      describe 'file_name_in(path)' do
        it 'should return just the file name in a path' do
          file_name_in('c:/dir/image.jpg').should == 'image'
        end
      end

      describe '#all_images_in(path)' do
        it 'should return the paths of all images in path' do
          images = self.send(:all_images_in, img_path)
          images.count.should == 3
          bool = false
          images.each{ |i| bool = true if i =~ /sf.jpg/ }
          bool.should be_true
        end
      end

    end

  end
end