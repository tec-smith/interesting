///**************************************************************************///
///                  Interesting (https://interesting.zone)                  ///
///             A template for a social application, using Flutter.          ///
///               Conceived in Febrary 2023 by Thomas EC. Smith              ///
///**************************************************************************///

/// Working directory: */interesting/lib/utilities/configuration_utility.dart
/// This class defines constant configurations as a [utility] to our application,
/// providing constants for reusable variables that are called throughout.

class ConfigurationUtility {

  /// About the application.
  static const String appCreator = "Thomas EC. Smith";
  static const String appDescription = "A template for a social application, using Flutter.";
  static const String appName = "Interesting";
  static const String appStoreId = "com.enter7ainer.interesting";
  static const String appWebsite = "https://interesting.zone";
  static const String devWebsite = "https://tecsmith.info";
  static const String iosStoreId = "0123456789";
  static const String linuxStoreId = "0123456789";
  static const String macStoreId = "0123456789";
  static const String microsoftStoreId = "0123456789";

  /// Social links.
  static const String email = "app@interesting.zone";
  static const String facebook = "https://facebook.com/zone.interesting";
  static const String instagram = "https://instagram.com/zone.interesting";
  static const String twitter = "https://twitter.com/zone_interesting";

  /// Admob implementation.
  static const bool admobEnabled = false; /// <-- CHANGE TO TRUE FOR PRODUCTION!
  static const String androidBannerAdUnit = "ca-app-pub-3857100495280014/6376760681";
  static const String iosBannerAdUnit = "ca-app-pub-3857100495280014/6376760681";
  static const String androidInterstitialAdUnit = "ca-app-pub-3857100495280014/9645142887";
  static const String iosInterstitialAdUnit = "ca-app-pub-3857100495280014/9645142887";

  /// Sharing blurb.
  static const String appShareSubject = "This is Interesting!";
  static const String appShareText = "Download this $appName app from https://app.interesting.zone";
}

/**
 * @COPYRIGHT (c) 2023. Thomas EC. Smith : https://www.TECSmith.info
 *
 * Permission is hereby granted, free of charge,
 * to any person obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to permit
 * persons to whom the Software is furnished to do so, subject to the following
 * conditions:
 *  + The above copyright notice and this permission notice shall be included in
 *    all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Licenced under [MIT](https://opensource.org/licenses/MIT)
 * [Find more repositories!](https://TECSmith.info/repository)
 */