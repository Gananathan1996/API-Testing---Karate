package Features;

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

//import com.intuit.karate.Results;
//import com.intuit.karate.Runner;
//import cucumber.api.java.Before;
//import static org.junit.jupiter.api.Assertions.*;
//import org.junit.jupiter.api.Test;
//class TestRunnerJunit5 {
//	@Before
//	public void before() {
//		System.setProperty("Karate.env", "dev");
//
//	}
//
//	@Test
//	void testParallel() {
//		Results results = Runner.path("classpath:Features").tags("@primary").parallel(5);
//		assertEquals(0, results.getFailCount(), results.getErrorMessages());
//	}
//
//}


