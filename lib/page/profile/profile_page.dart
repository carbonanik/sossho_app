import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/profile/profile_settings_page.dart';
import 'package:sossho_app/page/profile/view_billing_address_page.dart';
import 'package:sossho_app/page/profile/view_delivery_address_page.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/auth_check.dart';

import '../../backend/auth_persist_data.dart';
import '../../backend/links.dart';
import '../../providers/user_profile_provider.dart';
import '../../widgets/app_button.dart';
import '../auth/login_page.dart';
import 'change_password_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: AuthCheck(child: _buildPage(context)),
    );
  }

  Padding _buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  _buildProfileView(),
                  const SizedBox(height: 40),
                  const Text("User Profile"),
                  const SizedBox(height: 16),
                  _buildProfileSettingButton(context),
                  const SizedBox(height: 24),
                  const Text("Other Settings"),
                  const SizedBox(height: 16),
                  _buildDeliveryAddress(context),
                  const SizedBox(height: 16),
                  _buildBillingAddress(context),
                  const SizedBox(height: 16),
                  _buildChangePassword(context),
                  const SizedBox(height: 24),
                  _buildLogoutButton(context),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppButton _buildLogoutButton(BuildContext context) {
    return AppButton(
      onPressed: () async {
        await AuthPersistData().deleteAuthData();
        if (context.mounted) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
            (route) => false,
          );
        }
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.logout),
          SizedBox(width: 10),
          Text("Logout"),
        ],
      ),
    );
  }

  GestureDetector _buildBillingAddress(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ViewBillingAddressPage());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // Icon(Icons.location_on, color: Colors.grey.shade700),
            const SizedBox(width: 10),
            Text("Billing Address",
                style: TextStyle(color: Colors.grey.shade700)),
            const Spacer(),
            Icon(Icons.arrow_forward, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildDeliveryAddress(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ViewDeliveryAddressPage());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // Icon(Icons.location_on, color: Colors.grey.shade700),
            const SizedBox(width: 10),
            Text("Delivery Address",
                style: TextStyle(color: Colors.grey.shade700)),
            const Spacer(),
            Icon(Icons.arrow_forward, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildChangePassword(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ChangePasswordPage());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // Icon(Icons.location_on, color: Colors.grey.shade700),
            const SizedBox(width: 10),
            Text("Change Password",
                style: TextStyle(color: Colors.grey.shade700)),
            const Spacer(),
            Icon(Icons.arrow_forward, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildProfileSettingButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(const ProfileSettingsPage());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // Icon(Icons.location_on, color: Colors.grey.shade700),
            const SizedBox(width: 10),
            Text("Profile Settings",
                style: TextStyle(color: Colors.grey.shade700)),
            const Spacer(),
            Icon(Icons.arrow_forward, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }

  Container _buildProfileView() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final profile = ref.watch(userProfileProvider);
          return Row(
            children: [
              GestureDetector(
                onTap: () async {
                  // final image = await ImagePicker()
                  //     .pickImage(source: ImageSource.gallery);
                  //
                  // if (image != null) {
                  //   ref
                  //       .read(userProfileProvider.notifier)
                  //       .updateProfileImage(imagePath: image.path);
                  // }
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    (profile.value?.profileImage ?? ""),
                  ),
                  child: profile.isLoading
                      ? const CircularProgressIndicator()
                      : profile.value?.profileImage == null
                          ? const Icon(Icons.person,
                              size: 20, color: Colors.white)
                          : null,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  Text(
                    profile.value?.fullName ?? "",
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
