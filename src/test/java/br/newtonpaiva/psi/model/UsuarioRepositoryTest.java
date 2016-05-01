package br.newtonpaiva.psi.model;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import junit.framework.Assert;

public class UsuarioRepositoryTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void sha256Test() throws Exception {
		
		UsuarioRepository r = new UsuarioRepository();
		String actual = r.sha256("Np2015");
		String expected = "b973a31df4418348aaa6697fb78e1363e8ecb2079e8d95cdc94915c25eca7b6b";
		
		Assert.assertEquals(expected, actual);
		// fail("Not yet implemented");
	}

}
