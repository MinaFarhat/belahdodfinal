import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/data/Model/getnotificationsentity.dart';
import 'package:belahododfinal/Features/User/note/data/Repostry/baserepositorygetnotifications.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_notifications_state.dart';
part 'get_notifications_cubit.freezed.dart';

@injectable
class GetNotificationsCubit extends Cubit<GetNotificationsState> {
  GetNotificationsCubit(this._baseRepositoryGetNotifications)
      : super(const GetNotificationsState.initial());

  final BaseRepositoryGetNotifications _baseRepositoryGetNotifications;

  Future<void> getNotifications() async {
    emit(const GetNotificationsState.loading());

    final response = await _baseRepositoryGetNotifications.getNotifications();

    response.fold((l) => emit(GetNotificationsState.error(l)),
        (r) => emit(GetNotificationsState.success(r)));
  }
}
