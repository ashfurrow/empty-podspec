Pod::Spec.new do |s|
  s.name         = "Keys"
  s.version      = "1.0.0"
  s.summary      = "Injected podspec used by CocoaPods-Keys plugin."

  s.description  = <<-DESC
                   This is intended to be used as an injected podspec template 
                   used by the [CocoaPods-Keys plugin](https://github.com/orta/cocoapods-keys).

                   It should *not* be referenced outside of that context. 
                   DESC

  s.homepage     = "https://github.com/ashfurrow/empty-podspec"
  s.license      = { :type => "MIT (does not apply to anything but podspec)", :file => "LICENSE" }
  s.author             = { "Ash Furrow" => "ash@ashfurrow.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ashfurrow/empty-podspec.git", :tag => "1.0.0" }
  s.source_files  = "%%SOURCE_FILES%%"
  s.prepare_command =  "pod keys generate %%PROJECT_NAME%%"
  s.framework  = "Foundation"
  s.requires_arc = true
end
