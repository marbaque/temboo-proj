import com.temboo.core.*;
import com.temboo.Library.Twitter.Trends.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("accountName", "myFirstApp", "abc123xxxxxxxxxxxxxx");

void setup() {
	// Run the Closest Choreo function
	runClosestChoreo();
}

void runClosestChoreo() {
	// Create the Choreo object using your Temboo session
	Closest closestChoreo = new Closest(session);

	// Set credential
	closestChoreo.setCredential("Virustuits");

	// Set inputs

	// Run the Choreo and store the results
	ClosestResultSet closestResults = closestChoreo.run();
	
	// Print results
	println(closestResults.getLimit());
	println(closestResults.getRemaining());
	println(closestResults.getReset());
	println(closestResults.getResponse());

}