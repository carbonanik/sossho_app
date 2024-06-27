import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../model/profile_update_request.dart';
import '../providers/user_profile_provider.dart';
import '../utils/show_snack_bar.dart';
import '../widgets/add_text_field.dart';
import '../widgets/app_button.dart';

class ProfileSettingsPage extends ConsumerStatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  ConsumerState<ProfileSettingsPage> createState() =>
      _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends ConsumerState<ProfileSettingsPage> {
  final _fullNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _dobController = TextEditingController();
  String gender = 'Male';
  String profileImage = '';

  bool loading = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _mobileController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(userProfileProvider.future).errorAsValue().then((value) {
        _fullNameController.text = value.value?.fullName ?? "";
        _mobileController.text = value.value?.mobile ?? "";
        _dobController.text = value.value?.dateOfBirth ?? '';
        final genderUpperCase = value.value?.gender ?? 'MALE';
        if (genderUpperCase == 'MALE') {
          gender = 'Male';
        } else if (genderUpperCase == 'FEMALE') {
          gender = 'Female';
        }
        profileImage = value.value?.profileImage ?? '';
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              AppTextField(
                hintText: 'Full Name',
                prefixIcon: Icons.person,
                controller: _fullNameController,
                fillColor: Colors.grey.shade200,
              ),
              const SizedBox(height: 16.0),
              AppTextField(
                hintText: 'Date of Birth',
                prefixIcon: Icons.date_range,
                controller: _dobController,
                fillColor: Colors.grey.shade200,
                readOnly: true,
                onTap: () async {
                  final initial = _dobController.text.isEmpty
                      ? DateTime.now()
                      : DateFormat('dd/MM/yyyy').parse(_dobController.text);
                  final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: initial,
                      firstDate: DateTime(1900, 8),
                      lastDate: DateTime.now().add(const Duration(days: 365)));

                  if (picked != null) {
                    _dobController.text =
                        DateFormat('dd/MM/yyyy').format(picked);
                  }
                },
              ),
              const SizedBox(height: 16.0),
              AppTextField(
                hintText: 'Mobile',
                prefixIcon: Icons.phone,
                controller: _mobileController,
                fillColor: Colors.grey.shade200,
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Theme.of(context).colorScheme.surfaceVariant,
                ),
                child: Row(
                  children: [
                    // gender icon
                    const Icon(Icons.male),
                    const SizedBox(width: 10.0),
                    const Text('Gender', style: TextStyle(fontSize: 16.0)),
                    const SizedBox(width: 26.0),
                    Expanded(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: gender,
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'Male',
                            child: Text('Male'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Female',
                            child: Text('Female'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            gender = value ?? 'Male';
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50.0),
              AppButton(
                onPressed: () async {
                  setState(() {
                    loading = true;
                  });
                  final res = await ref
                      .read(userProfileProvider.notifier)
                      .updateProfile(
                        request: ProfileUpdateRequest(
                          fullName: _fullNameController.text,
                          mobile: _mobileController.text,
                          dateOfBirth: _dobController.text,
                          gender: gender.toUpperCase(),
                          profileImage: profileImage,
                        ),
                      )
                      .errorAsValue();

                  setState(() {
                    loading = false;
                  });

                  if (res.hasError) {
                    if (context.mounted) {
                      showSnackBar(
                          context, res.error.toString(), Colors.redAccent);
                    }
                  } else {
                    if (context.mounted) {
                      showSnackBar(context, 'Profile updated successfully');
                    }
                  }
                },
                child: Text(loading ? 'Saving...' : 'Save Changes'),
              ),
              const SizedBox(height: 22.0),
              const SizedBox(height: 22.0),
            ],
          ),
        ),
      ),
    );
  }
}
