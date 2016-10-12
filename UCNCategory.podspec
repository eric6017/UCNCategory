#
# Be sure to run `pod lib lint Categories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "UCNCategory"
    s.version          = "0.0.1"
    s.summary          = "UCNCategory."
    s.description      = <<-DESC
        This pod contains all kinds of categories which provides a great convenience for development.
    DESC
    s.homepage         = "http://www.uc.cn/"
    s.license          = { :type => "MIT", :file => "LICENSE" }
    s.author           = "chenshuijin@ucweb.com"
    s.source           = { :git => "https://github.com/eric6017/UCNCategory.git", :tag => s.version }
    s.platform     = :ios, '7.0'
    s.requires_arc = true

#*********************************UCNCategory_NSObject******************************#

    s.subspec 'UCNCategory_NSObject' do |obj|
        obj.source_files = "NSObject/**/*.{h,m}"
        obj.public_header_files = "NSObject/**/*.h"
        obj.dependency 'UCNCategory/UCNCategory_NSString'
    end

#*********************************UCNCategory_NSString******************************#

    s.subspec 'UCNCategory_NSString' do |str|
        str.source_files = "NSString/**/*.{h,m}"
        str.public_header_files = "NSString/**/*.h"
    end

#*********************************UCNCategory_NSDictionary******************************#

    s.subspec 'UCNCategory_NSDictionary' do |dic|
        dic.source_files = "NSDictionary/**/*.{h,m}"
        dic.public_header_files = "NSDictionary/**/*.h"
    end

#*********************************UCNCategory_UIColor******************************#

    s.subspec 'UCNCategory_UIColor' do |col|
        col.source_files = "UIColor/**/*.{h,m}"
        col.public_header_files = "UIColor/**/*.h"
    end

#*********************************UCNCategory_UIImage******************************#

    s.subspec 'UCNCategory_UIImage' do |img|
        img.source_files = "UIImage/**/*.{h,m}"
        img.public_header_files = "UIImage/**/*.h"
    end

#*********************************UCNCategory_UIView******************************#

    s.subspec 'UCNCategory_UIView' do |vie|
        vie.source_files = "UIView/**/*.{h,m}"
        vie.public_header_files = "UIView/**/*.h"
    end

end


