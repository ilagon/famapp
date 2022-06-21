class DiegoFeederService {
  // ignore: prefer_final_fields
  DateTime _lastFedTime = DateTime.now();
  String _lastFedBy = "Alec";

  String getLastFed() {
    return "$_lastFedBy at ${_lastFedTime.toString()}";
  }
}
