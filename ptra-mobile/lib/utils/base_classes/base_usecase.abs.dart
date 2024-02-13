import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<BaseResult<R>> execute(P params) async {
    try {
      await Future.delayed(const Duration(seconds: 1, milliseconds: 250));
      final response = await call(params);
      return Success(response);
    } catch (e) {
      return _handleException(e);
    }
  }

  Future<BaseResult<R>> _handleException(dynamic e) async {
    // TODO: implement handling exception

    final networkManager = PTRANetworkManager();

    if (e is DioException) {
      return _handleDioException(e);
    }
    if (!await networkManager.isInternetConnected) {
      return Failure(InternetConnectionException());
    }

    return Failure(UnknownException());
  }

  Future<BaseResult<R>> _handleDioException(DioException e) async {
    // TODO: implement handling dio exception
    return Failure(UnknownException());
  }
}
