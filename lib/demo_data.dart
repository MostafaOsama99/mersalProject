//import 'dart:core';

import 'models/patient_model.dart';
import 'models/user_donation_model.dart';
import 'models/project_model.dart';

const List<Patient> demoCases = [
  Patient(
    id: '1',
    goal: 18000,
    percentage: 55,
    raised: 10000,
    isUrgent: true,
    imageUrl: 'Images/blanket.jpg', //'Images/homless.webp'
  ),
  Patient(
    id: '2',
    isUrgent: true,
    goal: 16000,
    percentage: 25,
    raised: 4000,
    imageUrl: 'Images/blanket.jpg', //'Images/hungry.webp',
  ),
  Patient(
    id: '3',
    goal: 15000,
    percentage: 83,
    isUrgent: true,
    raised: 12500,
    imageUrl: 'Images/blanket.jpg',// 'Images/poor.jpg',
  ),
  Patient(
    id: '4',
    goal: 17000,
    percentage: 47,
    raised: 11000,
    isUrgent: true,
    imageUrl: 'Images/blanket.jpg', //'Images/volunt.webp',
  ),
  Patient(
    id: '5',
    goal: 8000,
    percentage: 87,
    raised: 7000,
    isUrgent: false,
    imageUrl: 'Images/blanket.jpg', //'Images/homless.webp'
  ),
];

final List<UserDonation> userDonation = [
  UserDonation(caseId: '1', id: '21', date: DateTime.now(), amount: 400),
  UserDonation(caseId: '3', id: '22', date: DateTime.now(), amount: 600),
];

const List<Project> demoProjects = [
  Project(
      imageUrl: 'Images/talkkkkkkk.jpg',
      title: 'covid-19 camps',
      raised: 1250,
      goal: 5000,
      id:'1'
  ),
  Project(
      imageUrl: 'Images/blanket.jpg',
      title: 'help with blanket',
      raised: 15000,
      goal: 30000,
      id:'2'
  ),
  Project(
      imageUrl: 'Images/talkkkkkkk.jpg',
      title: 'fix roof',
      raised: 20000,
      goal: 100000,
      id:'3'
  ),
  Project(
      imageUrl: 'Images/talkkkkkkk.jpg',
      title: 'connect water',
      raised: 110000,
      goal: 150000,
      id:'4'
  ),
  Project(
      imageUrl: 'Images/talkkkkkkk.jpg',
      title: 'covid-19 medicines',
      raised: 4000,
      goal: 50000,
      id:'5'
  ),
  Project(
      imageUrl: 'Images/talkkkkkkk.jpg',
      title: 'Communication',
      raised: 20000,
      goal: 30000,
      id:'6'
  ),
];
