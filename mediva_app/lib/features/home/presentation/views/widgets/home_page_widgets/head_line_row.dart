import 'package:flutter/material.dart';
import 'package:mediva/features/home/presentation/views/notification_page_view.dart';
import 'package:mediva/features/home/presentation/views/widgets/notification_page_widgets/notification_page_view_body.dart';
import '../../../../../../core/app_color.dart';
import '../../../../../../core/styles.dart';

class HeadLineRow extends StatelessWidget {
  const HeadLineRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WELCOME BACK",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kBlackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "UNKNOWN PERSON",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NotificationPageView(),
              ),
            );
          },
          child: const CircleAvatar(
            backgroundColor: AppColor.kWhiteColor,
            radius: 24,
            child: Icon(
              Icons.notifications_none_outlined,
              color: AppColor.kBlackColor,
            ),
          ),
        ),
      ],
    );
  }
}
