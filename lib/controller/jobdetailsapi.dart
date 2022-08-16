import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:stuntech/model/job_details.dart';

class JobDetailsAPI {
  var jobDetails = [].obs;
  Future getJobDetails() async {
    var token = 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkMWIxOWYwZjU4ZTJjOWE5Njc3M2M5MmNmODA0NDEwMTc5NzEzMjMiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoidmlzaG51IEsiLCJyb2xlIjoidXNlciIsInVzZXJJZCI6IjYyZmIxZWJmZGUxMmIwNDVmMDMxMDFlYSIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9rYWlnby1kYzRhZSIsImF1ZCI6ImthaWdvLWRjNGFlIiwiYXV0aF90aW1lIjoxNjYwNjI0ODE2LCJ1c2VyX2lkIjoibHA1TEZJTTMyWGYxaXpGQXN0UnZ6NnBLYk00MiIsInN1YiI6ImxwNUxGSU0zMlhmMWl6RkFzdFJ2ejZwS2JNNDIiLCJpYXQiOjE2NjA2MjQ4MTYsImV4cCI6MTY2MDYyODQxNiwiZW1haWwiOiJsMTJAc3R1bm50ZWNoLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicGhvbmVfbnVtYmVyIjoiKzkxOTY1ODQxMTc0MCIsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsicGhvbmUiOlsiKzkxOTY1ODQxMTc0MCJdLCJlbWFpbCI6WyJsMTJAc3R1bm50ZWNoLmNvbSJdfSwic2lnbl9pbl9wcm92aWRlciI6ImN1c3RvbSJ9fQ.Jxz0GAuNLNACx9X2F1j_39-Y1rZtpDgTm3xGnQYmY-eJuyCd7nCQyHbl5phrI2txeqqeZQavidyOOlgbHIB_gVGQ9CX6AG91E18HolEHkcxPsHT2U40vWlDnpFq8BusGL5550aOhiM9NqBfk-NZxLxjotgFL_AcpkF0zB_zOFZuNHd2JqXj2r5BpPad5Icru0VpqJY81hlTE_5ED3MDuYhrL3m8s-qbitGAZGSiL18W7iVnDyKE380vk94cFT2PkHRj42BDZyfBffaBtzDh7qsTc6k5mh9Lubv0884dRIBfH9V3yVIJ8wYHVroKB7Hks6PJeLYWp0WHYCjVoIKxS4g';
    var sampleJobId = '62f5f8669146b6b12eb5ef92';
    var response = await http.get(
        Uri.parse(
            'http://3.237.223.130/careWorker/get-parttimeJobDetail/62f5f8669146b6b12eb5ef92'),
        headers: {
          'Authorization': token,
          'Content-Type': 'application/json',
        });
    return jobDetailsFromJson(response.body);
  }
}
