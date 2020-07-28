import java.util.*;
import java.io.*;

class CharCount {
   public static void main(String[] args) {
	CharCounter[] c = new CharCounter[26];
	Counter length = new Counter();
	String s;
	Scanner f;

	// Initialize the Character array
	for(int i = 0; i < c.length; i++) 
	    c[i] = new CharCounter((char)(i + 'a'));

	// Open the file
	try {
	    f = new Scanner(new File(args[0]));
	} catch(java.io.FileNotFoundException e) {
	    System.out.println("File Not Found!");
	    return;
	}

	// Count the characters in the file
	// Read one line at a time as a String
	// and call countChars to count the chars
	// in that string and add it to the totals
	// kept in c
	while(f.hasNext()) {
	    s = f.next();
	    countChars(s, c, length);
	}
	
	// Sort the list by frequency
	sort(c);

	// Print out the results
	printResults(c, length);
   }

    // Sort the array of CharCounters based on character
    // frequency
    public static void sort(CharCounter[] list) {
	CharCounter temp;

	// Selection sort
	// For each element of the list
	for(int i = 0; i < list.length; i++) 
	    // Find the smallest element in the rest of the list
	    for(int j = i+1; j < list.length; j++)
		// If we found something smaller than the current element
		if(list[j].t.readValue() > list[i].t.readValue()) {
		    // Swap it with the current element
		    temp = list[i];
		    list[i] = list[j];
		    list[j] = temp;
		}
    }

    // Print out the results
    public static void printResults(CharCounter[] c, Counter length) {
	System.out.println("File length: " + length.readValue() + " characters");
	for(int i = 0; i < c.length; i++) {
	    int percent = (int)(100 * (double)c[i].t.readValue() / length.readValue());
	    System.out.println("Character: " + c[i].c + " - " + c[i].t.readValue() + " = " + percent + "%");
	}
   }

    // Count the characters in the specified string
    // Add the results to the values in c
    // And count the countable characters and add them to length 
    public static void countChars(String s, CharCounter[] c, Counter length) {
	String s2 = s.toLowerCase();
	char[] sc = s2.toCharArray();
	
	for(int i = 0; i < sc.length; i++) {
	    if( sc[i] >= 'a' && sc[i] <= 'z') {
		length.increment();
		c[sc[i] - 'a'].t.increment();
	    }
	}
    }
}

// This is a class to record the counts of the occurrences
// of each character.
class CharCounter {
    char c;      // To keep track of which character it is
    Counter t;   // To count the number of occurrences

    // Constructor
   CharCounter(char c2) {
	c = c2;
	t = new Counter();
    }
}

// A counter class to count things
class Counter {
    int value;   
    void reset() { value = 0; }
    int readValue() { return value; }
    void increment() { value++; }
    void decrement() { value--; }
}