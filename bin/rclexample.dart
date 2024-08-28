import 'dart:io';

import 'package:rcldart/rcldart.dart';

void main() {
  RclDart().init();
  var node = RclDart().createNode("rcldart_to_ros2", "rcldart");
  
  var pub = node.createPublisher(topic_name: "hello_world");
  pub.publish();
  while (true) {
    sleep(Duration(seconds: 3));
    pub.publish();
  }
}