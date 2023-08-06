import 'package:app/src/models/notifications_model.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class NotificationProvider extends ChangeNotifier {
  final List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications {
    return _notifications;
  }

  int get notificationLength {
    return _notifications.length;
  }
}
