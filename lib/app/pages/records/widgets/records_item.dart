import 'dart:async';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:musicaster/app/internal/const/boxes.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/models/record.dart';
import 'package:musicaster/app/models/settings.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

class RecordsItem extends StatefulWidget {
  const RecordsItem({
    required this.records,
    required this.play,
    super.key,
  });

  final Records records;
  final bool play;

  @override
  State<RecordsItem> createState() => _RecordsItemState();
}

class _RecordsItemState extends State<RecordsItem> {
  late PlayerController controller;
  late StreamSubscription<PlayerState> playerState;
  late StreamSubscription<int> playerDuration;
  int currDuration = 0;

  @override
  void initState() {
    controller = PlayerController();
    preparePlayer();
    playerState = controller.onPlayerStateChanged.listen((state) {
      setState(() {});
    });
    playerDuration = controller.onCurrentDurationChanged.listen((duration) {
      currDuration = duration;
      setState(() {});
    });
    super.initState();
  }

  Future<void> preparePlayer() async {
    await controller.preparePlayer(
      path: '${Hive.box<Settings>(Boxes.settings).getAt(0)!.appDir}/${widget.records.melody}',
      shouldExtractWaveform: true,
      noOfSamples: 100,
      volume: 1.0,
    );
  }

  @override
  Future<void> dispose() async {
    playerState.cancel();
    playerDuration.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        if (controller.playerState.isPlaying) {
          controller.pausePlayer();
        }
        AutoRouter.of(context).push(SelectedRecordsView(recordsKey: widget.records.key));
      },
      child: Container(
        width: 335.w,
        height: 98.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: ShapeDecoration(
          color: black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () async {
                if (widget.play) {
                  if (controller.playerState.isPlaying) {
                    controller.pausePlayer();
                  } else {
                    controller.startPlayer(finishMode: FinishMode.pause);
                  }
                } else {
                  AutoRouter.of(context).push(SelectedRecordsView(recordsKey: widget.records.key));
                }
              },
              child: SvgPicture.asset(controller.playerState.isPlaying ? 'assets/icons/Pause Circle.svg' : 'assets/icons/Play Circle.svg'),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.records.title,
                    style: context.s18w400.copyWith(color: white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AudioFileWaveforms(
                        enableSeekGesture: false,
                        size: Size(184.w, 24.h),
                        playerController: controller,
                        waveformType: widget.play ? WaveformType.long : WaveformType.fitWidth,
                        playerWaveStyle: const PlayerWaveStyle(
                          scaleFactor: 40,
                          fixedWaveColor: greyDark,
                          liveWaveColor: white,
                          waveCap: StrokeCap.round,
                        ),
                      ),
                      Text(
                        '${(controller.maxDuration - currDuration) / 1000 ~/ 60}:${((controller.maxDuration - currDuration) / 1000 % 60).round().toString().padLeft(2, '0')}',
                        style: context.s13w400.copyWith(color: white),
                      ),
                    ],
                  ),
                  Text(
                    DateFormat('MMMM dd, y', 'en').format(widget.records.date),
                    style: context.s10w400.copyWith(color: greyDark),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
