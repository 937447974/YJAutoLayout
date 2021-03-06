#
#  Be sure to run `pod spec lint NAME.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

# 注册pod权限：pod trunk register 937447974@qq.com '阳君' --description='china beijing'
# 验证podspec命令：pod spec lint或 pod spec lint --allow-warnings
# 文档发包:appledoc -c "阳君" --company-id "com.YJ" -p YJAutoLayout -v 1.0 -o ./Documentation ./Classes
# pod发包：pod trunk push YJAutoLayout.podspec --allow-warnings

Pod::Spec.new do |s|

    # ―――  Spec Metadata
    s.name     = "YJAutoLayout"
    s.version  = "1.1.4"
    s.summary  = "NSLayoutConstraint的相关扩展和封装"
    s.homepage = "https://github.com/937447974/YJAutoLayout"
    s.description  = <<-DESC
                    姓名：阳君；QQ：937447974；技术群：557445088
                    Extend：NSLayoutConstraint相关扩展；
                    Core：核心库NSLayoutConstraint相关，使用和NSLayoutAnchor类似；
                    DESC

    # ―――  Spec License
    s.license  = { :type => "MIT", :file => "LICENSE" }

    # ――― Author Metadata
    s.author   = { "阳君" => "937447974@qq.com" }

    # ――― Platform Specifics
    s.platform = :ios
    s.ios.deployment_target = "6.0"

    # ――― Source Location
    s.source = { :git => "https://github.com/937447974/YJAutoLayout.git", :tag => "v#{s.version}" }

    # ――― Source Code
    s.dependency 'YJCocoa'
    s.deprecated = true
    s.deprecated_in_favor_of = "YJCocoa"

    # ――― Project Linking
    s.frameworks = "UIKit", "Foundation"

    # ――― Project Settings
    s.requires_arc = true

end
