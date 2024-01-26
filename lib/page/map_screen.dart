import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

//Ajay baro atoy nga isina kuma nga vertex para ijay map_page

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

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
      //Path 4
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
      //Path 5
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
          coordinates: const LatLng(17.5609413232247, 120.38253399422662),
        ),
      ],
      //Path 6
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
      //Path 7
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
      //Path 8
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
          id: 'College of Hotel and Tourism Management',
          coordinates: const LatLng(17.562078977904275, 120.38304562132981),
        ),
      ],
      //Path 9 CLaw
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
      //Path 10 CMed
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
      //Path 11 CN
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
      //Path 12 CPAd
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
      //Path 13 CSW
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
      //Path 14 CTE
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
      //Path 15 CTech
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
      //Path 16 LS
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
      //Path 17 Hostel
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
      //Path 18 Admin
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
      //Path 19 Ctech/ITE
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
      //Path 20 PIO/QA
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
      //Path 21 Training Center
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
      //Path 22 SCenter
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
      //Path 23 SComplex
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
      //Path 24Student Shed
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
      //Path 25 Park HV
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
      [
        Vertex(
          id: 'FP1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'FP2',
          coordinates: const LatLng(17.560384980580583, 120.38397612062474),
        ),
        Vertex(
          id: 'FP3',
          coordinates: const LatLng(17.56082333391133, 120.38333934177845),
        ),
        Vertex(
          id: 'UNP Founders Plaza',
          coordinates: const LatLng(17.56093105276515, 120.38320036454661),
        ),
      ],
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
      //Path
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
          FloatingActionButton.extended(
            onPressed: () {
              _showShortestPath(1); // Path 2
            },
            label: const Text('Path 2'),
            icon: const Icon(Icons.directions),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {
              _showShortestPath(2); // Path 3
            },
            label: const Text('Path 3'),
            icon: const Icon(Icons.directions),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {
              _showShortestPath(3); // Path 4
            },
            label: const Text('Path 4'),
            icon: const Icon(Icons.directions),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            onPressed: () {
              _showShortestPath(4); // Path 5
            },
            label: const Text('Path 5'),
            icon: const Icon(Icons.directions),
          ),
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
