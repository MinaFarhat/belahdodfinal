class ReactionState {
  final bool isLike;
  final bool isDislike;
  final bool isFavorite;
  final int likeCount;
  final int currentIndex;

  ReactionState({
    this.isLike = false,
    this.isDislike = false,
    this.isFavorite = false,
    this.likeCount = 0,
    this.currentIndex = 0,
  });

  ReactionState copyWith({
    bool? isLike,
    bool? isDislike,
    bool? isFavorite,
    int? likeCount,
    int? currentIndex,
  }) {
    return ReactionState(
      isLike: isLike ?? this.isLike,
      isDislike: isDislike ?? this.isDislike,
      isFavorite: isFavorite ?? this.isFavorite,
      likeCount: likeCount ?? this.likeCount,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
