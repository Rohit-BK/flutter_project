transcription.dart

import 'package:flutter/material.dart';
import 'package:audio_to_text.dart';

class TranscriptionPage extends StatefulWidget {
  @override
  _TranscriptionPageState createState() => _TranscriptionPageState();
}

class _TranscriptionPageState extends State<TranscriptionPage> {
  bool isTranscribing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transcription'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isTranscribing = true;
                });
                transcribeVideo();
              },
              child: Text('Transcribe Video'),
            ),
            SizedBox(height: 16.0),
            if (isTranscribing)
              CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  void transcribeVideo() {
    String videoId = 'your_video_id_here';
    String audioUrl = YoutubeAPI.getAudioUrl(videoId);
    String transcript = AudioToText.transcribe(audioUrl);
    // TODO: Store the transcript in the database or perform any other required actions
  }
}
