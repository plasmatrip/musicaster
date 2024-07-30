import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicaster/app/internal/const/colors.dart';
import 'package:musicaster/app/internal/const/ui.dart';
import 'package:musicaster/app/internal/widgets/alert_dialog.dart';
import 'package:musicaster/app/repository/record_repo.dart';
import 'package:provider/provider.dart';

class MelodyField extends StatefulWidget {
  const MelodyField({
    super.key,
  });

  @override
  State<MelodyField> createState() => _MelodyFieldState();
}

class _MelodyFieldState extends State<MelodyField> {
  late PlayerController controller;

  @override
  void initState() {
    controller = PlayerController();
    preparePlayer();
    super.initState();
  }

  Future<void> preparePlayer() async {
    await controller.preparePlayer(
      path: context.read<RecordsRepo>().melody,
      shouldExtractWaveform: true,
      noOfSamples: 100,
      volume: 1.0,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () async {
            FilePickerResult? result;
            try {
              result = await FilePicker.platform.pickFiles(type: FileType.audio);
              if (result != null && context.mounted) {
                context.read<RecordsRepo>().melody = result.files.single.path!;
                final waveformData = await controller.extractWaveformData(
                  path: context.read<RecordsRepo>().melody,
                  noOfSamples: 100,
                );
              }
            } catch (e) {
              var message = 'Unknown error.';
              if (e is PlatformException) {
                message = e.message ?? 'Unknown error.';
              }
              if (context.mounted) {
                await alertDialog(context, message);
              }
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Melody', style: context.s14w500.copyWith(color: greyDark)),
              SizedBox(height: 4.h),
              Container(
                width: 335.w,
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: ShapeDecoration(
                  color: const Color(0xFFD3D3D3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (context.watch<RecordsRepo>().melody.isEmpty) ...[
                        Text(
                          'Melody',
                          style: context.s14w400.copyWith(color: greyDark),
                        ),
                      ] else ...[
                        AudioFileWaveforms(
                          enableSeekGesture: false,
                          size: Size(229.w, 24.h),
                          playerController: controller,
                          waveformType: WaveformType.fitWidth,
                          playerWaveStyle: PlayerWaveStyle(
                            fixedWaveColor: white,
                            waveThickness: 2.w,
                            liveWaveColor: black,
                            waveCap: StrokeCap.round,
                            backgroundColor: greyDark,
                          ),
                        ),
                        Text('${controller.maxDuration}'),
                      ],
                      SvgPicture.asset('assets/icons/Download.svg', width: 24.w, height: 24.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
