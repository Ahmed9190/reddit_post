enum VoteState {
  upvote,
  downvote,
  none;

  static VoteState fromString(String value) {
    switch (value) {
      case 'upvote':
        return VoteState.upvote;
      case 'downvote':
        return VoteState.downvote;
      case 'none':
        return VoteState.none;
      default:
        throw Exception('None of the vote states match the given value');
    }
  }
}
