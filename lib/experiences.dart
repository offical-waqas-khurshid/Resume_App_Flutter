import 'package:flutter/material.dart';

class Experience {
  final String jobTitle;
  final String company;
  final String date;
  final Color color;
  final bool active;
  final String description;

  Experience(
      {required this.jobTitle,
      required this.company,
      required this.date,
      required this.color,
      required this.active,
      required this.description});
}

List<Experience> experiences = [
  Experience(
      jobTitle: 'Flutter Developer',
      company: 'SQLi',
      date: 'Since 2018',
      color: Colors.orange,
      active: true,
      description: 'Dart \n\n'
          'State management\n\n'
          'Firebase\n\n'
          'Rest API\n\n'),
  Experience(
      jobTitle: 'CTO/Co-founder',
      company: 'Systemantic',
      date: '2017-2018',
      color: Colors.cyan,
      active: false,
      description:
          '- Designing and prototyping an Ethereum blockchain application for the training centers and learning sessions \n\n'
          '- Architected and developed a hybrid API (GraphQL/REST) with Node.js, Express, GraphQL, MongoDB \n\n'
          '- Designing and developing a marketplace for training centers based on React, Node.js, and GraphQL \n\n'
          '- Designing and developing a marketplace for training centers based on React, Node.js, and GraphQL. \n\n'
          '- Architecting large React/Redux applications.\n\n'),
  Experience(
      jobTitle: 'Technical Consultant and Instructor',
      company: 'Systemantic',
      date: '2017-2018',
      color: Colors.cyan,
      active: false,
      description:
          '- Prepare materials and courses to facilitate technical training \n\n'
          '- Identify Software development Training needs and design \n\n'
          '- Effective training programs for developers \n\n'
          '- Ensure a high level React/React Native/Redux training for front-end engineers \n\n'),
  Experience(
      jobTitle: 'Graphic Designer',
      company: 'Linkry Events',
      date: '2016-2017',
      color: Colors.blue,
      active: false,
      description:
          '- Help teams to design and implement scalable and highly available backend applications and micro-services using JavaScript/Node.js and MongoDB.\n\n'
          '- Identify weaknesses in applications and infrastructure and find reliable solutions for them \n\n'
          '- Develop and design new components for our web app, on the backend and frontend\n\n'),
  Experience(
      jobTitle: 'Education',
      company: '',
      date: '',
      color: Colors.blue,
      active: false,
      description: 'BS-CS    2020-2024\n\n'
          'Comsats University Islamabad\n\n'),
  Experience(
      jobTitle: 'Contact Us',
      company: '',
      date: '',
      color: Colors.blue,
      active: false,
      description: 'umiar07edu@gmail.com\n\n'
          '03007162879\n\n'
          'Wasli Chock Vehari\n\n'),
  Experience(
      jobTitle: 'Languages',
      company: '',
      date: '',
      color: Colors.deepPurple,
      active: false,
      description: 'English\n\n'
          'Urdu\n\n'),
  Experience(
      jobTitle: 'Hobbies',
      company: '',
      date: '',
      color: Colors.deepPurple,
      active: false,
      description: 'Designing\n\n'
          'PhotoGraphy\n\n'),
];
