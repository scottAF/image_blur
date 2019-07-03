
class Image
    attr_accessor :arr1

    def initialize(arr1)
        @arr1 = arr1     
    end

    def output_image
        @arr1.each { |a| puts a.join("") }
    end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image