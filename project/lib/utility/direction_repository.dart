import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/utility/directions_model.dart';

class DirectionRepository {
  static const String _baseUrl = 
    'https://maps.googleapis.com/maps/api/directions/json?';

      late final Dio? _dio;

      DirectionRepository({Dio? dio}) : _dio = dio ?? Dio();
      
      Future<Directions> getDirections({
        required LatLng origin,
        required LatLng destination,
      }) async {
        final Response = await _dio!.get(
          _baseUrl,
          queryParameters: {
            'origin': '${origin.latitude},${origin.longitude}',
            'destination': '${destination.latitude},${destination.longitude}',
            'key' : 'AIzaSyCsW3yHep-xFF2Xia7r9j2UvKdF0yZJ7F4',
          },
        );
      
        if(Response.statusCode == 200){
          return Directions.fromMap(Response.data);
        }
        return null!;
      
      }



}