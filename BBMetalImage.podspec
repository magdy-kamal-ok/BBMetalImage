Pod::Spec.new do |s|

  s.name         = "BBMetalImage"
  s.version      = "0.1.0"
  s.summary      = "A Swift library for GPU-accelerated image/video processing based on Metal."

  s.description  = <<-DESC
                   A Swift library for GPU-accelerated image/video processing based on Metal.
                   More than 60 built-in filters.
                   Filter chain supported.
                   Customized filter.
                   DESC

  s.homepage     = "https://github.com/Silence-GitHub/BBMetalImage"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Kaibo Lu" => "lukaibolkb@gmail.com" }

  s.platform     = :ios, "10.0"

  s.swift_version = "4.2"

  s.source       = { :git => "https://github.com/Silence-GitHub/BBMetalImage.git", :tag => s.version }

  s.requires_arc = true

  s.source_files  = "BBMetalImage/BBMetalImage/*.{swift,metal}"

end
