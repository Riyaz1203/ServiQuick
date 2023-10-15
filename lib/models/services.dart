class ServiceList {
  String name;
  String icon;

  ServiceList({required this.name, required this.icon});

  static List<ServiceList> getServices() {
    // ignore: non_constant_identifier_names
    List<ServiceList> Services = [];

    Services.add(ServiceList(
        name: 'Ac & Home appliances services',
        icon: 'assets/images/home-ac.png'));
    Services.add(
        ServiceList(name: 'Painter', icon: 'assets/images/painter.png'));
    Services.add(
        ServiceList(name: 'Plumber', icon: 'assets/images/plumber.png'));
    Services.add(
        ServiceList(name: 'Carpenter', icon: 'assets/images/carpenter.png'));
    Services.add(ServiceList(
        name: 'Electrician', icon: 'assets/images/electrician.png'));
    Services.add(ServiceList(
        name: 'Cleaning Service', icon: 'assets/images/Cleaning-service.png'));
    Services.add(
        ServiceList(name: 'PC Repair', icon: 'assets/images/pc-repair.png'));
    Services.add(
        ServiceList(name: 'Mechanic', icon: 'assets/images/mechanic.png'));

    return Services;
  }
}
