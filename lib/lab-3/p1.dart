import 'dart:io';

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void GetCandidateDetails() {
    stdout.write('Enter Candidate ID: ');
    Candidate_ID = int.parse(stdin.readLineSync()!);

    stdout.write('Enter Candidate Name: ');
    Candidate_Name = stdin.readLineSync()!;

    stdout.write('Enter Candidate Age: ');
    Candidate_Age = int.parse(stdin.readLineSync()!);

    stdout.write('Enter Candidate Weight: ');
    Candidate_Weight = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Candidate Height: ');
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    print('Candidate Details:');
    print('ID: $Candidate_ID');
    print('Name: $Candidate_Name');
    print('Age: $Candidate_Age');
    print('Weight: $Candidate_Weight');
    print('Height: $Candidate_Height');
  }
}

void main() {
  Candidate candidate = Candidate();

  candidate.GetCandidateDetails();

  candidate.DisplayCandidateDetails();
}
