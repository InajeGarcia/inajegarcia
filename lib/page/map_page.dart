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
  final String? selectedVertexId;

  MapPage({Key? key, this.selectedVertexId}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool pinsVisible = true;
  late GoogleMapController _googleMapController;
  static CameraPosition _initialCameraPosition = const CameraPosition(
      target: LatLng(17.5610601915866, 120.3833079655142), zoom: 18);
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};
  List<List<Vertex>> paths = [];

  int selectedPathIndex = -1;

  @override
  void initState() {
    super.initState();
    paths = _createPaths();
    markers.addAll(_createMarkersFromPaths(paths));

    if (widget.selectedVertexId != null) {
      _highlightSelectedMarker(widget.selectedVertexId!);
    }
  }

  void _highlightSelectedMarker(String selectedVertexId) {
    for (int i = 0; i < paths.length; i++) {
      List<Vertex> path = paths[i];
      for (Vertex vertex in path) {
        if (vertex.id == selectedVertexId) {
          markers.add(
            Marker(
              markerId: MarkerId(vertex.id),
              position: vertex.coordinates,
              infoWindow: InfoWindow(title: vertex.id),
              onTap: () {
                _showShortestPath(i);
              },
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueYellow),
            ),
          );

          for (int j = 0; j < path.length - 1; j++) {
            polylines.add(
              Polyline(
                polylineId: PolylineId('${path[j].id}-${path[j + 1].id}'),
                points: [
                  path[j].coordinates,
                  path[j + 1].coordinates,
                ],
                color: Color.fromARGB(255, 97, 255, 77),
                width: 6,
                patterns: [
                  PatternItem.gap(5.0),
                  PatternItem.dot,
                ],
              ),
            );
          }

          setState(() {});
          break;
        }
      }
    }
  }

  List<List<Vertex>> _createPaths() {
    return [
      //path1 cbaa
      [
        Vertex(
          id: 'Front Gate',
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
          id: 'College of Business Administration and Accountancy',
          coordinates: const LatLng(17.56076168504898, 120.38448063424464),
        ),
        //******************************************************************* */
        Vertex(
          id: 'CBAA5B',
          coordinates: const LatLng(17.560867669076465, 120.38432142234996),
        ),
        Vertex(
          id: 'CBAA4B',
          coordinates: const LatLng(17.56103402528067, 120.38443901204947),
        ),
        Vertex(
          id: 'CBAA3B',
          coordinates: const LatLng(17.56130295088781, 120.38408969767846),
        ),
        Vertex(
          id: 'CBAA2B',
          coordinates: const LatLng(17.5621636597217, 120.3829744920748),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path2 carch
      [
        Vertex(
          id: 'CArch1a',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'CArch2a',
          coordinates: const LatLng(17.560462597828586, 120.38381897286173),
        ),
        Vertex(
          id: 'CArch3a',
          coordinates: const LatLng(17.560183159129444, 120.38365053493385),
        ),
        Vertex(
          id: 'College of Architecture',
          coordinates: const LatLng(17.560260159485072, 120.38355126438263),
        ),
        //******************************************************************* */
        Vertex(
          id: 'CArch3b',
          coordinates: const LatLng(17.560545115322224, 120.38310618804046),
        ),
        Vertex(
          id: 'CArch4b',
          coordinates: const LatLng(17.5609529160756, 120.38341802776293),
        ),
        Vertex(
          id: 'CArch3b',
          coordinates: const LatLng(17.561265031113834, 120.38303330595616),
        ),
        Vertex(
          id: 'CArch2b',
          coordinates: const LatLng(17.561482600044435, 120.38276447857463),
        ),
        Vertex(
          id: 'CArch1b',
          coordinates: const LatLng(17.562099993156703, 120.38189228316949),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path3 cas
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
        //******************************************************************* */
        Vertex(
          id: 'Cas4b',
          coordinates: const LatLng(17.560765363813218, 120.38427135037755),
        ),
        Vertex(
          id: 'Cas3b',
          coordinates: const LatLng(17.561040617004764, 120.38445514666688),
        ),
        Vertex(
          id: 'Cas2b',
          coordinates: const LatLng(17.56146767014702, 120.38391199938381),
        ),
        Vertex(
          id: 'Cas1b',
          coordinates: const LatLng(17.56195353777115, 120.38327765695604),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path4 ccit
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
        //******************************************************************* */
        Vertex(
          id: 'Ccit3b',
          coordinates: const LatLng(17.56138437826887, 120.38352110640491),
        ),
        Vertex(
          id: 'Ccit2b',
          coordinates: const LatLng(17.561618765448944, 120.38372748097966),
        ),
        Vertex(
          id: 'Ccit1b',
          coordinates: const LatLng(17.561989698679408, 120.38323015206325),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path5 ccje
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
          coordinates: const LatLng(17.56067315870612, 120.38319097801744),
        ),
        Vertex(
          id: 'CCJE6',
          coordinates: const LatLng(17.5612621192339, 120.38241665111586),
        ),
        Vertex(
          id: 'College of Criminal Justice and Enforcement',
          coordinates: const LatLng(17.56117133202978, 120.38236712832612),
        ),
        //******************************************************************* */
        Vertex(
          id: 'ccje2b',
          coordinates: const LatLng(17.5612621192339, 120.38241665111586),
        ),
        Vertex(
          id: 'ccje1b',
          coordinates: const LatLng(17.561771493651825, 120.3816447432489),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path6 ce
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
        //******************************************************************* */
        Vertex(
          id: 'ce6b',
          coordinates: const LatLng(17.560706066303464, 120.38349725486792),
        ),
        Vertex(
          id: 'ce5b',
          coordinates: const LatLng(17.560842913721768, 120.38331703671439),
        ),
        Vertex(
          id: 'ce4b',
          coordinates: const LatLng(17.560970637893643, 120.38341910718269),
        ),
        Vertex(
          id: 'ce3b',
          coordinates: const LatLng(17.561283865821128, 120.38301082534146),
        ),
        Vertex(
          id: 'ce2b',
          coordinates: const LatLng(17.561332522542834, 120.3829837128602),
        ),
        Vertex(
          id: 'ce1b',
          coordinates: const LatLng(17.56208669998302, 120.38189123995058),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path7 cfad
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
          coordinates: const LatLng(17.561093421246834, 120.38266453929577),
        ),
        Vertex(
          id: 'College of Fine Arts and Design',
          coordinates: const LatLng(17.560953046741833, 120.3825675837186),
        ),
        //******************************************************************* */
        Vertex(
          id: 'cfad3b',
          coordinates: const LatLng(17.561093421246834, 120.38266453929577),
        ),
        Vertex(
          id: 'cfad2b',
          coordinates: const LatLng(17.5612621192339, 120.38241665111586),
        ),
        Vertex(
          id: 'cfad1b',
          coordinates: const LatLng(17.561771493651825, 120.3816447432489),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path8 chs
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
          id: 'CHS8',
          coordinates: const LatLng(17.56132866749947, 120.38196260517729),
        ),
        Vertex(
          id: 'College of Health and Sciences',
          coordinates: const LatLng(17.56123532955274, 120.38189219719533),
        ),
        //******************************************************************* */
        Vertex(
          id: 'chs3b',
          coordinates: const LatLng(17.56132866749947, 120.38196260517729),
        ),
        Vertex(
          id: 'chs2b',
          coordinates: const LatLng(17.56148324118112, 120.38207499119108),
        ),
        Vertex(
          id: 'chs1b',
          coordinates: const LatLng(17.56178430407246, 120.3816475711455),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path9 chtm
      [
        Vertex(
          id: 'chtm1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'chtm2',
          coordinates: const LatLng(17.56024431554976, 120.38433731930883),
        ),
        Vertex(
          id: 'chtm3',
          coordinates: const LatLng(17.560827766707334, 120.38480217562687),
        ),
        Vertex(
          id: 'chtm4',
          coordinates: const LatLng(17.56131359494857, 120.38409214045654),
        ),
        Vertex(
          id: 'College of Hospitality and Tourism Management',
          coordinates: const LatLng(17.562078977904275, 120.38304562132981),
        ),
        //******************************************************************* */
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path10 claw
      [
        Vertex(
          id: 'claw1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'claw2',
          coordinates: const LatLng(17.560379899094794, 120.38396929796619),
        ),
        Vertex(
          id: 'claw3',
          coordinates: const LatLng(17.560818570868314, 120.3833310028157),
        ),
        Vertex(
          id: 'claw4',
          coordinates: const LatLng(17.56071556249484, 120.38321339408192),
        ),
        Vertex(
          id: 'claw5',
          coordinates: const LatLng(17.560827380682703, 120.38302167998907),
        ),
        Vertex(
          id: 'claw6',
          coordinates: const LatLng(17.560822146756095, 120.38301802150836),
        ),
        Vertex(
          id: 'College of Law',
          coordinates: const LatLng(17.56073506232349, 120.3829012136316),
        ),
        //******************************************************************* */
        Vertex(
          id: 'claw2b',
          coordinates: const LatLng(17.560822146756095, 120.38301802150836),
        ),
        Vertex(
          id: 'claw1b',
          coordinates: const LatLng(17.56177854096707, 120.38165814161518),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path11 cmed
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
          coordinates: const LatLng(17.560696241947, 120.38321080360627),
        ),
        Vertex(
          id: 'CMed5',
          coordinates: const LatLng(17.561783732683242, 120.38164714970621),
        ),
        Vertex(
          id: 'CMed6',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
        Vertex(
          id: 'CMed7',
          coordinates: const LatLng(17.561404658542273, 120.3813489890742),
        ),
        Vertex(
          id: 'CMed8',
          coordinates: const LatLng(17.561285316307774, 120.38102372079244),
        ),
        Vertex(
          id: 'CMed9',
          coordinates: const LatLng(17.561314073476456, 120.3808113580365),
        ),
        Vertex(
          id: 'College of Medicine',
          coordinates: const LatLng(17.561239936605965, 120.38079808178013),
        ),
        //******************************************************************* */
        Vertex(
          id: 'cmed4b',
          coordinates: const LatLng(17.561314073476456, 120.3808113580365),
        ),
        Vertex(
          id: 'cmed3b',
          coordinates: const LatLng(17.561285316307774, 120.38102372079244),
        ),
        Vertex(
          id: 'cmed2b',
          coordinates: const LatLng(17.561404658542273, 120.3813489890742),
        ),
        Vertex(
          id: 'cmed1b',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path12 cn
      [
        Vertex(
          id: 'cn1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'cn2',
          coordinates: const LatLng(17.56037081230461, 120.38394988466219),
        ),
        Vertex(
          id: 'cn3',
          coordinates: const LatLng(17.56082502467514, 120.38332856678105),
        ),
        Vertex(
          id: 'cn4',
          coordinates: const LatLng(17.560716350711104, 120.38323268906309),
        ),
        Vertex(
          id: 'cn5',
          coordinates: const LatLng(17.561065511475643, 120.38269623577703),
        ),
        Vertex(
          id: 'cn6',
          coordinates: const LatLng(17.561364903502014, 120.38224390698075),
        ),
        Vertex(
          id: 'cn7',
          coordinates: const LatLng(17.56132866749947, 120.38196260517729),
        ),
        Vertex(
          id: 'College of Nursing',
          coordinates: const LatLng(17.561344985205206, 120.38188009516058),
        ),
        //******************************************************************* */
        Vertex(
          id: 'cn3b',
          coordinates: const LatLng(17.56132866749947, 120.38196260517729),
        ),
        Vertex(
          id: 'cn2b',
          coordinates: const LatLng(17.56148324118112, 120.38207499119108),
        ),
        Vertex(
          id: 'cn1b',
          coordinates: const LatLng(17.56178430407246, 120.3816475711455),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path13 cpad
      [
        Vertex(
          id: 'cpad1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'cpad2',
          coordinates: const LatLng(17.560379899094794, 120.38396929796619),
        ),
        Vertex(
          id: 'cpad3',
          coordinates: const LatLng(17.560818570868314, 120.3833310028157),
        ),
        Vertex(
          id: 'cpad4',
          coordinates: const LatLng(17.56071556249484, 120.38321339408192),
        ),
        Vertex(
          id: 'cpad5',
          coordinates: const LatLng(17.560827380682703, 120.38302167998907),
        ),
        Vertex(
          id: 'cpad6',
          coordinates: const LatLng(17.560676856183594, 120.3829089069968),
        ),
        Vertex(
          id: 'College of Public Administration',
          coordinates: const LatLng(17.560724163896797, 120.38278711216522),
        ),
        //******************************************************************* */
        Vertex(
          id: 'cpad3b',
          coordinates: const LatLng(17.560676856183594, 120.3829089069968),
        ),
        Vertex(
          id: 'cpad2b',
          coordinates: const LatLng(17.560827380682703, 120.38302167998907),
        ),
        Vertex(
          id: 'cpad1b',
          coordinates: const LatLng(17.561788617987258, 120.38164503080858),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path14 csw
      [
        Vertex(
          id: 'csw1a',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'csw2a',
          coordinates: const LatLng(17.56036820610083, 120.38393928505782),
        ),
        Vertex(
          id: 'csw3a',
          coordinates: const LatLng(17.56082962455271, 120.38334072247467),
        ),
        Vertex(
          id: 'csw4a',
          coordinates: const LatLng(17.560720795921892, 120.38322215303249),
        ),
        Vertex(
          id: 'csw5a',
          coordinates: const LatLng(17.561112841593424, 120.38261423046335),
        ),
        Vertex(
          id: 'csw6a',
          coordinates: const LatLng(17.560992472858274, 120.38249371384155),
        ),
        Vertex(
          id: 'College of Social Work',
          coordinates: const LatLng(17.560912804944977, 120.38216450857996),
        ),
        //******************************************************************* */
        Vertex(
          id: 'csw2b',
          coordinates: const LatLng(17.5612621192339, 120.38241665111586),
        ),
        Vertex(
          id: 'csw1b',
          coordinates: const LatLng(17.561771493651825, 120.3816447432489),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path15 cte
      [
        Vertex(
          id: 'cte1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'cte2',
          coordinates: const LatLng(17.560003787890988, 120.3843575562419),
        ),
        Vertex(
          id: 'cte3',
          coordinates: const LatLng(17.559432527067358, 120.3838677894528),
        ),
        Vertex(
          id: 'College of Teacher Education',
          coordinates: const LatLng(17.559253762279482, 120.38386599996852),
        ),
        //******************************************************************* */
        Vertex(
          id: 'Cte8b',
          coordinates: const LatLng(17.559636336934744, 120.38337193350088),
        ),
        Vertex(
          id: 'Cte7b',
          coordinates: const LatLng(17.55986289672082, 120.38345008119579),
        ),
        Vertex(
          id: 'Cte6b',
          coordinates: const LatLng(17.560162112555435, 120.38297585072091),
        ),
        Vertex(
          id: 'Cte5b',
          coordinates: const LatLng(17.560545115322224, 120.38310618804046),
        ),
        Vertex(
          id: 'Cte4b',
          coordinates: const LatLng(17.5609529160756, 120.38341802776293),
        ),
        Vertex(
          id: 'Cte3b',
          coordinates: const LatLng(17.561265031113834, 120.38303330595616),
        ),
        Vertex(
          id: 'Cte2b',
          coordinates: const LatLng(17.561482600044435, 120.38276447857463),
        ),
        Vertex(
          id: 'Cte1b',
          coordinates: const LatLng(17.562099993156703, 120.38189228316949),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path16 ctech
      [
        Vertex(
          id: 'ctech1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'ctech2',
          coordinates: const LatLng(17.560351730724832, 120.38394525273583),
        ),
        Vertex(
          id: 'ctech3',
          coordinates: const LatLng(17.560420775574006, 120.38384869320157),
        ),
        Vertex(
          id: 'ctech4',
          coordinates: const LatLng(17.55992523862564, 120.3834309429848),
        ),

        Vertex(
          id: 'College of Technology',
          coordinates: const LatLng(17.56004486440465, 120.38317545876896),
        ),
        //******************************************************************* */
        Vertex(
          id: 'Ctech6b',
          coordinates: const LatLng(17.560279522708246, 120.38293015979127),
        ),
        Vertex(
          id: 'Ctech5b',
          coordinates: const LatLng(17.560545115322224, 120.38310618804046),
        ),
        Vertex(
          id: 'Ctech4b',
          coordinates: const LatLng(17.5609529160756, 120.38341802776293),
        ),
        Vertex(
          id: 'Ctech3b',
          coordinates: const LatLng(17.561265031113834, 120.38303330595616),
        ),
        Vertex(
          id: 'Ctech2b',
          coordinates: const LatLng(17.561482600044435, 120.38276447857463),
        ),
        Vertex(
          id: 'Ctech1b',
          coordinates: const LatLng(17.562099993156703, 120.38189228316949),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path17 high school
      /*[
        Vertex(
          id: 'hs1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'hs2',
          coordinates: const LatLng(17.56015482489729, 120.3844602368566),
        ),
        Vertex(
          id: 'High School',
          coordinates: const LatLng(17.560520657301126, 120.38475940828498),
        ),
        //******************************************************************* */
      ],*/
      //path18 hostel
      [
        Vertex(
          id: 'ht1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'Hostel',
          coordinates: const LatLng(17.560289873000507, 120.3847599707087),
        ),
      ],
      //path19 admin
      [
        Vertex(
          id: 'admin1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'Administration Building',
          coordinates: const LatLng(17.56009534103797, 120.38423008788563),
        ),
      ],
      //path20 ctech/ite
      [
        Vertex(
          id: 'ite1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'ite1',
          coordinates: const LatLng(17.56016505377676, 120.38445219022988),
        ),
        Vertex(
          id: 'C-Tech/ITE',
          coordinates: const LatLng(17.560178937099924, 120.38449031687036),
        ),
      ],
      //path21 pio/qa
      [
        Vertex(
          id: 'pio1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'pio2',
          coordinates: const LatLng(17.56028268585304, 120.3842993043188),
        ),
        Vertex(
          id: 'pio3',
          coordinates: const LatLng(17.560372188465635, 120.38418396933632),
        ),
        Vertex(
          id: 'PIO/Quality Assurance',
          coordinates: const LatLng(17.56044379052385, 120.38422420246975),
        ),
      ],
      //path22 training center
      [
        Vertex(
          id: 'tc1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'tc2',
          coordinates: const LatLng(17.560446643069923, 120.38399973990266),
        ),
        Vertex(
          id: 'tc3',
          coordinates: const LatLng(17.560669120709495, 120.38380393865334),
        ),
        Vertex(
          id: 'tc4',
          coordinates: const LatLng(17.561110173082316, 120.38323434680377),
        ),
        Vertex(
          id: 'tc5',
          coordinates: const LatLng(17.561394022779826, 120.3828910240549),
        ),
        Vertex(
          id: 'Training Center',
          coordinates: const LatLng(17.561539428338254, 120.38296126516431),
        ),
      ],
      //path23 student center
      [
        Vertex(
          id: 'sc1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'sc2',
          coordinates: const LatLng(17.56043385699085, 120.38400510431349),
        ),
        Vertex(
          id: 'sc3',
          coordinates: const LatLng(17.560582175458084, 120.3839031803755),
        ),
        Vertex(
          id: 'Student Center',
          coordinates: const LatLng(17.560722822168227, 120.38398096443345),
        ),
      ],
      //path24 science complex
      [
        Vertex(
          id: 'scicom1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'scicom2',
          coordinates: const LatLng(17.560444085851582, 120.3840104687355),
        ),
        Vertex(
          id: 'scicom',
          coordinates: const LatLng(17.560840453876594, 120.3835598576381),
        ),
        Vertex(
          id: 'Student Complex',
          coordinates: const LatLng(17.56099388642865, 120.38361081960596),
        ),
      ],
      //path25 shed
      [
        Vertex(
          id: 'shed1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'shed2',
          coordinates: const LatLng(17.560436204662253, 120.3840095549809),
        ),
        Vertex(
          id: 'shed3',
          coordinates: const LatLng(17.560620533662124, 120.38385221840205),
        ),
        Vertex(
          id: 'Student Shed',
          coordinates: const LatLng(17.560645200718263, 120.38377371951843),
        ),
      ],
      //path26 parking area four wheels
      [
        Vertex(
          id: 'pa1',
          coordinates: const LatLng(17.55999167985167, 120.38455703502324),
        ),
        Vertex(
          id: 'pa2',
          coordinates: const LatLng(17.56041617824671, 120.3840071821998),
        ),
        Vertex(
          id: 'pa3',
          coordinates: const LatLng(17.560646327566328, 120.38382210977545),
        ),
        Vertex(
          id: 'pa4',
          coordinates: const LatLng(17.560941685432773, 120.38342782505113),
        ),
        Vertex(
          id: 'pa5',
          coordinates: const LatLng(17.560830446811156, 120.38333394774986),
        ),
        Vertex(
          id: 'Parking Area(Heavy Vehicles)',
          coordinates: const LatLng(17.56067062109077, 120.3835552299837),
        ),
      ],
      //path27 groceria
      [
        Vertex(
          id: 'grocy1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'grocy2',
          coordinates: const LatLng(17.560454331670805, 120.38400005902149),
        ),
        Vertex(
          id: 'grocy3',
          coordinates: const LatLng(17.56066720568388, 120.38378634899873),
        ),
        Vertex(
          id: 'grocy4',
          coordinates: const LatLng(17.560965228881724, 120.38340677448066),
        ),
        Vertex(
          id: 'Groceria',
          coordinates: const LatLng(17.561048651862784, 120.38338122146233),
        ),
      ],
      //path28 guestel canteen
      [
        Vertex(
          id: 'gt1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'gt2',
          coordinates: const LatLng(17.560454331670805, 120.38400005902149),
        ),
        Vertex(
          id: 'gt3',
          coordinates: const LatLng(17.56066720568388, 120.38378634899873),
        ),
        Vertex(
          id: 'gt4',
          coordinates: const LatLng(17.560965228881724, 120.38340677448066),
        ),
        Vertex(
          id: 'gt5',
          coordinates: const LatLng(17.561185082781027, 120.38316044610458),
        ),
        Vertex(
          id: 'Guestel Canteen',
          coordinates: const LatLng(17.56124879964856, 120.38319997937754),
        ),
      ],
      //path29 chapel
      [
        Vertex(
          id: 'cp1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'cp2',
          coordinates: const LatLng(17.560454331670805, 120.38400005902149),
        ),
        Vertex(
          id: 'cp3',
          coordinates: const LatLng(17.56066720568388, 120.38378634899873),
        ),
        Vertex(
          id: 'cp4',
          coordinates: const LatLng(17.560965228881724, 120.38340677448066),
        ),
        Vertex(
          id: 'cp5',
          coordinates: const LatLng(17.561304426880568, 120.38298452024048),
        ),
        Vertex(
          id: 'cp6',
          coordinates: const LatLng(17.56115820346847, 120.38285483130224),
        ),
        Vertex(
          id: 'Chapel',
          coordinates: const LatLng(17.561094842327954, 120.38294644237152),
        ),
      ],
      //path30 lagoon
      [
        Vertex(
          id: 'lg1',
          coordinates: const LatLng(17.559987759751934, 120.38454886490106),
        ),
        Vertex(
          id: 'lg2',
          coordinates: const LatLng(17.560421857404517, 120.38400112286936),
        ),
        Vertex(
          id: 'lg3',
          coordinates: const LatLng(17.560641694167195, 120.38383075385617),
        ),
        Vertex(
          id: 'lg4',
          coordinates: const LatLng(17.56107897707312, 120.38325407894374),
        ),
        Vertex(
          id: 'lg5',
          coordinates: const LatLng(17.561487542380807, 120.38277592142437),
        ),
        Vertex(
          id: 'Lagoon',
          coordinates: const LatLng(17.561375503827943, 120.38260624911145),
        ),
      ],
      //path31 library
      [
        Vertex(
          id: 'lb1',
          coordinates: const LatLng(17.559987759751934, 120.38454886490106),
        ),
        Vertex(
          id: 'lb2',
          coordinates: const LatLng(17.560421857404517, 120.38400112286936),
        ),
        Vertex(
          id: 'lb3',
          coordinates: const LatLng(17.560641694167195, 120.38383075385617),
        ),
        Vertex(
          id: 'lb4',
          coordinates: const LatLng(17.56107897707312, 120.38325407894374),
        ),
        Vertex(
          id: 'lb5',
          coordinates: const LatLng(17.561487542380807, 120.38277592142437),
        ),
        Vertex(
          id: 'lb6',
          coordinates: const LatLng(17.56170257637834, 120.38269021395028),
        ),
        Vertex(
          id: 'Library',
          coordinates: const LatLng(17.56171354527912, 120.38270978191942),
        ),
      ],
      //path32 founders plaza
      [
        Vertex(
          id: 'fp1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'fp2',
          coordinates: const LatLng(17.560370176194716, 120.38397381633497),
        ),
        Vertex(
          id: 'fp3',
          coordinates: const LatLng(17.560827917441024, 120.38332740400536),
        ),
        Vertex(
          id: 'Founders Plaza',
          coordinates: const LatLng(17.560925091411438, 120.38320134019001),
        ),
      ],
      //path33 guestel
      [
        Vertex(
          id: 'gt1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'gt2',
          coordinates: const LatLng(17.560454331670805, 120.38400005902149),
        ),
        Vertex(
          id: 'gt3',
          coordinates: const LatLng(17.56066720568388, 120.38378634899873),
        ),
        Vertex(
          id: 'gt4',
          coordinates: const LatLng(17.560965228881724, 120.38340677448066),
        ),
        Vertex(
          id: 'gt5',
          coordinates: const LatLng(17.56127647241385, 120.383034140356),
        ),
        Vertex(
          id: 'Guestel',
          coordinates: const LatLng(17.561442048807614, 120.38316495702416),
        ),
      ],
      //path34 gym
      [
        Vertex(
          id: 'gym1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'gym2',
          coordinates: const LatLng(17.560454331670805, 120.38400005902149),
        ),
        Vertex(
          id: 'gym3',
          coordinates: const LatLng(17.56066720568388, 120.38378634899873),
        ),
        Vertex(
          id: 'gym4',
          coordinates: const LatLng(17.560965228881724, 120.38340677448066),
        ),
        Vertex(
          id: 'gym5',
          coordinates: const LatLng(17.561460919446997, 120.38281030022613),
        ),
        Vertex(
          id: 'gym6',
          coordinates: const LatLng(17.561725489930943, 120.38242115658711),
        ),
        Vertex(
          id: 'gym7',
          coordinates: const LatLng(17.561564314857613, 120.3822616714955),
        ),
        Vertex(
          id: 'Gym',
          coordinates: const LatLng(17.56159659358165, 120.38219789557245),
        ),
      ],
      //path35 mens dorm
      [
        Vertex(
          id: 'md1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'md2',
          coordinates: const LatLng(17.56037281088931, 120.38395601836265),
        ),
        Vertex(
          id: 'md3',
          coordinates: const LatLng(17.560823058456762, 120.38331875803787),
        ),
        Vertex(
          id: 'md3',
          coordinates: const LatLng(17.560266125561096, 120.38283322631564),
        ),
        Vertex(
          id: 'Mens Dormitory',
          coordinates: const LatLng(17.560162035514406, 120.38275475631701),
        ),
      ],
      //path36 grandstand
      [
        Vertex(
          id: 'gs1',
          coordinates: const LatLng(17.560009953118055, 120.38451162390015),
        ),
        Vertex(
          id: 'gs2',
          coordinates: const LatLng(17.560436694661025, 120.38402229902145),
        ),
        Vertex(
          id: 'gs3',
          coordinates: const LatLng(17.56064644861006, 120.38382505178353),
        ),
        Vertex(
          id: 'gs4',
          coordinates: const LatLng(17.560964695521648, 120.38340400477017),
        ),
        Vertex(
          id: 'gs5',
          coordinates: const LatLng(17.56149269484606, 120.38278191729873),
        ),
        Vertex(
          id: 'gs6',
          coordinates: const LatLng(17.562093020971197, 120.38191327077188),
        ),
        Vertex(
          id: 'Grandstand',
          coordinates: const LatLng(17.562605466195862, 120.38090032753219),
        ),
      ],
      //path37 oval
      [
        Vertex(
          id: 'oval1',
          coordinates: const LatLng(17.560009953118055, 120.38451162390015),
        ),
        Vertex(
          id: 'oval2',
          coordinates: const LatLng(17.560436694661025, 120.38402229902145),
        ),
        Vertex(
          id: 'oval3',
          coordinates: const LatLng(17.56064644861006, 120.38382505178353),
        ),
        Vertex(
          id: 'oval4',
          coordinates: const LatLng(17.560964695521648, 120.38340400477017),
        ),
        Vertex(
          id: 'oval5',
          coordinates: const LatLng(17.56149269484606, 120.38278191729873),
        ),
        Vertex(
          id: 'oval6',
          coordinates: const LatLng(17.562093020971197, 120.38191327077188),
        ),
        Vertex(
          id: 'Oval',
          coordinates: const LatLng(17.56215069572407, 120.3813703721726),
        ),
      ],
      //path38 motorpool
      [
        Vertex(
          id: 'mp1',
          coordinates: const LatLng(17.562651994035054, 120.38235341755991),
        ),
        Vertex(
          id: 'mp2',
          coordinates: const LatLng(17.561941368999488, 120.3817635724392),
        ),
        Vertex(
          id: 'mp3',
          coordinates: const LatLng(17.561368854240364, 120.38132346500653),
        ),
        Vertex(
          id: 'Motorpool',
          coordinates: const LatLng(17.56124477900748, 120.38128228016143),
        ),
      ],
      //path39 guard house front
      [
        Vertex(
          id: 'Guard House(Front)',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
      ],
      //path40 guardhouse back
      [
        Vertex(
          id: 'gh1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'gh2',
          coordinates: const LatLng(17.560448833378754, 120.38399786223358),
        ),
        Vertex(
          id: 'gh3',
          coordinates: const LatLng(17.561034697209283, 120.38447201424783),
        ),
        Vertex(
          id: 'gh4',
          coordinates: const LatLng(17.56224981616902, 120.38279541266725),
        ),
        Vertex(
          id: 'gh5',
          coordinates: const LatLng(17.562351075721917, 120.38268161617427),
        ),
        Vertex(
          id: 'gh6',
          coordinates: const LatLng(17.562600607926264, 120.38231936403538),
        ),
        Vertex(
          id: 'Guard House(Back)',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ),
      ],
      //path41 motor park back
      [
        Vertex(
          id: 'mpback1)',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ),
        Vertex(
          id: 'Motor Parking(Back)',
          coordinates: const LatLng(17.56270776056157, 120.38207849226815),
        ),
      ],
      //path42 motor park front
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
      //path43 canteen ccit
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
          id: 'Canteen CCIT4',
          coordinates: const LatLng(17.561336801612274, 120.38403818934937),
        ),
        Vertex(
          id: 'Canteen(Beside CCIT)',
          coordinates: const LatLng(17.56150158282851, 120.38400993217004),
        ),
      ],
      //path44 ctback
      [
        Vertex(
          id: 'ctback1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'ctback2',
          coordinates: const LatLng(17.56037853940048, 120.38395526316133),
        ),
        Vertex(
          id: 'ctback3',
          coordinates: const LatLng(17.56081793762564, 120.3833274858686),
        ),
        Vertex(
          id: 'ctback4',
          coordinates: const LatLng(17.560716677223127, 120.38322127578463),
        ),
        Vertex(
          id: 'ctback5',
          coordinates: const LatLng(17.560814321182082, 120.38303730479912),
        ),
        Vertex(
          id: 'ctback6',
          coordinates: const LatLng(17.560360457145602, 120.38266936282079),
        ),
        Vertex(
          id: 'Canteen(Back of CPAD/CLaw/CFAd/CCJE)',
          coordinates: const LatLng(17.560411296290525, 120.38257334570224),
        ),
      ],
      //path45 property office
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
          id: 'Property Office',
          coordinates: const LatLng(17.561852564525292, 120.3832178202789),
        ),
      ],
      //path46 ceramic center
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
          id: 'Ceramic Center',
          coordinates: const LatLng(17.5613115161934, 120.3840613614196),
        ),
      ],
      //path47 elementary
      [
        Vertex(
          id: 'elem1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'elem2',
          coordinates: const LatLng(17.559977543664004, 120.38435767936687),
        ),
        Vertex(
          id: 'elem3',
          coordinates: const LatLng(17.559746090161617, 120.38415853551658),
        ),
        Vertex(
          id: 'Elementary',
          coordinates: const LatLng(17.559673760881445, 120.38422302019193),
        ),
      ],
      //path48 food court
      [
        Vertex(
          id: 'fc1',
          coordinates: const LatLng(17.559974974088316, 120.38454523460766),
        ),
        Vertex(
          id: 'fc2',
          coordinates: const LatLng(17.560445556844677, 120.38401273007231),
        ),
        Vertex(
          id: 'fc3',
          coordinates: const LatLng(17.56067088929117, 120.38379562144169),
        ),
        Vertex(
          id: 'fc4',
          coordinates: const LatLng(17.561078390274595, 120.38325975150708),
        ),
        Vertex(
          id: 'fc5',
          coordinates: const LatLng(17.561501095546493, 120.38275258889287),
        ),
        Vertex(
          id: 'fc6',
          coordinates: const LatLng(17.561739549802382, 120.38241066547974),
        ),
        Vertex(
          id: 'Food Court(Event)',
          coordinates: const LatLng(17.561852068156014, 120.38248083892158),
        ),
      ],
      //path49 ls
      [
        Vertex(
          id: 'ls1',
          coordinates: const LatLng(17.560080184150998, 120.38458621532051),
        ),
        Vertex(
          id: 'ls2',
          coordinates: const LatLng(17.560168964603168, 120.38445375955123),
        ),

        Vertex(
          id: 'Laboratory School',
          coordinates: const LatLng(17.56047611179763, 120.38468660778501),
        ),
        //******************************************************************* */

        Vertex(
          id: 'ls1B',
          coordinates: const LatLng(17.56058863093648, 120.38463557255571),
        ),
        Vertex(
          id: 'ls2B',
          coordinates: const LatLng(17.560810627951284, 120.38478548854181),
        ),
        Vertex(
          id: 'ls3B',
          coordinates: const LatLng(17.56103402528067, 120.38443901204947),
        ),
        Vertex(
          id: 'ls4B',
          coordinates: const LatLng(17.56130295088781, 120.38408969767846),
        ),
        Vertex(
          id: 'ls5B',
          coordinates: const LatLng(17.5621636597217, 120.3829744920748),
        ),
        Vertex(
          id: 'Back Gate',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
      //path50 likod unfinished building
      [
        Vertex(
          id: 'path50',
          coordinates: const LatLng(17.562674723717, 120.38228620181778),
        ),
        Vertex(
          id: 'path50',
          coordinates: const LatLng(17.561334351136672, 120.38129468078154),
        ),
        Vertex(
          id: 'path50',
          coordinates: const LatLng(17.561358723978135, 120.38052419413204),
        ),
        Vertex(
          id: 'Cybershark',
          coordinates: const LatLng(17.56145248499981, 120.38053814474706),
        ),
        //******************************************************************* */
      ],
      //path51 bridge
      [
        Vertex(
          id: 'Tower1A',
          coordinates: const LatLng(17.560080184150998, 120.38458621532051),
        ),
        Vertex(
          id: 'Tower2A',
          coordinates: const LatLng(17.560131328555965, 120.38443869384842),
        ),
        Vertex(
          id: 'Iconic Tower',
          coordinates: const LatLng(17.55991652192564, 120.38427776131822),
        ),
        Vertex(
          id: 'Tower1B',
          coordinates: const LatLng(17.560131328555965, 120.38443869384842),
        ),
        Vertex(
          id: 'Tower2B',
          coordinates: const LatLng(17.56046812119189, 120.38401565996362),
        ),
        Vertex(
          id: 'Tower3B',
          coordinates: const LatLng(17.560662748861343, 120.38381470872802),
        ),
        Vertex(
          id: 'Tower4B',
          coordinates: const LatLng(17.561033757273037, 120.38330435641025),
        ),
        Vertex(
          id: 'Tower5B',
          coordinates: const LatLng(17.561456462651496, 120.38281952171157),
        ),
        Vertex(
          id: 'Tower6B',
          coordinates: const LatLng(17.56210116247407, 120.38190088756707),
        ),
        Vertex(
          id: 'Tower7B',
          coordinates: const LatLng(17.562642834082236, 120.38232585209586),
        ),
      ],
    ];
  }

  Set<Marker> _createMarkersFromPaths(List<List<Vertex>> paths) {
    Set<Marker> markerSet = {};

    for (int i = 0; i < paths.length; i++) {
      List<Vertex> path = paths[i];
      for (Vertex vertex in path) {
        if (vertex.id == 'College of Business Administration and Accountancy' ||
            vertex.id == 'College of Architecture' ||
            vertex.id == 'College of Arts and Sciences' ||
            vertex.id ==
                'College of Communication and Information Technology' ||
            vertex.id == 'College of Criminal Justice and Enforcement' ||
            vertex.id == 'College of Engineering' ||
            vertex.id == 'College of Fine Arts and Design' ||
            vertex.id == 'College of Health and Sciences' ||
            vertex.id == 'College of Hospitality and Tourism Management' ||
            vertex.id == 'College of Law' ||
            vertex.id == 'College of Medicine' ||
            vertex.id == 'College of Nursing' ||
            vertex.id == 'College of Public Administration' ||
            vertex.id == 'College of Social Work' ||
            vertex.id == 'College of Teacher Education' ||
            vertex.id == 'College of Technology' ||
            vertex.id == 'Laboratory School' ||
            vertex.id == 'Hostel' ||
            vertex.id == 'Administration Building' ||
            vertex.id == 'C-Tech/ITE' ||
            vertex.id == 'PIO/Quality Assurance' ||
            vertex.id == 'Training Center' ||
            vertex.id == 'Student Center' ||
            vertex.id == 'Science Complex' ||
            vertex.id == 'Student Shed' ||
            vertex.id == 'Parking Area(Heavy Vehicles)' ||
            vertex.id == 'Groceria' ||
            vertex.id == 'Guestel Canteen' ||
            vertex.id == 'Chapel' ||
            vertex.id == 'Lagoon' ||
            vertex.id == 'Library' ||
            vertex.id == 'Founders Plaza' ||
            vertex.id == 'Guestel' ||
            vertex.id == 'Gym' ||
            vertex.id == 'Ladies Dormitory' ||
            vertex.id == 'Mens Dormitory' ||
            vertex.id == 'Grandstand' ||
            vertex.id == 'Oval' ||
            vertex.id == 'Motorpool' ||
            vertex.id == 'Guard House(Front)' ||
            //vertex.id == 'Guard House(Back)' ||
            vertex.id == 'Motor Parking(Back)' ||
            vertex.id == 'Motor Parking(Front)' ||
            vertex.id == 'Canteen(Beside CCIT)' ||
            vertex.id == 'Canteen(Back)' ||
            vertex.id == 'Property Office' ||
            vertex.id == 'Ceramic Center' ||
            vertex.id == 'Elementary' ||
            vertex.id == 'Food Court(Event)' ||
            //vertex.id == 'High School' ||
            //vertex.id == 'Cybershark' ||
            vertex.id == 'Iconic Tower' ||
            vertex.id == 'Front Gate' ||
            vertex.id == 'Back Gate') {
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
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.satellite,
            markers: pinsVisible ? markers : Set<Marker>(),
            polylines: polylines,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            zoomControlsEnabled: true,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) {
              _googleMapController = controller;
            },
            onCameraMove: (CameraPosition position) {
              if (position.zoom > 10) {
                if (!pinsVisible) {
                  setState(() {
                    pinsVisible = true;
                  });
                }
              } else {
                if (pinsVisible) {
                  setState(() {
                    pinsVisible = false;
                  });
                }
              }
            },
          ),
        ],
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: 400.0,
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 43, 163, 105),
              foregroundColor: Colors.white,
              onPressed: () => _googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(_initialCameraPosition),
              ),
              child: const Icon(Icons.navigation_rounded),
            ),
          ),
          Positioned(
            top: 473.0,
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
                        zoom: 17),
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
            top: 550.0,
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 219, 184, 87),
              foregroundColor: Colors.white,
              onPressed: () {
                // reset ang map
                markers.clear();
                polylines.clear();
                markers.addAll(_createMarkersFromPaths(paths));
                _googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(_initialCameraPosition),
                );

                setState(() {});
              },
              child: const Icon(Icons.refresh),
            ),
          ),
          /*Positioned(
            top: 550.0,
            right: 1.0,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 219, 184, 87),
              foregroundColor: Colors.white,
              onPressed: () {
                // reset ang map
                

                setState(() {});
              },
              child: const Icon(Icons.car_repair),
            ),
          ),*/
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check location if enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enable location services.'),
        ),
      );
      return Future.error('Location services are disabled');
    }

    // Check the location permission status
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Request permission
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permission denied
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Location permission denied.'),
          ),
        );
        return Future.error('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permission denied forever
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Location permission permanently denied. Please enable it in the app settings.'),
        ),
      );
      return Future.error('Location permission permanently denied');
    }

    // Get the current position
    try {
      Position position = await Geolocator.getCurrentPosition();
      return position;
    } catch (e) {
      // Handle errors such as timeouts or unknown errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to get current position: $e'),
        ),
      );
      return Future.error('Failed to get current position: $e');
    }
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
          patterns: [
            PatternItem.gap(5.0),
            PatternItem.dot,
          ],
        ),
      );
    }

    setState(() {});
  }
}
