public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
           for (int i = 0; i < word.length(); i++) {
            char currentChar = word.charAt(i);
            if (currentChar == 'a' || currentChar == 'e' || currentChar == 'i' || currentChar == 'o' || currentChar == 'u') {
                return i;
            }
           }
        return -1;
}

public String pigLatin(String word)
//precondition: word is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(word) == -1)
  {
    return word + "ay";
  }
  else if(findFirstVowel(word) == 0){
    return word + "way";
  }
        if (word.startsWith("qu")) {
            return word.substring(2) + "quay";
        }
      else if(findFirstVowel(word) != -1){
    return word.substring(findFirstVowel(word)) + word.substring(0,findFirstVowel(word)) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
