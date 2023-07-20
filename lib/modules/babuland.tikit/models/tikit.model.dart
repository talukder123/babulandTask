// To parse this JSON data, do
//
//     final mTikit = mTikitFromJson(jsonString);

import 'dart:convert';

List<MTikit> mTikitFromJson(String str) => List<MTikit>.from(json.decode(str).map((x) => MTikit.fromJson(x)));

String mTikitToJson(List<MTikit> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MTikit {
  final int? pk;
  final int? customerIdFk;
  final String? mobileNumber;
  final int? total;
  final int? discountAmount;
  final double? subTotal;
  final int? receivedAmount;
  final int? returnAmount;
  final String? paymentType;
  final String? sellPerson;
  final int? bunitFk;
  final String? sellDate;
  final dynamic couponCode;
  final double? vat;
  final String? slType;
  final String? trnId;
  final int? discountAble;
  final String? discountCoupon;
  final int? discountPct;
  final int? vatableAmt;
  final int? netAmt;
  final int? appAvil;
  final String? unixtimestamp;
  final dynamic usedBranch;
  final dynamic useDate;
  final String? startDate;

  MTikit({
    this.pk,
    this.customerIdFk,
    this.mobileNumber,
    this.total,
    this.discountAmount,
    this.subTotal,
    this.receivedAmount,
    this.returnAmount,
    this.paymentType,
    this.sellPerson,
    this.bunitFk,
    this.sellDate,
    this.couponCode,
    this.vat,
    this.slType,
    this.trnId,
    this.discountAble,
    this.discountCoupon,
    this.discountPct,
    this.vatableAmt,
    this.netAmt,
    this.appAvil,
    this.unixtimestamp,
    this.usedBranch,
    this.useDate,
    this.startDate,
  });

  factory MTikit.fromJson(Map<String, dynamic> json) => MTikit(
        pk: json["pk"],
        customerIdFk: json["customer_id_fk"],
        mobileNumber: json["mobile_number"],
        total: json["total"],
        discountAmount: json["discount_amount"],
        subTotal: json["sub_total"].toDouble(),
        receivedAmount: json["received_amount"],
        returnAmount: json["return_amount"],
        paymentType: json["payment_type"],
        sellPerson: json["sell_person"],
        bunitFk: json["bunit_fk"],
        sellDate: json["sell_date"],
        couponCode: json["coupon_code"],
        vat: json["vat"].toDouble(),
        slType: json["sl_type"],
        trnId: json["trn_id"],
        discountAble: json["discount_able"],
        discountCoupon: json["discount_coupon"],
        discountPct: json["discount_pct"],
        vatableAmt: json["vatable_amt"],
        netAmt: json["net_amt"],
        appAvil: json["app_avil"],
        unixtimestamp: json["unixtimestamp"],
        usedBranch: json["used_branch"],
        useDate: json["use_date"],
        startDate: json["start_date"],
      );

  Map<String, dynamic> toJson() => {
        "pk": pk,
        "customer_id_fk": customerIdFk,
        "mobile_number": mobileNumber,
        "total": total,
        "discount_amount": discountAmount,
        "sub_total": subTotal,
        "received_amount": receivedAmount,
        "return_amount": returnAmount,
        "payment_type": paymentType,
        "sell_person": sellPerson,
        "bunit_fk": bunitFk,
        "sell_date": sellDate,
        "coupon_code": couponCode,
        "vat": vat,
        "sl_type": slType,
        "trn_id": trnId,
        "discount_able": discountAble,
        "discount_coupon": discountCoupon,
        "discount_pct": discountPct,
        "vatable_amt": vatableAmt,
        "net_amt": netAmt,
        "app_avil": appAvil,
        "unixtimestamp": unixtimestamp,
        "used_branch": usedBranch,
        "use_date": useDate,
        "start_date": startDate,
      };
}
