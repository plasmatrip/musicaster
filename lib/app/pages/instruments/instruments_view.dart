import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicaster/app/models/instrument.dart';
import 'package:musicaster/app/pages/instruments/widgets/instrument_item.dart';
import 'package:musicaster/app/repository/instrument_repo.dart';
import 'package:provider/provider.dart';

@RoutePage()
class InstrumentsView extends StatelessWidget {
  const InstrumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable instruments = context.watch<InstrumentRepo>().Instruments();
    return ListView.separated(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h, bottom: 94.h),
      itemCount: instruments.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        Instrument instrument = instruments.elementAt(index);
        return InstrumentItem(instrument: instrument);
      },
    );
  }
}
