import 'package:flutter/material.dart';

class RegistrarOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/registrar.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Registrar Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the first office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BudgetOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/budget.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Budget Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the second office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CashieringUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cashiering Unit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/cashier.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Cashiering Unit is located at the ground floor of the Administration Building. Upon entering, you will find it on the second office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountingOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounting Unit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/accounting.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Accounting Office is located at the second floor of the Administration Building. Upon reaching the second floor, you will find it on the last office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VpreOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vice President for Research and Extension'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/vpre.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Vice President for Research and Extension Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the second office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OpOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Office of the President'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/op.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Office of the President is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the first office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VpaaOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vice President for Academic Affairs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/vpaa.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Vice President for Academic Affairs Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the third office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VpfadOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vice President for Finance and Administration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/vpfad.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Vice President for Finance and Administration Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the fourth office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NstpOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('National Service Training Program'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/nstp.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The National Service Training Program Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the first office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasucOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PASUC Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/pasuc.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The PASUC Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the third office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecordsOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Records Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/records.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Records Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the second office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdmissionOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admission Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/admission.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Admission Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the first office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoaOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commission on Audit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/coa.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Commission on Audit Office is located at the third floor of the Administration Building. Upon reaching the third floor, you will find it on the fifth office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NetworksSystemOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networks System Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/networks.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Networks System Office is located at the second floor of the Administration Building. Upon reaching the second floor, you will find it on the last office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UniversityResearchOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Research Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/research.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The University Research Office is located at the second floor of the Administration Building. Upon reaching the second floor, you will find it on the second office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HrmoOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Human Resource Management Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/hrmo.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Human Resource Management Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the last office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UniversityExtensionOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Extension Office'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/extension.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The University Extension Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the first office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpimOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Planning and Information Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/upim.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The University Planning and Information Management Office is located at the ground floor of the Administration Building. Upon entering, you will find it on the third office to your left.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenterGenderOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center for Gender and Development'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/newadmin/cgad.webp',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'The Center for Gender and Development is located at the second floor of the Administration Building. Upon reaching the second floor, you will find it on the second office to your right.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
