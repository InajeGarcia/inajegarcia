import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Vertex {
  final String id;
  final LatLng coordinates;
  List<Edge> adjacentVertices;

  Vertex(
      {required this.id,
      required this.coordinates,
      this.adjacentVertices = const []});
}

class Edge {
  final Vertex source;
  final Vertex destination;
  final double weight;

  Edge({required this.source, required this.destination, required this.weight});
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _googleMapController;
  static CameraPosition _initialCameraPosition = const CameraPosition(
      target: LatLng(17.55999787585745, 120.38449803821894), zoom: 17);
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};
  List<List<Vertex>> paths = [];
  int selectedPathIndex = -1;

  @override
  void initState() {
    super.initState();
    paths = _createPaths();
    markers.addAll(_createMarkersFromPaths(paths));
  }

  List<List<Vertex>> _createPaths() {
    return [
      [
        Vertex(
          id: 'CBAA1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CBAA2',
          coordinates: const LatLng(17.56017570094399, 120.38428614735116),
        ),
        Vertex(
          id: 'CBAA3',
          coordinates: const LatLng(17.560629593475092, 120.38466352830868),
        ),
        Vertex(
          id: 'College of Bussiness Administration and Accountancy',
          coordinates: const LatLng(17.56076168504898, 120.38448063424464),
        ),
      ],
      [
        Vertex(
          id: 'CArch1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CArch2',
          coordinates: const LatLng(17.560462597828586, 120.38381897286173),
        ),
        Vertex(
          id: 'CArch3',
          coordinates: const LatLng(17.560183159129444, 120.38365053493385),
        ),
        Vertex(
          id: 'College of Architecture',
          coordinates: const LatLng(17.560260159485072, 120.38355126438263),
        ),
      ],
      [
        Vertex(
          id: 'CAS1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CAS2',
          coordinates: const LatLng(17.560434126210936, 120.38400394128293),
        ),
        Vertex(
          id: 'CAS3',
          coordinates: const LatLng(17.560765363813218, 120.38427135037755),
        ),
        Vertex(
          id: 'College of Arts and Sciences',
          coordinates: const LatLng(17.560879255620183, 120.38409531429134),
        ),
      ],
      [
        Vertex(
          id: 'CCIT1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CCIT2',
          coordinates: const LatLng(17.560434126210936, 120.38400394128293),
        ),
        Vertex(
          id: 'CCIT3',
          coordinates: const LatLng(17.560765363813218, 120.38427135037755),
        ),
        Vertex(
          id: 'College of Communication and Information Technology',
          coordinates: const LatLng(17.561304858642654, 120.38361178765449),
        ),
      ],
      [
        Vertex(
          id: 'CCJE1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CCJE2',
          coordinates: const LatLng(17.56036820610083, 120.38393928505782),
        ),
        Vertex(
          id: 'CCJE3',
          coordinates: const LatLng(17.56082962455271, 120.38334072247467),
        ),
        Vertex(
          id: 'CCJE4',
          coordinates: const LatLng(17.560720795921892, 120.38322215303249),
        ),
        Vertex(
          id: 'CCJE5',
          coordinates: const LatLng(17.561112841593424, 120.38261423046335),
        ),
        Vertex(
          id: 'CCJE6',
          coordinates: const LatLng(17.560992472858274, 120.38249371384155),
        ),
        Vertex(
          id: 'College of Criminology and Justice Education',
          coordinates: const LatLng(17.56117133202978, 120.38236712832612),
        ),
      ],
      [
        Vertex(
          id: 'CE1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CE2',
          coordinates: const LatLng(17.56038392395092, 120.38397061131931),
        ),
        Vertex(
          id: 'CE3',
          coordinates: const LatLng(17.560584841522388, 120.38366091678289),
        ),
        Vertex(
          id: 'College of Engineering',
          coordinates: const LatLng(17.560536602700402, 120.38351424218926),
        ),
      ],
      [
        Vertex(
          id: 'CFAD1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CFAD2',
          coordinates: const LatLng(17.56037081230461, 120.38394988466219),
        ),
        Vertex(
          id: 'CFAD3',
          coordinates: const LatLng(17.56082502467514, 120.38332856678105),
        ),
        Vertex(
          id: 'CFAD4',
          coordinates: const LatLng(17.560716350711104, 120.38323268906309),
        ),
        Vertex(
          id: 'CFAD5',
          coordinates: const LatLng(17.561065511475643, 120.38269623577703),
        ),
        Vertex(
          id: 'College of Fine Arts and Design',
          coordinates: const LatLng(17.560953046741833, 120.3825675837186),
        ),
      ],
      [
        Vertex(
          id: 'CHS1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CHS2',
          coordinates: const LatLng(17.56037081230461, 120.38394988466219),
        ),
        Vertex(
          id: 'CHS3',
          coordinates: const LatLng(17.56082502467514, 120.38332856678105),
        ),
        Vertex(
          id: 'CHS4',
          coordinates: const LatLng(17.560716350711104, 120.38323268906309),
        ),
        Vertex(
          id: 'CHS5',
          coordinates: const LatLng(17.561065511475643, 120.38269623577703),
        ),
        Vertex(
          id: 'CHS6',
          coordinates: const LatLng(17.561364903502014, 120.38224390698075),
        ),
        Vertex(
          id: 'CHS7',
          coordinates: const LatLng(17.561318457660715, 120.38196283415982),
        ),
        Vertex(
          id: 'College of Health and Science',
          coordinates: const LatLng(17.561315560102365, 120.38184292743306),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CHTM2',
          coordinates: const LatLng(17.56234339138733, 120.38270992100506),
        ),
        Vertex(
          id: 'College of Hotel and Tourism Management',
          coordinates: const LatLng(17.562078977904275, 120.38304562132981),
        ), //edit pay for back route
      ],
      [
        Vertex(
          id: 'College of Law',
          coordinates: const LatLng(17.56073506232349, 120.3829012136316),
        ),
      ],
      [
        Vertex(
          id: 'CMed1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CMed2',
          coordinates: const LatLng(17.56037081230461, 120.38394988466219),
        ),
        Vertex(
          id: 'CMed3',
          coordinates: const LatLng(17.56082502467514, 120.38332856678105),
        ),
        Vertex(
          id: 'CMed4',
          coordinates: const LatLng(17.560716350711104, 120.38323268906309),
        ),
        Vertex(
          id: 'CMed5',
          coordinates: const LatLng(17.561065511475643, 120.38269623577703),
        ),
        Vertex(
          id: 'CMed6',
          coordinates: const LatLng(17.561364903502014, 120.38224390698075),
        ),
        Vertex(
          id: 'CMed7',
          coordinates: const LatLng(17.561805037201868, 120.38167374241384),
        ),
        Vertex(
          id: 'College of Medicine',
          coordinates: const LatLng(17.561247803573504, 120.3808899499823),
        ),
      ],
      [
        Vertex(
          id: 'College of Nursing',
          coordinates: const LatLng(17.56128955470367, 120.38184937545378),
        ),
      ],
      [
        Vertex(
          id: 'College of Public Administration',
          coordinates: const LatLng(17.56073506232349, 120.3829012136316),
        ),
      ],
      [
        Vertex(
          id: 'College of Social Work',
          coordinates: const LatLng(17.561062310092378, 120.38227965162078),
        ),
      ],
      [
        Vertex(
          id: 'College of Teacher Education',
          coordinates: const LatLng(17.559380570202983, 120.38383662002167),
        ),
      ],
      [
        Vertex(
          id: 'College of Technology',
          coordinates: const LatLng(17.559897330761068, 120.38333642213739),
        ),
      ],
      [
        Vertex(
          id: 'Laboratory School',
          coordinates: const LatLng(17.559595913752677, 120.38412859638237),
          //ditoy mangrugi
        ),
      ],
      [
        Vertex(
          id: 'UNP Hostel',
          coordinates: const LatLng(17.560289873000507, 120.3847599707087),
        ),
      ],
      [
        Vertex(
          id: 'UNP Administration Building',
          coordinates: const LatLng(17.56009534103797, 120.38423008788563),
        ),
      ],
      [
        Vertex(
          id: 'UNP C-Tech/ITE',
          coordinates: const LatLng(17.560178937099924, 120.38449031687036),
        ),
      ],
      [
        Vertex(
          id: 'UNP PIO/Quality Assurance',
          coordinates: const LatLng(17.560389050505098, 120.38421801497145),
        ),
      ],
      [
        Vertex(
          id: 'UNP Training Center',
          coordinates: const LatLng(17.561539428338254, 120.38296126516431),
        ),
      ],
      [
        Vertex(
          id: 'Student Center',
          coordinates: const LatLng(17.560594238380062, 120.3839260213153),
        ),
      ],
      [
        Vertex(
          id: 'Student Complex',
          coordinates: const LatLng(17.560730796309212, 120.38380700502915),
        ),
      ],
      [
        Vertex(
          id: 'UNP Student Shed',
          coordinates: const LatLng(17.560645200718263, 120.38377371951843),
        ),
      ],
      [
        Vertex(
          id: 'UNP Parking Area(Heavy Vehicles)',
          coordinates: const LatLng(17.560634478074654, 120.38356272667953),
        ),
      ],
      [
        Vertex(
          id: 'UNP Groceria',
          coordinates: const LatLng(17.561048651862784, 120.38338122146233),
        ),
      ],
      [
        Vertex(
          id: 'UNP Guestel Canteen',
          coordinates: const LatLng(17.56124879964856, 120.38319997937754),
        ),
      ],
      [
        Vertex(
          id: 'UNP Chapel',
          coordinates: const LatLng(17.561094842327954, 120.38294644237152),
        ),
      ],
      [
        Vertex(
          id: 'UNP Lagoon',
          coordinates: const LatLng(17.561375503827943, 120.38260624911145),
        ),
      ],
      [
        Vertex(
          id: 'UNP Library',
          coordinates: const LatLng(17.56171354527912, 120.38270978191942),
        ),
      ],
      [
        Vertex(
          id: 'UNP Open Area',
          coordinates: const LatLng(17.56094891301575, 120.38318886599232),
        ),
      ],
      [
        //to be named
        Vertex(
          id: 'UNP Guestel',
          coordinates: const LatLng(17.561451643981307, 120.38327369009241),
        ),
      ],
      [
        Vertex(
          id: 'UNP Gym',
          coordinates: const LatLng(17.56159659358165, 120.38219789557245),
        ),
      ],
      [
        Vertex(
          id: 'UNP Ladies Dormitory',
          coordinates: const LatLng(17.56224064366686, 120.38236873813976),
        ),
      ],
      [
        Vertex(
          id: 'UNP Mens Dormitory',
          coordinates: const LatLng(17.560162035514406, 120.38275475631701),
        ),
      ],
      [
        Vertex(
          id: 'UNP Grandstand',
          coordinates: const LatLng(17.562605466195862, 120.38090032753219),
        ),
      ],
      [
        Vertex(
          id: 'UNP Oval',
          coordinates: const LatLng(17.56215069572407, 120.3813703721726),
        ),
      ],
      [
        Vertex(
          id: 'UNP Motorpool',
          coordinates: const LatLng(17.561202318283858, 120.38038573394785),
        ),
      ],
      [
        Vertex(
          id: 'Guard House(Front)',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
      ],
      [
        Vertex(
          id: 'Guard House(Back)',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ),
      ],
      [
        Vertex(
          id: 'Motor Parking(Back)',
          coordinates: const LatLng(17.56270776056157, 120.38207849226815),
        ),
      ],
      [
        Vertex(
          id: 'pf1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'pf2',
          coordinates: const LatLng(17.55992109656388, 120.38458071474355),
        ),
        Vertex(
          id: '(Motor Parking(Front)',
          coordinates: const LatLng(17.559638724263763, 120.3843356270213),
        ),
      ],
      [
        Vertex(
          id: 'Canteen CCIT1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Canteen CCIT2',
          coordinates: const LatLng(17.560161796681413, 120.38432864683058),
        ),
        Vertex(
          id: 'Canteen CCIT3',
          coordinates: const LatLng(17.56082191304742, 120.38479461862337),
        ),
        Vertex(
          id: 'UNP Canteen(Beside CCIT)',
          coordinates: const LatLng(17.56150158282851, 120.38400993217004),
        ),
      ],
      [
        Vertex(
          id: 'UNP Canteen(Front of Mens Dormitory)',
          coordinates: const LatLng(17.56035128791984, 120.38277647498305),
        ),
      ],
      [
        Vertex(
          id: 'UNP Canteen(Back of CPAD/CLaw/CFAd/CCJE)',
          coordinates: const LatLng(17.560411296290525, 120.38257334570224),
        ),
      ],
      [
        Vertex(
          id: 'PO1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'PO2',
          coordinates: const LatLng(17.560161796681413, 120.38432864683058),
        ),
        Vertex(
          id: 'PO3',
          coordinates: const LatLng(17.56082191304742, 120.38479461862337),
        ),
        Vertex(
          id: 'PO4',
          coordinates: const LatLng(17.561338257894786, 120.38409012102635),
        ),
        Vertex(
          id: 'PO5',
          coordinates: const LatLng(17.561937115184065, 120.38328748579644),
        ),
        Vertex(
          id: 'UNP Property Office',
          coordinates: const LatLng(17.561852564525292, 120.3832178202789),
        ),
      ],
      [
        Vertex(
          id: 'CC1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CC2',
          coordinates: const LatLng(17.560161796681413, 120.38432864683058),
        ),
        Vertex(
          id: 'CC3',
          coordinates: const LatLng(17.56082191304742, 120.38479461862337),
        ),
        Vertex(
          id: 'UNP Ceramic Center',
          coordinates: const LatLng(17.5613115161934, 120.3840613614196),
        ),
      ],
      [
        Vertex(
          id: 'UNP Elementary',
          coordinates: const LatLng(17.559644330304625, 120.38339310164271),
        ),
      ],
      [
        Vertex(
          id: 'UNP Food Court(Event)',
          coordinates: const LatLng(17.56185424661268, 120.38241948598308),
        ),
      ],
      [
        Vertex(
          id: 'UNP High School Building',
          coordinates: const LatLng(17.560168352987652, 120.383955354739),
        ),
      ],
      [
        Vertex(
          id: 'Cybershark1',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ), //sa likod start
        Vertex(
          id: 'Cybershark2',
          coordinates: const LatLng(17.561334351136672, 120.38129468078154),
        ),
        Vertex(
          id: 'Cybershark3',
          coordinates: const LatLng(17.561358723978135, 120.38052419413204),
        ),
        Vertex(
          id: 'UNP Cybershark',
          coordinates: const LatLng(17.56145248499981, 120.38053814474706),
        ),
      ],
      [
        Vertex(
          id: 'Tower1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Tower2',
          coordinates: const LatLng(17.559955615423746, 120.38437399809852),
        ),
        Vertex(
          id: 'UNP Iconic Eifiel Tower',
          coordinates: const LatLng(17.559926916993817, 120.38429536127504),
        ),
      ],
    ];
  }

  Set<Marker> _createMarkersFromPaths(List<List<Vertex>> paths) {
    Set<Marker> markerSet = {};

    for (int i = 0; i < paths.length; i++) {
      List<Vertex> path = paths[i];
      for (Vertex vertex in path) {
        if (vertex.id == 'College of Bussiness Administration and Accountancy' ||
            vertex.id == 'College of Architecture' ||
            vertex.id == 'College of Arts and Sciences' ||
            vertex.id ==
                'College of Communication and Information Technology' ||
            vertex.id == 'College of Criminology and Justice Education' ||
            vertex.id == 'College of Engineering' ||
            vertex.id == 'College of Fine Arts and Design' ||
            vertex.id == 'College of Health and Science' ||
            vertex.id == 'College of Hotel and Tourism Management' ||
            vertex.id == 'College of Law' ||
            vertex.id == 'College of Medicine' ||
            vertex.id == 'College of Nursing' ||
            vertex.id == 'College of Public Administration' ||
            vertex.id == 'College of Social Work' ||
            vertex.id == 'College of Teacher Education' ||
            vertex.id == 'College of Technology' ||
            vertex.id == 'Laboratory School' ||
            vertex.id == 'UNP Hostel' ||
            vertex.id == 'UNP Administration Building' ||
            vertex.id == 'UNP C-Tech/ITE' ||
            vertex.id == 'UNP PIO/Quality Assurance' ||
            vertex.id == 'UNP Training Center' ||
            vertex.id == 'Student Center' ||
            vertex.id == 'Student Complex' ||
            vertex.id == 'UNP Student Shed' ||
            vertex.id == 'UNP Parking Area(Heavy Vehicles)' ||
            vertex.id == 'UNP Groceria' ||
            vertex.id == 'UNP Guestel Canteen' ||
            vertex.id == 'UNP Chapel' ||
            vertex.id == 'UNP Lagoon' ||
            vertex.id == 'UNP Library' ||
            vertex.id == 'UNP Open Area' ||
            vertex.id == 'UNP Guestel' ||
            vertex.id == 'UNP Gym' ||
            vertex.id == 'UNP Ladies Dormitory' ||
            vertex.id == 'UNP Mens Dormitory' ||
            vertex.id == 'UNP Grandstand' ||
            vertex.id == 'UNP Oval' ||
            vertex.id == 'UNP Motorpool' ||
            vertex.id == 'Guard House(Front)' ||
            vertex.id == 'Guard House(Back)' ||
            vertex.id == 'Motor Parking(Back)' ||
            vertex.id == 'Motor Parking(Front)' ||
            vertex.id == 'UNP Canteen(Beside CCIT)' ||
            vertex.id == 'UNP Canteen(Front of Mens Dormitory)' ||
            vertex.id == 'UNP Canteen(Back of CPAD/CLaw/CFAd/CCJE)' ||
            vertex.id == 'UNP Property Office' ||
            vertex.id == 'UNP Ceramic Center' ||
            vertex.id == 'UNP Elementary' ||
            vertex.id == 'UNP Food Court(Event)' ||
            vertex.id == 'UNP High School Building' ||
            vertex.id == 'UNP Cybershark' ||
            vertex.id == 'UNP Iconic Eifiel Tower') {
          markerSet.add(
            Marker(
              markerId: MarkerId(vertex.id),
              position: vertex.coordinates,
              infoWindow: InfoWindow(title: vertex.id),
              onTap: () {
                _showShortestPath(i);
              },
            ),
          );
        }
      }
    }

    return markerSet;
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/11.png',
          height: 250,
          width: 300,
          fit: BoxFit.contain,
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor:
            Color.fromARGB(255, 219, 184, 87), // Set the background color
        automaticallyImplyLeading: false, // Remove the back button
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ), // Remove the back button
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        markers: markers,
        polylines: polylines,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) {
          // Do something with the controller if needed
          _googleMapController = controller;
        },
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: 650.0,
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(
                  255, 219, 184, 87), // Customize the color as needed
              foregroundColor: Colors.white,
              onPressed: () {
                // Reappear the pins and reset the map
                markers.clear();
                polylines.clear();
                markers.addAll(_createMarkersFromPaths(paths));

                _googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: LatLng(17.55999787585745, 120.38449803821894),
                      zoom: 18,
                    ),
                  ),
                );

                setState(() {});
              },
              child: const Icon(Icons.refresh),
            ),
          ),
          Positioned(
            top: 580.0, // Adjust the top position for the second button
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 26, 99, 194),
              foregroundColor: Colors.white,
              onPressed: () async {
                Position position = await _determinePosition();

                _googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: LatLng(position.latitude, position.longitude),
                        zoom: 14),
                  ),
                );

                markers.clear();
                polylines.clear();

                markers.add(
                  Marker(
                    markerId: const MarkerId('currentLocation'),
                    position: LatLng(position.latitude, position.longitude),
                    infoWindow: const InfoWindow(title: 'My Current Location'),
                  ),
                );

                markers.addAll(_createMarkersFromPaths(paths));

                setState(() {});
              },
              child: const Icon(Icons.location_searching),
            ),
          ),
          Positioned(
            top: 510.0, // Adjust the top position for the second button
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 43, 163, 105),
              foregroundColor: Colors.white,
              onPressed: () => _googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(_initialCameraPosition),
              ),
              child: const Icon(Icons.dark_mode_rounded),
            ),
          ),
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  void _showShortestPath(int pathIndex) async {
    if (pathIndex < 0 || pathIndex >= paths.length) return;

    polylines.clear();
    markers.clear();

    selectedPathIndex = pathIndex;

    List<Vertex> path = paths[pathIndex];

    markers.addAll(_createMarkersFromPaths([path]));

    for (int i = 0; i < path.length - 1; i++) {
      polylines.add(
        Polyline(
          polylineId: PolylineId('${path[i].id}-${path[i + 1].id}'),
          points: [
            path[i].coordinates,
            path[i + 1].coordinates,
          ],
          color: Color.fromARGB(255, 97, 255, 77),
          width: 6,
        ),
      );
    }

    setState(() {});
  }
}
