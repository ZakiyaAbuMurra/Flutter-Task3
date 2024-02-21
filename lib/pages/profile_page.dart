import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 24),
            _buildHeader(context),
            const SizedBox(height: 24),
            _buildProfileOption(
              context: context,
              icon: Icons.cake,
              title: 'Birthday',
              subtitle: '24/12/2001',
            ),
            _buildProfileOption(
              context: context,
              icon: Icons.phone,
              title: 'Phone',
              subtitle: '818 123 4567',
            ),
            _buildProfileOption(
              context: context,
              icon: Icons.camera_alt,
              title: 'Instagram',
              subtitle: 'Add Instagram account',
            ),
            _buildProfileOption(
              context: context,
              icon: Icons.email,
              title: 'Email',
              subtitle: 'info@GSG.ps',
            ),
            _buildProfileOption(
              context: context,
              icon: Icons.lock_outline,
              title: 'Password',
              subtitle: 'Change your password',
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(
              'assets/images/profilee.png'), // Using a local image as the avatar.
        ),
        const SizedBox(height: 16),
        Text(
          'Rasme AbuMurra',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }

  Widget _buildProfileOption({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      elevation: 2, // Slight shadow
      margin: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 0), // Spacing between cards
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          // TODO: Handle each option tap
        },
      ),
    );
  }
}
