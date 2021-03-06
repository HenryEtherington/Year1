//DataSentinelWhile3.java
/*This program uses a data-sentinel controlled while loop to read in a sentence of
 *arbitrary length from a user, terminated with a full-stop. It then determines
 *the exact number of lowercase letters, uppercase letters, digits and punctuation
 *characters in the sentence*/
 
 import java.util.Scanner;
 
 public class DataSentinelWhile3 {
 	public static void main(String args[])
 	{
 		String sentence;
 		char ch;
 		int index=0,lowerLetters=0,upperLetters=0,digits=0,punctuation=0;
 		
 		Scanner input = new Scanner(System.in);
 		
 		System.out.println("Please enter any sentence you like (terminated by a full-stop):\n");
 		sentence = input.nextLine ();
 		
 		ch = sentence.charAt(index); //extract the 1st character from sentence
 		
 		while(ch !='.' )
 		{
 			if(ch>='a' && ch<='z')
 				lowerLetters++;
 			
 				else if(ch>='A' && ch<='Z')
 				upperLetters++;
 			
 				else if(ch>='0' && ch<='9')
 				digits++;
 				
 				else
 					punctuation++;
 			
 			index++; //indrease index by 1
 			ch = sentence.charAt(index); //extract the next character from sentance	
 		}	
 			System.out.println("\n\n**********Lexical Analysis of Your Sentence**********" +
 				"\nLowercase letters: " + lowerLetters +
 				"\nUppercase letters: " + upperLetters +
 				"\nDigits:" + digits  + 
 					"\nPunctuation symbols: " + (punctuation+1)); 
 			 
 		}
 }