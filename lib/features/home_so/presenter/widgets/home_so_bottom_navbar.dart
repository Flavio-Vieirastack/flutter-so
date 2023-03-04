import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeSoBottomNavbar extends StatelessWidget {
  const HomeSoBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spaceBetween = SizedBox(
      width: 1.w,
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.2.h),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.sp),
          topRight: Radius.circular(7.sp),
          bottomRight: Radius.circular(7.sp),
        ),
        child: SizedBox(
          height: 2.h,
          child: ColoredBox(
            color: Colors.black.withOpacity(0.8),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.circle_outlined,
                      size: 8.sp,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 6.sp,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.folder,
                      size: 6.sp,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.volume_down),
                  spaceBetween,
                  const Icon(Icons.wifi),
                  spaceBetween,
                  Text(
                    DateTime.now().toString(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
