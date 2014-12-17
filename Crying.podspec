Pod::Spec.new do |s|
  s.name         = "Crying"
  s.version      = "0.0.2"
  s.summary      = "Fast print debug in Swift"

  s.description  = <<-DESC
                   Crying is very simple print debug library written in Swift.

                   It will help your debugging cycle.
                   DESC

  s.homepage     = "https://github.com/dealforest/Crying"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "dealforest" => "dealforest.net@gmail.com" }

  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://github.com/dealforest/Crying.git", :tag => "0.0.2" }

  s.source_files  = "Crying/Crying.swift"
  s.framework  = "Foundation"
end
