String[] words = { "I", "love", "coffee", "I", "love", "tea" } ;
for (int i = 0; i < words.length - 1; i++) {
  for (int j = i+1; j < words.length; j++) {
    if (words[i].equals(words[j])) {
      println(words[i] + " is a duplicate. ");
    }
  }
}