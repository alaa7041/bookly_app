import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void>  launchCustomUr(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
  await launchUrl(uri);
  }else{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Cannot launch $url')),
    );
  }
}