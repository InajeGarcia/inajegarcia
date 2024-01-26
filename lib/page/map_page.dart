import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Edge {
  final Vertex source;
  final Vertex destination;
  final double weight;

  Edge({required this.source, required this.destination, required this.weight});
}

class Vertex {
  final String id;
  final LatLng coordinates;
  List<Edge> adjacentVertices;

  Vertex(
      {required this.id,
      required this.coordinates,
      this.adjacentVertices = const []});
}

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapPage> {
  late GoogleMapController googleMapController;
  static CameraPosition initialCameraPosition =
      const CameraPosition(target: LatLng(14.5995, 120.9842), zoom: 14);
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
      //Path 1
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
      //Path 2
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
      //Path 3
      [
        Vertex(
          id: 'CAS1',
          coordinates: const LatLng(17.561014680996802, 120.38408614591307),
        ),
        Vertex(
          id: 'CAS2',
          coordinates: const LatLng(17.561014680996802, 120.38408614591307),
        ),
        Vertex(
          id: 'CAS3',
          coordinates: const LatLng(17.561014680996802, 120.38408614591307),
        ),
        Vertex(
          id: 'College of Arts and Sciences',
          coordinates: const LatLng(17.561014680996802, 120.38408614591307),
        ),
      ],
      //Path 4
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Communication and Information Technology',
          coordinates: const LatLng(17.561307260934974, 120.38360859306205),
        ),
      ],
      //Path 5
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Criminology and Justice Education',
          coordinates: const LatLng(17.5611362625868, 120.38233770851949),
        ),
      ],
      //Path 6
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Engineering',
          coordinates: const LatLng(17.560556262863113, 120.38352250452216),
        ),
      ],
      //Path 7
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Fine Arts and Design',
          coordinates: const LatLng(17.56098328935808, 120.3826197271783),
        ),
      ],
      //Path 8
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Health and Science',
          coordinates: const LatLng(17.56105244843964, 120.38192132372923),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Hotel and Tourism Management',
          coordinates: const LatLng(17.562078977904275, 120.38304562132981),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Law',
          coordinates: const LatLng(17.56073506232349, 120.3829012136316),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Medicine',
          coordinates: const LatLng(17.561247803573504, 120.3808899499823),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Nursing',
          coordinates: const LatLng(17.56128955470367, 120.38184937545378),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Public Administration',
          coordinates: const LatLng(17.56073506232349, 120.3829012136316),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Social Work',
          coordinates: const LatLng(17.561062310092378, 120.38227965162078),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Teacher Education',
          coordinates: const LatLng(17.559380570202983, 120.38383662002167),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'College of Technology',
          coordinates: const LatLng(17.559897330761068, 120.38333642213739),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Laboratory School',
          coordinates: const LatLng(17.559595913752677, 120.38412859638237),
          //ditoy mangrugi
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Hostel',
          coordinates: const LatLng(17.560289873000507, 120.3847599707087),
        ),
      ],
      [
        //Vertex(
        //  id: 'UNP Clinic',
        //  coordinates: const LatLng(17.559897330761068, 120.38333642213739),
        //),
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Administration Building',
          coordinates: const LatLng(17.56009534103797, 120.38423008788563),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP C-Tech/ITE',
          coordinates: const LatLng(17.560178937099924, 120.38449031687036),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP PIO/Quality Assurance',
          coordinates: const LatLng(17.560389050505098, 120.38421801497145),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Training Center',
          coordinates: const LatLng(17.561539428338254, 120.38296126516431),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Student Center',
          coordinates: const LatLng(17.560594238380062, 120.3839260213153),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Student Complex',
          coordinates: const LatLng(17.560730796309212, 120.38380700502915),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Student Shed',
          coordinates: const LatLng(17.560645200718263, 120.38377371951843),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Parking Area(Heavy Vehicles)',
          coordinates: const LatLng(17.560634478074654, 120.38356272667953),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Groceria',
          coordinates: const LatLng(17.561048651862784, 120.38338122146233),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Guestel Canteen',
          coordinates: const LatLng(17.56124879964856, 120.38319997937754),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Chapel',
          coordinates: const LatLng(17.561094842327954, 120.38294644237152),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Lagoon',
          coordinates: const LatLng(17.561375503827943, 120.38260624911145),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Library',
          coordinates: const LatLng(17.56171354527912, 120.38270978191942),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Founders Plaza',
          coordinates: const LatLng(17.56094891301575, 120.38318886599232),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Guestel',
          coordinates: const LatLng(17.561451643981307, 120.38327369009241),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Gym',
          coordinates: const LatLng(17.56159659358165, 120.38219789557245),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Ladies Dormitory',
          coordinates: const LatLng(17.56224064366686, 120.38236873813976),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Mens Dormitory',
          coordinates: const LatLng(17.560162035514406, 120.38275475631701),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Grandstand',
          coordinates: const LatLng(17.562605466195862, 120.38090032753219),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Oval',
          coordinates: const LatLng(17.56215069572407, 120.3813703721726),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Motorpool',
          coordinates: const LatLng(17.561202318283858, 120.38038573394785),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Guard House(Front)',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Guard House(Back)',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'Motor Parking(Back)',
          coordinates: const LatLng(17.56270776056157, 120.38207849226815),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: '(Motor Parking(Front)',
          coordinates: const LatLng(17.559638724263763, 120.3843356270213),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Canteen(Beside CCIT)',
          coordinates: const LatLng(17.56150158282851, 120.38400993217004),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Canteen(Front of Mens Dormitory)',
          coordinates: const LatLng(17.56035128791984, 120.38277647498305),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Canteen(Back of CPAD/CLaw/CFAd/CCJE)',
          coordinates: const LatLng(17.560411296290525, 120.38257334570224),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Property Office',
          coordinates: const LatLng(17.561853028596932, 120.38321519514658),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Ceramic Center',
          coordinates: const LatLng(17.561208914415996, 120.38408454914293),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Elementary',
          coordinates: const LatLng(17.559644330304625, 120.38339310164271),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Food Court(Event)',
          coordinates: const LatLng(17.56185424661268, 120.38241948598308),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP High School Building',
          coordinates: const LatLng(17.560168352987652, 120.383955354739),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'UNP Cybershark',
          coordinates: const LatLng(17.561548291001476, 120.38060627678581),
        ),
      ],
      [
        Vertex(
          id: '1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
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
            vertex.id == 'College of Criminology and Justice Education') {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        polylines: polylines,
        zoomControlsEnabled: false,
        mapType: MapType.hybrid,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              _showShortestPath(0); // Path 1
            },
            label: const Text('Path 1'),
            icon: const Icon(Icons.directions),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () async {
              Position position = await _determinePosition();

              googleMapController.animateCamera(
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
            label: const Icon(Icons.my_location),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {
              googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(
                  const CameraPosition(
                      target: LatLng(17.5705, 120.3873), zoom: 14),
                ),
              );
              paths = _createPaths();
              markers.addAll(_createMarkersFromPaths(paths));
            },
            label: const Text('Hotels'),
            icon: const Icon(Icons.house),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {
              // Reset everything
              markers.clear();
              polylines.clear();
              paths.clear();
              selectedPathIndex = -1;

              // Re-initialize paths and markers
              paths = _createPaths();
              markers.addAll(_createMarkersFromPaths(paths));

              setState(() {});
            },
            label: const Text('Reset'),
            icon: const Icon(Icons.refresh),
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
    selectedPathIndex = pathIndex;

    List<Vertex> path = paths[pathIndex];

    for (int i = 0; i < path.length - 1; i++) {
      polylines.add(
        Polyline(
          polylineId: PolylineId('${path[i].id}-${path[i + 1].id}'),
          points: [
            path[i].coordinates,
            path[i + 1].coordinates,
          ],
          color: Colors.yellow,
          width: 3,
        ),
      );
    }

    setState(() {});
  }
}
