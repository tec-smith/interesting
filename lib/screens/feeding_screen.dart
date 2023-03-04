///**************************************************************************///
///                  Interesting (https://interesting.zone)                  ///
///             A template for a social application, using Flutter.          ///
///               Conceived in Febrary 2023 by Thomas EC. Smith              ///
///**************************************************************************///

/// Working directory: */interesting/lib/screens/feeding_screen.dart
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

/// This class defines the layout screen of the [Feed] within our application,
/// and provides interfaces to display content from the database(s).

class FeedingScreen extends StatelessWidget {
  static const routeName = '/feed';
  const FeedingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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