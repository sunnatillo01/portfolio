part of 'comments_bloc.dart';

abstract class CommentsState {}

class CommentsInitial extends CommentsState {}

class SendingCommentSuccesState extends CommentsState {}

class SendingCommentProccesState extends CommentsState {}

class SendingCommentFailureState extends CommentsState {}
