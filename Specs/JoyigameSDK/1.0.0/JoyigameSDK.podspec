Pod::Spec.new do |s|
  s.name = 'JoyigameSDK'
  s.version = '1.0.0'
  s.summary = 'Joyigame iOS SDK binary distribution.'
  s.description = 'Precompiled Joyigame iOS SDK binary distribution.'
  s.homepage = 'https://github.com/Coke26/JoyigameSDK-Releases'
  s.license = { :type => 'Proprietary', :text => 'Copyright (c) Joyigame. All rights reserved.' }
  s.author = { 'Joyigame' => 'sdk@joyigame.com' }
  s.platform = :ios, '15.0'
  s.source = { :http => 'https://github.com/Coke26/JoyigameSDK-Releases/releases/download/joyigame-sdk-v1.0.0/JoyigameSDK-1.0.0-3305c7328d87bdd3cd0cace4dc482ce816e1341ea1cac93eedbcb0e6172eb961.zip', :sha256 => '3305c7328d87bdd3cd0cace4dc482ce816e1341ea1cac93eedbcb0e6172eb961' }
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
