package br.com.mobilemind.j2objc.unit;

import com.google.j2objc.annotations.ObjectiveCName;

import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Ricardo Bocchi
 * 
 * @author ricardo
 */
public class TestSuite {

    protected static final Logger logger = Logger.getLogger(TestSuite.class.getName());

    private static Set<Class<? extends TestBehavior>> testsCase = new HashSet<Class<? extends TestBehavior>>();

    /**
     * Add Test Class
     * 
     * @param cls 
     */
    @ObjectiveCName("addTestCase:")
    public static void addTestCase(Class<? extends TestBehavior> cls) {
        if (!testsCase.contains(cls)) {
            testsCase.add(cls);
        }
    }

    /**
     * Print results in HTML format
     * 
     * @param out
     * @return
     * @throws Exception 
     */
    @ObjectiveCName("printTestsResultsWithOutputDir:")
    public static String printTestsResults(OutputDir out) throws Exception {
        String testsResult = TestRunner.printTestsResult(out);
        TestRunner.cleanResults();
        return testsResult;
    }

    /**
     * Run unit tests
     * 
     */
    public static void runTestSuite(Object context) {
        for (Class<? extends TestBehavior> clazz : TestSuite.testsCase) {
            try {
                TestRunner.run(clazz, context);
            } catch (Exception e) {
                logger.log(Level.SEVERE, e.getMessage() == null ? "" : e.getMessage(), e);
            }
        }
    }

    /**
     * Run unit tests
     *
     */
    public static void runTestSuite() {
        for (Class<? extends TestBehavior> clazz : TestSuite.testsCase) {
            try {
                TestRunner.run(clazz, null);
            } catch (Exception e) {
                logger.log(Level.SEVERE, e.getMessage() == null ? "" : e.getMessage(), e);
            }
        }
    }
}
