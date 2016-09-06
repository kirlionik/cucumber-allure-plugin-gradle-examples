package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.hamcrest.MatcherAssert.assertThat;
//import static org.hamcrest.Matcher.*;
import static org.hamcrest.core.IsEqual.equalTo;

/**
 * Created by Anton_Shapin
 */

public class CommonStepsDef {
    private int varA;
    private  int varB;
    private  int varC;
    private int resultValue;

    @Given("^I set variable A as \"(\\d+)\"$")
    public void iSetVariableAAs(int varA) throws Throwable {
        this.varA=varA;
    }

    @And("^I set variable B as \"(\\d+)\"$")
    public void iSetVariableBAs(int varB) throws Throwable {
        this.varB=varB;
    }

    @And("^I set variable C as \"(\\d+)\"$")
    public void iSetVariableCAs(int varC) throws Throwable {
        this.varC=varC;
    }

    @When("^I perform A plus B$")
    public void iPerformAPlusB() throws Throwable {
        this.resultValue=this.varA+this.varB;
    }

    @Then("^result value should be \"(\\d+)\"$")
    public void summaShouldBe(int expectedSum) throws Throwable {
        assertThat(expectedSum,equalTo(this.resultValue));
    }

    @When("^I perform A plus B plus C$")
    public void iPerformAPlusBPlusC() throws Throwable {
        this.resultValue=this.varA+this.varB+this.varC;
    }
}
