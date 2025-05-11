import 'package:flutter/material.dart';
import 'package:flutter_localization_accessiblity/common.dart';

class PaidPackageCard extends StatelessWidget {
  const PaidPackageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context)!.paidPackageTitle(1),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Localizations.override(
              context: context,
              locale: const Locale("id"),
              child: Builder(
                builder: (context) {
                  return Text(
                    AppLocalizations.of(context)!.paidPackagePrice(1500000),
                    textAlign: TextAlign.center,
                  );
                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                AppLocalizations.of(context)!.paidPackageButton,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
