import 'package:flutter/material.dart';

import 'department_preview.dart';

class DepartmentGrid extends StatelessWidget {
  const DepartmentGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: [
        DepartmentPreview(
          icon: Icons.people_alt_rounded,
          title: "HR",
        ),
        DepartmentPreview(
          icon: Icons.account_balance_wallet_rounded,
          title: "Finance",
        ),
        DepartmentPreview(
          icon: Icons.description_rounded,
          title: "Documents",
        ),
        DepartmentPreview(
          icon: Icons.show_chart_rounded,
          title: "Sales",
        ),
        DepartmentPreview(
          icon: Icons.campaign_rounded,
          title: "Marketing",
        ),
        DepartmentPreview(
          icon: Icons.settings_suggest_rounded,
          title: "Operations",
        ),
      ],
    );
  }
}