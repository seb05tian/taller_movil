import 'dart:convert';

const _mapStyle = [
  {
    "featureType": "administrative",
    "elementType": "all",
    "stylers": [
      {"saturation": "-100"}
    ]
  },
  {
    "featureType": "administrative.province",
    "elementType": "all",
    "stylers": [
      {"visibility": "off"}
    ]
  },
  {
    "featureType": "landscape",
    "elementType": "all",
    "stylers": [
      {"saturation": -100},
      {"lightness": 65},
      {"visibility": "on"}
    ]
  },
  {
    "featureType": "poi",
    "elementType": "all",
    "stylers": [
      {"saturation": -100},
      {"lightness": "50"},
      {"visibility": "simplified"}
    ]
  },
  {
    "featureType": "road",
    "elementType": "all",
    "stylers": [
      {"saturation": "-100"}
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {"hue": "#ff0000"}
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.stroke",
    "stylers": [
      {"color": "#9fcf67"},
      {"weight": "3.28"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "all",
    "stylers": [
      {"visibility": "simplified"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.fill",
    "stylers": [
      {"color": "#9fcf67"},
      {"weight": "4.37"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {"color": "#000000"},
      {"weight": "3.10"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {"color": "#9fcf67"},
      {"weight": "3.04"}
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.stroke",
    "stylers": [
      {"color": "#9fcf67"},
      {"weight": "3.68"}
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "all",
    "stylers": [
      {"lightness": "30"}
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "all",
    "stylers": [
      {"lightness": "40"}
    ]
  },
  {
    "featureType": "transit",
    "elementType": "all",
    "stylers": [
      {"saturation": -100},
      {"visibility": "simplified"}
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {"hue": "#ffff00"},
      {"lightness": -25},
      {"saturation": -97}
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels",
    "stylers": [
      {"lightness": -25},
      {"saturation": -100}
    ]
  }
];

final mapStyle = jsonEncode(_mapStyle);
