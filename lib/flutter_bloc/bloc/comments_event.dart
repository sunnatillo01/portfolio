part of 'comments_bloc.dart';

abstract class CommentsEvent {}

class SendCommentEvent extends CommentsEvent {
  final String txt;
  SendCommentEvent({required this.txt});
}
