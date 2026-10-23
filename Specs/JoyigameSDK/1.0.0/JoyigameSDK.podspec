Pod::Spec.new do |s|
  s.name = 'JoyigameSDK'
  s.version = '1.0.0'
  s.summary = 'Joyigame iOS SDK binary distribution.'
  s.description = 'Precompiled Joyigame iOS SDK binary distribution.'
  s.homepage = 'https://github.com/Coke26/JoyigameSDK-Releases'
  s.license = { :type => 'Proprietary', :text => 'Copyright (c) Joyigame. All rights reserved.' }
  s.author = { 'Joyigame' => 'sdk@joyigame.com' }
  s.platform = :ios, '15.0'
  s.source = { :http => 'https://github.com/Coke26/JoyigameSDK-Releases/releases/download/joyigame-sdk-v1.0.0/JoyigameSDK-1.0.0-583ab2b108b9dabde5cc48abb88ce62c762420e55c3e1bc49141b5dff74b4b4b.zip', :sha256 => '583ab2b108b9dabde5cc48abb88ce62c762420e55c3e1bc49141b5dff74b4b4b' }
  s.vendored_frameworks = 'JoyigameSDK-1.0.0/JoyigameSDK.xcframework'
  s.resources = ['JoyigameSDK-1.0.0/JoyigameSDKResources.bundle', 'JoyigameSDK-1.0.0/GoogleSignIn.bundle']
  s.source_files = 'JoyigameSDK-1.0.0/JoyigameSDKSwiftRuntimeMarker.swift'
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
