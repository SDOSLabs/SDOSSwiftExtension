@version = "0.9.0"
Pod::Spec.new do |spec|
  spec.platform     = :ios, '9.0'
  spec.name         = 'SDOSSwiftExtension'
  spec.authors      = 'SDOS'
  spec.version      = @version
  spec.license      = { :type => 'SDOS License' }
  spec.homepage     = 'https://svrgitpub.sdos.es/iOS/SDOSSwiftExtension'
  spec.summary      = 'Librería para definir el uso de base de datos local'
  spec.source       = { :git => "https://svrgitpub.sdos.es/iOS/SDOSSwiftExtension.git", :tag => "v#{spec.version}" }
  spec.framework    = ['Foundation', 'UIKit']
  spec.requires_arc = true

  spec.subspec 'SwiftExtension' do |s2|
    s2.preserve_paths = 'src/Classes/*'
    s2.source_files = ['src/Classes/*{*.m,*.h,*.swift}', 'src/Classes/**/*{*.m,*.h,*.swift}']
  end

end
