class Image
  attr_accessor :arr

  def initialize(arr)
      @arr = arr     
  end

  def output_image
      @arr.each { |a| puts a.join("") }
  end
  
  def manhattan(distance)
    distance.times do
      blur
    end
  end

  def blur
      pixel = []
      @arr.each_with_index do |row, rowIndex|
          row.each_with_index do |col, colIndex|
              pixel << [rowIndex, colIndex] if col == 1
          end
      end
      
      # pixel.each { |p| puts p.join("") }
      
      pixel.each do |num|
          p = num[0]
          q = num[1]
          
              @arr[p][q + 1] = 1 if q + 1 <= @arr[p].count - 1
              @arr[p][q - 1] = 1 if q - 1 >= 0
              @arr[p + 1][q] = 1 if p + 1 <= @arr.count - 1
              @arr[p - 1][q] = 1 if p - 1 >= 0
      end
  
  end
#    
end


image = Image.new([
[1, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0]
])


image.manhattan(3)
image.output_image