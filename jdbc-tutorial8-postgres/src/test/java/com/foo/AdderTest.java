package com.foo;

import org.junit.Assert;
import org.junit.Test;

/**
 * @author prekezes.
 */
public class AdderTest {

    @Test
    public void test() {
        Adder adder = new Adder();
        Assert.assertEquals(4, adder.add(1,3));
    }


}
