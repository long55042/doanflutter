import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'model.dart';

class NameProvider with ChangeNotifier {
  late StorageModel storageModel;
  List<StorageModel> search = [];
  storageModels(QueryDocumentSnapshot element) {
    storageModel = StorageModel(
      image: element.get("image"),
      author: element.get("author"),
      category: element.get("category"),
      content: element.get("content"),
      // estimate: element.get("estimate"),
      // favorite: element.get("favorite"),
      // seen: element.get("seen"),
      // subtitle: element.get("subtitle"),
      // time: element.get("time"),
      title: element.get("title"),
    );
    search.add(storageModel);
  }

  /////////////// Baidoc 1 ///////////////////////////////
  List<StorageModel> baidoc1List=[
  ];

  fatchBaidoc1Data() async {
    List<StorageModel> newList = [];
    QuerySnapshot value = await FirebaseFirestore.instance.collection("baidoc1").get();
    value.docs.forEach((element) {
        storageModels(element);
        newList.add(storageModel);
      },
    );
    baidoc1List = newList;
    notifyListeners();
  }

  List<StorageModel> get getBaidoc1DataList {
    return baidoc1List;
  }

  /////////////// Bai doc 2 ///////////////////////////////
  List<StorageModel> baidoc2List = [];

  fatchBaidoc2Data() async {
    List<StorageModel> newList = [];

    QuerySnapshot value =
    await FirebaseFirestore.instance.collection("baidoc2").get();
    value.docs.forEach((element) {
        storageModels(element);
        newList.add(storageModel);
      },
    );
    baidoc2List = newList;
    notifyListeners();
  }

  List<StorageModel> get getBaidoc2DataList {
    return baidoc2List;
  }
  /////////////// Baidoc 3 ///////////////////////////////
  List<StorageModel> baidoc3List=[
  ];

  fatchBaidoc3Data() async {
    List<StorageModel> newList = [];
    QuerySnapshot value = await FirebaseFirestore.instance.collection("baidoc3").get();
    value.docs.forEach((element) {
      storageModels(element);
      newList.add(storageModel);
    },
    );
    baidoc3List = newList;
    notifyListeners();
  }

  List<StorageModel> get getBaidoc3DataList {
    return baidoc3List;
  }
  /////////////// Baidoc 4 ///////////////////////////////
  List<StorageModel> baidoc4List=[
  ];

  fatchBaidoc4Data() async {
    List<StorageModel> newList = [];
    QuerySnapshot value = await FirebaseFirestore.instance.collection("baidoc4").get();
    value.docs.forEach((element) {
      storageModels(element);
      newList.add(storageModel);
    },
    );
    baidoc4List = newList;
    notifyListeners();
  }

  List<StorageModel> get getBaidoc4DataList {
    return baidoc4List;
  }

  List<StorageModel> get gerAllNameSearch {
    return search;
  }
}