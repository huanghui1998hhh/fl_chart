part of 'app_cubit.dart';

@Equatable()
class AppState {
  final PackageInfo? currentPackageInfo;
  final String availableVersionToUpdate;
  final String usingFlChartVersion;

  String? get appVersion => currentPackageInfo?.version;

  const AppState([
    this.currentPackageInfo,
    this.availableVersionToUpdate = '',
    this.usingFlChartVersion = '',
  ]);

  AppState copyWith({
    PackageInfo? currentPackageInfo,
    String? availableVersionToUpdate,
    String? usingFlChartVersion,
  }) {
    return AppState(
      currentPackageInfo ?? this.currentPackageInfo,
      availableVersionToUpdate ?? this.availableVersionToUpdate,
      usingFlChartVersion ?? this.usingFlChartVersion,
    );
  }
}
