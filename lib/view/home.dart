import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntech/controller/jobdetailsapi.dart';
import 'package:stuntech/view/job_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  JobDetailsAPI _jobDetailsAPI = JobDetailsAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Click FAB to go to the next page.',
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _jobDetailsAPI.getJobDetails().then((value) {
            _jobDetailsAPI.jobDetails.value = [value];
          }).then((value) => 
          Get.to(()=> JobDetails(jobDetails: _jobDetailsAPI.jobDetails.value)));
        },
        tooltip: 'Increment',
        child:  const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
