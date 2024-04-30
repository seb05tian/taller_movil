import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getMateriales() async {
  List materiales = [];
  CollectionReference collectionReferenceMateiales =
      db.collection('Materiales');

  QuerySnapshot queryMateriales = await collectionReferenceMateiales.get();

  queryMateriales.docs.forEach((element) {
    materiales.add(element.data());
  });
  return materiales;
}

Future<List> getSolicitudes() async {
  List solicitudes = [];
  CollectionReference collectionReferenceSolicitudes =
      db.collection('Solicitudes');

  QuerySnapshot querySolicitudes = await collectionReferenceSolicitudes.get();

  querySolicitudes.docs.forEach((element) {
    solicitudes.add(element.data());
  });
  return solicitudes;
}

Future<QuerySnapshot> getAllDocumentsFromCollection() async {
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('Materiales').get();
  return querySnapshot;
}
