Pod::Spec.new do |s|
  s.name         = "HSXCAPKit-lua53"
  s.version      = "0.1.1"
  s.summary      = "lua53 library."
  s.description  = <<-DESC
                   lua5.3.3 library.
                   DESC
  s.homepage     = "https://github.com/longzl/HSXCAPKit-lua53"
  s.license      = "MIT"
  s.author       = { "longzhili" => "longzhili2005@126.com" }
  s.platform     = :ios, "10.0.0"
  s.source       = { :git => "https://github.com/longzl/HSXCAPKit-lua53.git", :tag => "v#{s.version}" }
  s.source_files  = "lua-5.3.3/src/*.{h,c}", "lua53/*.{h,c}"
  s.exclude_files = "lua-5.3.3/src/lua.c", "lua-5.3.3/src/luac.c"
  s.compiler_flags  = '-DLUA_COMPAT_5_1', '-DLUA_COMPAT_5_2', '-DLUA_COMPAT_FLOATSTRING', '-DLUA_FLOORN2I=1'
  s.header_dir = 'lua53'

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/#{s.name}/lua-5.3.3/src $(PODS_ROOT)/#{s.name}/lua53"}

end