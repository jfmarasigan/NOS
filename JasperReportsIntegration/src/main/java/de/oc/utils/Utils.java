package de.oc.utils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Utils {

	private static final Logger logger = LogManager.getLogger(Utils.class);

	/**
	 * 
	 * @param msg the message to be displayed with the runtimeException
	 */
	public static void throwRuntimeException(String msg) {
		logger.error(msg);
		throw new RuntimeException(msg);
	}

	/**
	 * lists all system properties for debugging purposes
	 */
	public static void logSystemProperties() {
		logger.trace("*** list all system properties");

		// Get all system properties
		Properties props = System.getProperties();
		{
			// Enumerate all system properties
			for (Enumeration<?> e = props.propertyNames(); e.hasMoreElements();) {
				// Get property name
				String propName = (String) e.nextElement();

				// Get property value
				String propValue = (String) props.get(propName);

				logger.trace(propName + ": " + propValue);
			}
		}
	}
	
	public static boolean validateHash(String hashString, String signHash, String reqHash) throws IOException {
		String tohash = signHash + hashString;
		return reqHash.equalsIgnoreCase(generateSHA256(tohash));
	}

	private static String convertByteArrayToHexString(byte[] arrayBytes) {
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < arrayBytes.length; i++) {
			stringBuilder.append(Integer.toString((arrayBytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		return stringBuilder.toString();
	}

	private static String hashString(String message, String algorithm) throws IOException {
		try {
			MessageDigest digest = MessageDigest.getInstance(algorithm);
			byte[] hashedBytes = digest.digest(message.getBytes(StandardCharsets.UTF_8));

			return convertByteArrayToHexString(hashedBytes);
		} catch (NoSuchAlgorithmException ex) {
			throw new IOException("Could not generate hash from String", ex);
		}
	}

	public static String generateSHA256(String message) throws IOException {
		return hashString(message, "SHA-256");
	}
}
