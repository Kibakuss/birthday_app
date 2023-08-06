// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:birthday_app/domain/repository/guest_repository.dart' as _i3;
import 'package:birthday_app/main.dart' as _i5;
import 'package:birthday_app/presentation/blocs/bloc/guest_list_bloc_bloc.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.GuestRepository>(() => registerModule.guestRepository);
    gh.factory<_i4.GuestListBloc>(
        () => _i4.GuestListBloc(gh<_i3.GuestRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i5.RegisterModule {
  @override
  _i3.GuestRepository get guestRepository => _i3.GuestRepository();
}
