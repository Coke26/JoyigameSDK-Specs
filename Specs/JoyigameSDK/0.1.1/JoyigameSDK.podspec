Pod::Spec.new do |s|
  s.name = 'JoyigameSDK'
  s.version = '0.1.1'
  s.summary = 'Joyigame iOS SDK binary distribution.'
  s.description = 'Precompiled Joyigame iOS SDK binary distribution.'
  s.homepage = 'https://github.com/Coke26/JoyigameSDK-Releases'
  s.license = { :type => 'Proprietary', :text => 'Copyright (c) Joyigame. All rights reserved.' }
  s.author = { 'Joyigame' => 'sdk@joyigame.com' }
  s.platform = :ios, '13.0'
  s.source = { :http => 'https://github.com/Coke26/JoyigameSDK-Releases/releases/download/joyigame-sdk-v0.1.1/JoyigameSDK-0.1.1.zip', :sha256 => 'f60e633616f509bb2d309417736dc96d395a4e184c0a00e6bf9b5456a2d3349f' }
  s.vendored_frameworks = 'JoyigameSDK-0.1.1/JoyigameSDK.xcframework'
  s.resources = ['JoyigameSDK-0.1.1/JoyigameSDKResources.bundle', 'JoyigameSDK-0.1.1/GoogleSignIn.bundle']
  s.source_files = 'JoyigameSDK-0.1.1/JoyigameSDKSwiftRuntimeMarker.swift'
  s.module_name = 'JoyigameSDKPod'
  s.frameworks = 'Security', 'StoreKit', 'AuthenticationServices', 'SystemConfiguration', 'AdSupport', 'AppTrackingTransparency', 'WebKit', 'Accelerate'
  s.libraries = 'z', 'c++', 'c++abi'
  s.user_target_xcconfig = {
    'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES',
    'CLANG_CXX_LIBRARY' => 'libc++',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks /usr/lib/swift',
    'LIBRARY_SEARCH_PATHS' => '$(inherited) $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
    'SWIFT_VERSION' => '5.0'
  }
end
