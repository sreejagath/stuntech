// To parse this JSON data, do
//
//     final jobDetails = jobDetailsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

JobDetails jobDetailsFromJson(String str) => JobDetails.fromJson(json.decode(str));

String jobDetailsToJson(JobDetails data) => json.encode(data.toJson());

class JobDetails {
    JobDetails({
        required this.message,
        required this.result,
    });

    String message;
    Result result;

    factory JobDetails.fromJson(Map<String, dynamic> json) => JobDetails(
        message: json["message"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "result": result.toJson(),
    };
}

class Result {
    Result({
        required this.id,
        required this.jobTitle,
        required this.createdBy,
        required this.careType,
        required this.applicantNumbers,
        required this.startDate,
        required this.endDate,
        required this.startTime,
        required this.endTime,
        required this.breakTime,
        required this.dailySalary,
        required this.transportationExpenses,
        required this.paymentAmount,
        required this.jobContent,
        required this.careItems,
        required this.dailyFlow,
        required this.treatment,
        required this.qualifications,
        required this.toBring,
        required this.transportation,
        required this.precautions,
        required this.smokingPreventionMeasure,
        required this.status,
        required this.public,
        required this.prefecture,
        required this.city,
        required this.withdrawJob,
        required this.created,
        required this.createdDate,
        required this.workDate,
        required this.acceptedApplications,
        required this.updatedOn,
        required this.createdAt,
        required this.updated,
    });

    String id;
    String jobTitle;
    CreatedBy createdBy;
    List<String> careType;
    int applicantNumbers;
    DateTime startDate;
    DateTime endDate;
    double startTime;
    double endTime;
    String breakTime;
    int dailySalary;
    bool transportationExpenses;
    int paymentAmount;
    String jobContent;
    List<String> careItems;
    String dailyFlow;
    List<String> treatment;
    List<String> qualifications;
    String toBring;
    List<String> transportation;
    String precautions;
    String smokingPreventionMeasure;
    String status;
    bool public;
    Prefecture prefecture;
    City city;
    bool withdrawJob;
    DateTime created;
    int createdDate;
    int workDate;
    List<dynamic> acceptedApplications;
    DateTime updatedOn;
    DateTime createdAt;
    DateTime updated;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        jobTitle: json["job_title"],
        createdBy: CreatedBy.fromJson(json["createdBy"]),
        careType: List<String>.from(json["careType"].map((x) => x)),
        applicantNumbers: json["applicant_numbers"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        startTime: json["start_time"].toDouble(),
        endTime: json["end_time"].toDouble(),
        breakTime: json["break_time"],
        dailySalary: json["daily_salary"],
        transportationExpenses: json["transportation_expenses"],
        paymentAmount: json["payment_amount"],
        jobContent: json["job_content"],
        careItems: List<String>.from(json["care_items"].map((x) => x)),
        dailyFlow: json["daily_flow"],
        treatment: List<String>.from(json["treatment"].map((x) => x)),
        qualifications: List<String>.from(json["qualifications"].map((x) => x)),
        toBring: json["to_bring"],
        transportation: List<String>.from(json["transportation"].map((x) => x)),
        precautions: json["precautions"],
        smokingPreventionMeasure: json["smoking_prevention_measure"],
        status: json["status"],
        public: json["public"],
        prefecture: Prefecture.fromJson(json["prefecture"]),
        city: City.fromJson(json["city"]),
        withdrawJob: json["withdraw_job"],
        created: DateTime.parse(json["created"]),
        createdDate: json["created_date"],
        workDate: json["work_date"],
        acceptedApplications: List<dynamic>.from(json["accepted_applications"].map((x) => x)),
        updatedOn: DateTime.parse(json["updatedOn"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updated: DateTime.parse(json["updated"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "job_title": jobTitle,
        "createdBy": createdBy.toJson(),
        "careType": List<dynamic>.from(careType.map((x) => x)),
        "applicant_numbers": applicantNumbers,
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "start_time": startTime,
        "end_time": endTime,
        "break_time": breakTime,
        "daily_salary": dailySalary,
        "transportation_expenses": transportationExpenses,
        "payment_amount": paymentAmount,
        "job_content": jobContent,
        "care_items": List<dynamic>.from(careItems.map((x) => x)),
        "daily_flow": dailyFlow,
        "treatment": List<dynamic>.from(treatment.map((x) => x)),
        "qualifications": List<dynamic>.from(qualifications.map((x) => x)),
        "to_bring": toBring,
        "transportation": List<dynamic>.from(transportation.map((x) => x)),
        "precautions": precautions,
        "smoking_prevention_measure": smokingPreventionMeasure,
        "status": status,
        "public": public,
        "prefecture": prefecture.toJson(),
        "city": city.toJson(),
        "withdraw_job": withdrawJob,
        "created": created.toIso8601String(),
        "created_date": createdDate,
        "work_date": workDate,
        "accepted_applications": List<dynamic>.from(acceptedApplications.map((x) => x)),
        "updatedOn": updatedOn.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updated": updated.toIso8601String(),
    };
}

class City {
    City({
        required this.id,
        required this.cityEn,
        required this.cityJp,
    });

    String id;
    String cityEn;
    String cityJp;

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["_id"],
        cityEn: json["city_en"],
        cityJp: json["city_jp"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "city_en": cityEn,
        "city_jp": cityJp,
    };
}

class CreatedBy {
    CreatedBy({
        required this.id,
        required this.name,
        required this.email,
        required this.companyDetail,
        required this.phone,
        required this.disabled,
        required this.role,
        required this.careType,
        required this.registered,
        required this.addressUpdate,
        required this.organization,
        required this.photoList,
        required this.created,
        required this.updated,
        required this.createdAt,
        required this.rejectionReason,
    });

    String id;
    String name;
    String email;
    CompanyDetail companyDetail;
    String phone;
    bool disabled;
    String role;
    List<String> careType;
    bool registered;
    String addressUpdate;
    String organization;
    List<PhotoList> photoList;
    DateTime created;
    DateTime updated;
    DateTime createdAt;
    dynamic rejectionReason;

    factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        companyDetail: CompanyDetail.fromJson(json["companyDetail"]),
        phone: json["phone"],
        disabled: json["disabled"],
        role: json["role"],
        careType: List<String>.from(json["careType"].map((x) => x)),
        registered: json["registered"],
        addressUpdate: json["address_update"],
        organization: json["organization"],
        photoList: List<PhotoList>.from(json["photoList"].map((x) => PhotoList.fromJson(x))),
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
        createdAt: DateTime.parse(json["createdAt"]),
        rejectionReason: json["rejectionReason"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "companyDetail": companyDetail.toJson(),
        "phone": phone,
        "disabled": disabled,
        "role": role,
        "careType": List<dynamic>.from(careType.map((x) => x)),
        "registered": registered,
        "address_update": addressUpdate,
        "organization": organization,
        "photoList": List<dynamic>.from(photoList.map((x) => x.toJson())),
        "created": created.toIso8601String(),
        "updated": updated.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "rejectionReason": rejectionReason,
    };
}

class CompanyDetail {
    CompanyDetail({
        required this.officeName,
        required this.howToAccess,
        required this.buisinessOverview,
        required this.address,
        required this.prefecture,
        required this.city,
        required this.cordinate,
        required this.locationName,
        required this.id,
    });

    String officeName;
    String howToAccess;
    String buisinessOverview;
    String address;
    Prefecture prefecture;
    City city;
    Cordinate cordinate;
    String locationName;
    String id;

    factory CompanyDetail.fromJson(Map<String, dynamic> json) => CompanyDetail(
        officeName: json["officeName"],
        howToAccess: json["how_to_access"],
        buisinessOverview: json["buisiness_overview"],
        address: json["address"],
        prefecture: Prefecture.fromJson(json["prefecture"]),
        city: City.fromJson(json["city"]),
        cordinate: Cordinate.fromJson(json["cordinate"]),
        locationName: json["locationName"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "officeName": officeName,
        "how_to_access": howToAccess,
        "buisiness_overview": buisinessOverview,
        "address": address,
        "prefecture": prefecture.toJson(),
        "city": city.toJson(),
        "cordinate": cordinate.toJson(),
        "locationName": locationName,
        "_id": id,
    };
}

class Cordinate {
    Cordinate({
        required this.lat,
        required this.lng,
    });

    double lat;
    double lng;

    factory Cordinate.fromJson(Map<String, dynamic> json) => Cordinate(
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Prefecture {
    Prefecture({
        required this.id,
        required this.prefectureEn,
        required this.prefectureJp,
    });

    String id;
    String prefectureEn;
    String prefectureJp;

    factory Prefecture.fromJson(Map<String, dynamic> json) => Prefecture(
        id: json["_id"],
        prefectureEn: json["prefecture_en"],
        prefectureJp: json["prefecture_jp"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "prefecture_en": prefectureEn,
        "prefecture_jp": prefectureJp,
    };
}

class PhotoList {
    PhotoList({
        required this.name,
        required this.url,
        required this.key,
        required this.id,
        required this.uploadOn,
    });

    String name;
    String url;
    String key;
    String id;
    DateTime uploadOn;

    factory PhotoList.fromJson(Map<String, dynamic> json) => PhotoList(
        name: json["name"],
        url: json["url"],
        key: json["key"],
        id: json["_id"],
        uploadOn: DateTime.parse(json["uploadOn"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
        "key": key,
        "_id": id,
        "uploadOn": uploadOn.toIso8601String(),
    };
}
