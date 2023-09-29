import 'package:flutter/material.dart';

class HaveAcountAndPrivacy extends StatelessWidget {
  const HaveAcountAndPrivacy(
      {super.key,
      required this.haveAcount,
      required this.signInUp,
      required this.onPressed});
  final String haveAcount;
  final String signInUp;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              haveAcount,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                signInUp,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
        Text(
          'By continuing, you agree our',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child:  Text('Terms Of Serviec',style: Theme.of(context).textTheme.bodySmall,)),
            TextButton(onPressed: () {}, child:  Text('Privacy Policy',style: Theme.of(context).textTheme.bodySmall,)),
            TextButton(onPressed: () {}, child:  Text('Content Policy',style: Theme.of(context).textTheme.bodySmall,)),
          ],
        ),
      ],
    );
  }
}
