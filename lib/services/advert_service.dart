///**************************************************************************///
///                  Interesting (https://interesting.zone)                  ///
///             A template for a social application, using Flutter.          ///
///               Conceived in Febrary 2023 by Thomas EC. Smith              ///
///**************************************************************************///

/// Working directory: */interesting/lib/main.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:interesting/utilities/branding_utility.dart';
import 'package:interesting/utilities/configuration_utility.dart';

const int _maxLoadAttempts = 3;

class AdvertService {

  int _loadAttempt = 0;

  /// Check the device type for banner advertisement to display.
  static String _bannerAdUnit = Platform.isAndroid ?
  ConfigurationUtility.androidBannerAdUnit :
  ConfigurationUtility.iosBannerAdUnit;

  /// Check the device type for interstitial advertisement to display.
  static String _interstitialAdUnit = Platform.isAndroid ?
  ConfigurationUtility.androidInterstitialAdUnit :
  ConfigurationUtility.iosInterstitialAdUnit;

  /// Initialise the advertisement service.
  static Future<void> init() async {
    _bannerAdUnit;
    _interstitialAdUnit;
    await MobileAds.instance.initialize();
  }

  /// Banner advertisement event listener.
  static final BannerAdListener _bannerListener = BannerAdListener(
    onAdClosed: (ad) => debugPrint('Advert closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) {
      debugPrint('Advert failed to Load: ${ad.adUnitId}, $error.');
      ad.dispose();
    },
    onAdImpression: (nativeAd) =>
        debugPrint('Native advert impression: ${nativeAd.adUnitId}.'),
    onAdLoaded: (ad) => debugPrint('Advert loaded: ${ad.adUnitId}.'),
    onAdOpened: (ad) => debugPrint('Advert opened: ${ad.adUnitId}.'),
    onAdWillDismissScreen: (ad) =>
        debugPrint('Advert dismissed: ${ad.adUnitId}.'),
  );

  /// Banner advertisement.
  static late final BannerAd _bannerAd = BannerAd(
    adUnitId: _bannerAdUnit,
    size: AdSize.banner,
    request: const AdRequest(),
    listener: _bannerListener,
  )..load();

  /// Banner widget.
  static late final Container banner = Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: <Color>[
          BrandingUtility.purpleDarker,
          BrandingUtility.blackMusk,
        ],
        end: Alignment(1.0, 0.0),
        tileMode: TileMode.mirror,
      ),
    ),
    width: _bannerAd.size.width.toDouble(),
    height: _bannerAd.size.height.toDouble(),
    child: AdWidget(key: UniqueKey(), ad: _bannerAd),
  );

  /// Interstitial advertisement event listener.
  static final FullScreenContentCallback<InterstitialAd> _interstitialListener =
  FullScreenContentCallback(
    onAdShowedFullScreenContent: (InterstitialAd ad) =>
        debugPrint('%ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (InterstitialAd ad) {
      debugPrint('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
    },
    onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
      debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
    },
    onAdImpression: (InterstitialAd ad) => debugPrint('$ad impression occurred.'),
  );

  /// Interstitial advertisement.
  InterstitialAd? interstitialAd;
  void createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: _interstitialAdUnit,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          interstitialAd = ad;
          _loadAttempt = 0;
        },
        onAdFailedToLoad: (LoadAdError error) {
          _loadAttempt += 1;
          interstitialAd = null;
          if (_loadAttempt <= _maxLoadAttempts) {
            createInterstitialAd();
          };
        },
      ),
    );
  }

  /// Display an interstitial advert.
  void showInterstitialAd() {
    if (interstitialAd != null) {
      interstitialAd!.fullScreenContentCallback = _interstitialListener;
      interstitialAd!.show();
    }
  }
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
