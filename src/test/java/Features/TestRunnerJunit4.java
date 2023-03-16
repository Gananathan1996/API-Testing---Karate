//package Features;
//
//
//	//To run all the features under a folder
//@RunWith(Karate.class)
//public class TestRunnerJunit4 {
//	
//	}
//
//	//To execute parallely all the features under a particular path
//import com.intuit.karate.Results;
//import com.intuit.karate.Runner;
//import static org.junit.Assert.*;
//import org.junit.Test;
//
//public class TestParallel {
//    
//    @Test
//    public void testParallel() {
//        Results results = Runner
//        		.path("classpath:some/package")
//        		.outputCucumberJson(true)
//        		.outputJunitXml(true)
//        		.reportDir("//path")
//        		.tags("@smoke")
//        		.parallel(5);
//        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
//    }
//    
//}