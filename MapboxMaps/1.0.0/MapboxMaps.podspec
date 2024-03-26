Pod::Spec.new do |m|

  version = '11.3.0-beta.1'

  m.name    = 'MapboxMaps'
  m.version = version

  m.summary           = 'Open source vector map solution for iOS.'
  m.description       = 'Open source, OpenGL-based vector map solution for iOS with full styling capabilities and Cocoa Touch APIs.'
  m.homepage          = 'https://docs.viettelmaps.vn/'
  m.license           = { :type => 'BSD', :file => 'LICENSE.md' }   
  m.author            = { 'VTS' => 'viettelmaps@gmail.com' }
  m.social_media_url  = 'https://facebook.com/vtmaps'
  m.documentation_url = 'https://docs.viettelmaps.vn/'

  m.source = {
 
    :http => "https://raw.githubusercontent.com/dhaq/vtmaps-ios-sdk/main/MapboxMaps.zip",
    #:git => "https://github.com/dhaq/mapbox-maps-ios.git",
    #:http => "https://files.viettelmaps.com.vn:8080/ios-sdk/vtmap-ios-sdk.1.0.3.zip",   
    #:flatten => true
  }

  m.platform              = :ios
  m.ios.deployment_target = '12.0'
  m.swift_version = '5.9'
  m.source_files = 'Sources/MapboxMaps/**/*.{swift,h}'
  m.resource_bundles = { 'MapboxMapsResources' => ['Sources/**/*.{xcassets,strings}', 'Sources/MapboxMaps/MapboxMaps.json', 'Sources/MapboxMaps/PrivacyInfo.xcprivacy'] }

  m.dependency 'MapboxCoreMaps', '11.3.0-beta.1'
  m.dependency 'MapboxCommon', '24.3.0-beta.1'
  m.dependency 'Turf', '2.8.0'

  #m.requires_arc = true

  # m.vendored_frameworks = 'dynamic/Mapbox.framework'
  # m.module_name = 'Mapbox'

  # m.preserve_path = '**/*.bcsymbolmap'

end
