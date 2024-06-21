class ReactionState {
  final bool isLike;
  final bool isDislike;
  final bool isFavorite;
  final int amountOfReactions;
  final int currentIndex;

  ReactionState({
    this.isLike = false,
    this.isDislike = false,
    this.isFavorite = false,
    this.amountOfReactions = 5,
    this.currentIndex = 0,
  });

  ReactionState copyWith({
    bool? isLike,
    bool? isDislike,
    bool? isFavorite,
    int? amountOfReactions,
    int? currentIndex,
  }) {
    return ReactionState(
      isLike: isLike ?? this.isLike,
      isDislike: isDislike ?? this.isDislike,
      isFavorite: isFavorite ?? this.isFavorite,
      amountOfReactions: amountOfReactions ?? this.amountOfReactions,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
