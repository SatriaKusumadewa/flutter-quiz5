class ContactModel {
  final String name;
  final String phone;
  final String status;

  ContactModel({
    required this.name,
    required this.phone,
    required this.status,
  });

  static List<ContactModel> getSampleContacts() {
    return [
      ContactModel(name: 'Ahmad Rizki', phone: '0812-3456-7890', status: 'Online'),
      ContactModel(name: 'Siti Nurhaliza', phone: '0813-4567-8901', status: 'Offline'),
      ContactModel(name: 'Budi Setiawan', phone: '0814-5678-9012', status: 'Online'),
      ContactModel(name: 'Dewi Lestari', phone: '0815-6789-0123', status: 'Away'),
      ContactModel(name: 'Eko Prasetyo', phone: '0816-7890-1234', status: 'Online'),
      ContactModel(name: 'Fitri Handayani', phone: '0817-8901-2345', status: 'Offline'),
    ];
  }
}