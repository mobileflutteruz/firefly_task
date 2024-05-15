// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/repository/auth_repository.dart' as _i4;
import '../../presentation/bloc/auth/auth_bloc.dart' as _i5;
import 'data_module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.FirebaseAuth>(() => dataModule.firebaseAuth);
    gh.factory<_i4.AuthRepository>(
        () => _i4.AuthRepository(gh<_i3.FirebaseAuth>()));
    gh.factory<_i5.AuthBloc>(() => _i5.AuthBloc(gh<_i4.AuthRepository>()));
    return this;
  }
}

class _$DataModule extends _i6.DataModule {}
