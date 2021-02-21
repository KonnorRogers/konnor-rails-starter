# frozen_string_literal: true

# require 'image_processing/vips'
require 'image_processing/mini_magick'

namespace :images do
  desc 'optimize images located in app/{javascript,assets}/images'
  task :optimize do
    fl = Rake::FileList.new('app/{javascript,assets}/images/**/*.{png,jpg,jpeg}')

    fl.each do |file|
      basename = File.basename(file, '.*')
      dirname = File.dirname(file)
      full_path = File.join("#{dirname}/#{basename}.webp")

      next if File.exist?(full_path)

      puts "\nOriginal: #{file}: #{File.size(file) / 1000}kb"

      # ImageProcessing::Vips
      ImageProcessing::MiniMagick
        .source(file)
        .resize_to_limit(3600, 3600)
        .convert('webp')
        .saver(quality: 75)
        .call(destination: full_path)

      ImageProcessing::MiniMagick
        .source(file)
        .resize_to_limit(3600, 3600)
        .convert('webp')
        .saver(quality: 75)
        .call(destination: file)

      puts "Optimized: #{full_path}: #{File.size(full_path) / 1000}kb\n\n"
    end
  end
end

Rake::Task['assets:precompile'].enhance do
  Rake::Task['images:optimize'].invoke
end
