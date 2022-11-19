package com.Web.automation;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

/**
 * @author lathusha@codelantic.com
 *
 */
public class ConfigFileReader {

	private Properties properties;
	private final String propertyFilePath = "config\\Configuration.properties";

	public ConfigFileReader() {
		BufferedReader reader;
		try {
			reader = new BufferedReader(new FileReader(propertyFilePath));
			properties = new Properties();
			try {
				properties.load(reader);
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException("Configuration.properties not found at " + propertyFilePath);
		}
	}

	public String getDriverPath() {
		String driverPath = properties.getProperty("driverpath");
		if (driverPath != null)
			return driverPath;
		else
			throw new RuntimeException("driverPath not specified in the Configuration.properties file.");
	}

	public long getImplicitlyWait() {
		String implicitlyWait = properties.getProperty("implicitwaittime");
		if (implicitlyWait != null)
			return Long.parseLong(implicitlyWait);
		else
			throw new RuntimeException("implicitlyWait not specified in the Configuration.properties file.");
	}

	public String getApplicationUrl() {
		String url = properties.getProperty("webURL");
		if (url != null)
			return url;
		else
			throw new RuntimeException("url not specified in the Configuration.properties file.");
	}
	
//	public String getApplicationAdminUrl() {
//		String url = properties.getProperty("adminUrl");
//		if (url != null)
//			return url;
//		else
//			throw new RuntimeException("url not specified in the Configuration.properties file.");
//	}

	public String getLoginUsername() {
		String url = properties.getProperty("username");
		if (url != null)
			return url;
		else
			throw new RuntimeException("username not specified in the Configuration.properties file.");
	}
	
	public String getLoginPassword() {
		String url = properties.getProperty("password");
		if (url != null)
			return url;
		else
			throw new RuntimeException("password not specified in the Configuration.properties file.");
	}
	
//	public String getApplicationAgentUrl() {
//		String url = properties.getProperty("agentUrl");
//		if (url != null)
//			return url;
//		else
//			throw new RuntimeException("url not specified in the Configuration.properties file.");
//	}
}
