import 'package:emart_app/consts/consts.dart';

class FirestoreServices {
  //get users data
  static getUser(uid) {
    return firestore.collection(usersCollection).where('id', isEqualTo: uid).snapshots();
  }

  static getProduct(category) {
    return firestore.collection(productsCollection).where('p_category', isEqualTo: category).snapshots();
  }

  static getCart(uid){
    return firestore
    .collection(cartCollection)
    .where('added_by', isEqualTo: uid)
    .snapshots();
  }

  //delete doc
  static deleteDocument(docId){
    return firestore.collection(cartCollection).doc(docId).delete();
  }

  //get all chat msgs
  static getChatMessages(docId){
    return firestore.collection(chatsCollection).doc(docId).collection(messagesCollection).orderBy('created_on', descending: false).snapshots();
  }
}