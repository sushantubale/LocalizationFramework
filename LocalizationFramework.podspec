Pod::Spec.new do |spec|
  spec.name         = "LocalizationFramework"
  spec.version      = "1.0.2"
  spec.summary      = "A short description of LocalizationFramework."
  spec.description  = <<-DESC
                    LocalizationFramework is a small educational framework!
                   DESC
  spec.homepage     = "http://EXAMPLE/LocalizationFramework"
  spec.author       = { "YOUR_NAME" => "YOUR_EMAIL" }
  spec.platform     = :macos, "10.14"
  spec.source       = { :http => 'file:' + __dir__ + "/" }
  spec.source_files = "LocalizationFramework/**/*.{swift,lproj,strings}"
  spec.swift_version = "5.1"
  spec.resource_bundle = { "LocalizationFramework" => ["LocalizationFramework/*.lproj/*.strings"] }

end