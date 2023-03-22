package Features;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;



//import com.intuit.karate.junit5.Karate;
//
//import cucumber.api.java.Before;
//class TestRunnerJunit5 {
//
//
//    @Karate.Test
//    Karate testSample() {
//        return Karate.run("sample").relativeTo(getClass());
//    }
//    
//    @Karate.Test
//    Karate testTags() {
//        return Karate.run("tags").tags("@second").relativeTo(getClass());
//    }
//
//    @Karate.Test
//    Karate testSystemProperty() {
//        return Karate.run("classpath:karate/tags.feature")
//                .tags("@second")
//                .karateEnv("e2e")
//                .systemProperty("foo", "bar");
//    }
//
//}

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import cucumber.api.java.Before;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

class TestRunnerJunit5 {
	@Before
	public void before() {
		System.setProperty("Karate.env", "dev");

	}

	public String path = "karatePractice/src/test/java/Features/";
	@Test
	void testParallel() {
		Results results = Runner.path(path).parallel(5);
				//.parallel(getClass(), 5)
				//.path("classpath:karatePractice/src/test/java/Features").parallel(5);
		
 		generateReport(results.getReportDir());
		assertEquals(0, results.getFailCount(), results.getErrorMessages());
	}
		public static void generateReport(String karateOutputPath)
	    {
	        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
	        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
	        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
	        Configuration config = new Configuration(new File("target"), "Message");
	        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
	        reportBuilder.generateReports();
	    }
	

}


