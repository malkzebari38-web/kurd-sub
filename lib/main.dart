import 'package:flutter/material.dart';
import 'video_picker.dart';
import 'video_view.dart';
import 'subtitle_list.dart';
import 'subtitle_editor.dart';
import 'vip_payment.dart';

void main() {
  runApp(const KurdSubApp());
}

class KurdSubApp extends StatelessWidget {
  const KurdSubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KurdSub',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        primaryColor: const Color(0xFF06B6D4),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KurdSub - کوردسەب', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1E293B),
        centerTitle: true