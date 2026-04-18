//ValueNotfied holds the data and notifies the listeners when the data changes
//ValueListenableBuilder listens to the ValueNotfied and rebuilds the widget when the data changes
// No need to use setState to refresh the screen when using ValueNotfied and ValueListenableBuilder)

import 'package:flutter/widgets.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
