// To parse this JSON data, do
//
//     final mTikitDeatails = mTikitDeatailsFromJson(jsonString);

import 'dart:convert';

List<MTikitDeatails> mTikitDeatailsFromJson(String str) => List<MTikitDeatails>.from(json.decode(str).map((x) => MTikitDeatails.fromJson(x)));

String mTikitDeatailsToJson(List<MTikitDeatails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MTikitDeatails {
  final int? pk;
  final int? iteminfoFk;
  final int? tslmsFk;
  final String? dsc;
  final int? tp;
  final int? mrp;
  final int? qty;
  final int? discount;
  final double? vat;
  final int? bunitFk;
  final int? isCombo;
  final String? appAvail;
  final String? msmasteridOffersid;

  MTikitDeatails({
    this.pk,
    this.iteminfoFk,
    this.tslmsFk,
    this.dsc,
    this.tp,
    this.mrp,
    this.qty,
    this.discount,
    this.vat,
    this.bunitFk,
    this.isCombo,
    this.appAvail,
    this.msmasteridOffersid,
  });

  factory MTikitDeatails.fromJson(Map<String, dynamic> json) => MTikitDeatails(
        pk: json["pk"],
        iteminfoFk: json["iteminfo_fk"],
        tslmsFk: json["tslms_fk"],
        dsc: json["dsc"],
        tp: json["tp"],
        mrp: json["mrp"],
        qty: json["qty"],
        discount: json["discount"],
        vat: json["vat"].toDouble(),
        bunitFk: json["bunit_fk"],
        isCombo: json["is_combo"],
        appAvail: json["app_avail"],
        msmasteridOffersid: json["msmasterid_offersid"],
      );

  Map<String, dynamic> toJson() => {
        "pk": pk,
        "iteminfo_fk": iteminfoFk,
        "tslms_fk": tslmsFk,
        "dsc": dsc,
        "tp": tp,
        "mrp": mrp,
        "qty": qty,
        "discount": discount,
        "vat": vat,
        "bunit_fk": bunitFk,
        "is_combo": isCombo,
        "app_avail": appAvail,
        "msmasterid_offersid": msmasteridOffersid,
      };
}
