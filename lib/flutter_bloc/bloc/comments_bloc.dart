import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_tiin_web/secret/secret_key.dart';

import '../../service/api_state.dart';
import '../../service/comment_service.dart';

part 'comments_event.dart';
part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc() : super(CommentsInitial()) {
    on<SendCommentEvent>(senfeedback);
  }

  Future<void> senfeedback(
    SendCommentEvent event,
    Emitter<CommentsState> emit,
  ) async {
    emit(SendingCommentProccesState());
    ApiState state = await SendCommentService.sendToTelegramm(
        event.txt, SecretKeys.COMMENT_BOT_LINK);
    if (state.code == 200) {
      emit(SendingCommentSuccesState());
    } else {
      emit(SendingCommentFailureState());
    }
  }
}
