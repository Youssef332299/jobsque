import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Core/app_colors.dart';
import '../provider/profileState.dart';


class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

ProfileState state = ProfileState();

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 9,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Iconsax.arrow_left)),
              const SizedBox(
                width: 90,
              ),
              const Text(
                "Notification",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 105,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          Container(
            width: double.infinity,
            height: 42,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: AppColors.neutral100,
                border: Border.all(color: AppColors.neutral200)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Job notification",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral500),
                ),
              ],
            ),
          ), // gray Container
          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Your Job Search Alert",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 145,
              ),
              CupertinoSwitch(
                  value: state.searchAlert,
                  onChanged: (val) {
                    val = state.searchAlert;
                    setState(() {
                      if (state.searchAlert == true) {
                        state.searchAlert = false;
                      } else {
                        state.searchAlert = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.searchAlert == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Job Application Update",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 135,
              ),
              CupertinoSwitch(
                  value: state.applicationUpdate,
                  onChanged: (val) {
                    val = state.applicationUpdate;
                    setState(() {
                      if (state.applicationUpdate == true) {
                        state.applicationUpdate = false;
                      } else {
                        state.applicationUpdate = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.applicationUpdate == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Job Application Reminders",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 110,
              ),
              CupertinoSwitch(
                  value: state.applicationReminders,
                  onChanged: (val) {
                    val = state.applicationReminders;
                    setState(() {
                      if (state.applicationReminders == true) {
                        state.applicationReminders = false;
                      } else {
                        state.applicationReminders = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.applicationReminders == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Jobs You May Be Interested In",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(width: 85),
              CupertinoSwitch(
                  value: state.jobsInterested,
                  onChanged: (val) {
                    val = state.jobsInterested;
                    setState(() {
                      if (state.jobsInterested == true) {
                        state.jobsInterested = false;
                      } else {
                        state.jobsInterested = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.jobsInterested == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Job Seeker Updates",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 158,
              ),
              CupertinoSwitch(
                  value: state.seekerUpdates,
                  onChanged: (val) {
                    val = state.seekerUpdates;
                    setState(() {
                      if (state.seekerUpdates == true) {
                        state.seekerUpdates = false;
                      } else {
                        state.seekerUpdates = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.seekerUpdates == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 42,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: AppColors.neutral100,
                border: Border.all(color: AppColors.neutral200)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Other notification",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral500),
                ),
              ],
            ),
          ), // box gray 2

          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Show Profile",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 210,
              ),
              CupertinoSwitch(
                  value: state.showProfile,
                  onChanged: (val) {
                    val = state.showProfile;
                    setState(() {
                      if (state.showProfile == true) {
                        state.showProfile = false;
                      } else {
                        state.showProfile = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.showProfile == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "All Message",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 211,
              ),
              CupertinoSwitch(
                  value: state.allMessage,
                  onChanged: (val) {
                    val = state.allMessage;
                    setState(() {
                      if (state.allMessage == true) {
                        state.allMessage = false;
                      } else {
                        state.allMessage = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.allMessage == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Message Nudges",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                width: 175,
              ),
              CupertinoSwitch(
                  value: state.messageNudges,
                  onChanged: (val) {
                    val = state.messageNudges;
                    setState(() {
                      if (state.messageNudges == true) {
                        state.messageNudges = false;
                      } else {
                        state.messageNudges = true;
                      }
                    });
                  },
                  trackColor: AppColors.neutral300,
                  activeColor: AppColors.primary500,
                  thumbColor: state.messageNudges == true
                      ? AppColors.primary100
                      : AppColors.neutral100),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
