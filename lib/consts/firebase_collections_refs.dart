import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference PatientUsers =
    FirebaseFirestore.instance.collection("PatientUsers");
CollectionReference Doctors = FirebaseFirestore.instance.collection("Doctors");
