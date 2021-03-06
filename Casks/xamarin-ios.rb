cask 'xamarin-ios' do
  version '10.8.0.175'
  sha256 'd5bb5172640dd3ce660d8142c591d1055ec577a1656a6d90abc0a1b9ee3ae957'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '4e35d027d98e8b3492711f22401b344615d6f1478b66c833055cccfd00681fbb'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
