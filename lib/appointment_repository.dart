import 'appointment.dart';

class AppointmentRepository {
  static final AppointmentRepository _instance = AppointmentRepository._internal();
  List<Appointment> _appointments = [];

  factory AppointmentRepository() {
    return _instance;
  }

  AppointmentRepository._internal();

  void addAppointment(Appointment appointment) {
    _appointments.add(appointment);
  }

  List<Appointment> getAppointments() {
    return _appointments;
  }
}
