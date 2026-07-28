import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_designe/feature/home/cubit/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(isFollowing: false, followersCount: 1250));

  void toggleFollow() {
    if (state.isFollowing) {
      emit(HomeState(isFollowing: false, followersCount: state.followersCount - 1));
    } else {
      emit(HomeState(isFollowing: true, followersCount: state.followersCount + 1));
    }
  }
}
