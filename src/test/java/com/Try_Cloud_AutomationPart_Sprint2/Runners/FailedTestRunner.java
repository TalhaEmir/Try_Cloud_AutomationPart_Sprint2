package com.Try_Cloud_AutomationPart_Sprint2.Runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "@target/rerun.txt",
        glue = "com/project_name/step_definitions"
)
public class FailedTestRunner {
}
