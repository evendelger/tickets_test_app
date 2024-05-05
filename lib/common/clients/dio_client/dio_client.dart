import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioClient {
  Dio get dio => _dio;

  final _dio = Dio()..interceptors.add(TalkerDioLogger());
}
