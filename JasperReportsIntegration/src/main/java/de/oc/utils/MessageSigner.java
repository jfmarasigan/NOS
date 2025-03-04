package de.oc.utils;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MessageSigner {
	private static Logger logger = Logger.getLogger(MessageSigner.class.getName());
	private Signature sig;

	/**
	 * Standard Java usage example, safe to remove
	 */
	public static void main(String args[]) throws Exception {
		if (args.length < 2) {
			logger.severe("Usage:\nMessageSigner.class [path to private key] [data to sign]\n");
			System.exit(1);
		}
		byte[] key = MessageSigner.readFile(args[0]);
		String toSign = args[1];
		MessageSigner ms = new MessageSigner(key);
		String signature = ms.sign(toSign);

		logger.log(Level.INFO, "Request: {0}", toSign);
		logger.log(Level.INFO, "Response: {0}", signature);
	}

	/**
	 * Constructs an RSA SHA1 signature object for signing
	 * 
	 * @param keyData
	 * @throws Exception
	 */
	public MessageSigner(byte[] keyData) throws Exception {
		// Warning: PKCS#8 required. If PKCS#1 (RSA) key is provided convert using:
		// $ openssl pkcs8 -topk8 -inform PEM -outform PEM -in private-key.pem -out
		// private-key-pkcs8.pem -nocrypt
		PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(parseKeyData(keyData));
		KeyFactory kf = KeyFactory.getInstance("RSA");
		PrivateKey key = kf.generatePrivate(keySpec);
		sig = Signature.getInstance("SHA512withRSA"); // Use "SHA1withRSA" for QZ Tray 2.0 and older
		sig.initSign(key);
	}

	/**
	 * Signs the specified data with the provided private key, returning the RSA
	 * SHA1 signature
	 * 
	 * @param data Message to sign
	 * @return Base64 encoded signature
	 * @throws Exception
	 */
	public String sign(String data) throws Exception {
		sig.update(data.getBytes());
		return Base64.getEncoder().encodeToString(sig.sign());
	}

	/**
	 * Reads the raw byte[] data from a file resource
	 * 
	 * @param path File path to read
	 * @return the raw byte data from file
	 * @throws IOException
	 */
	public static byte[] readFile(String path) throws IOException {
		File keyFile = new File(path);
		InputStream is = new FileInputStream(keyFile);
//		if (is == null) {
//			throw new IOException(String.format("Can't open resource \"%s\"", path));
//		}
		DataInputStream dis = new DataInputStream(is);
		byte[] data = new byte[dis.available()];
		dis.readFully(data);
		dis.close();
		return data;
	}

	/**
	 * Parses a base64 encoded private key by stripping the header and footer lines
	 * 
	 * @param keyData PEM file contents
	 * @return Raw key byes
	 * @throws IOException
	 */
	private static byte[] parseKeyData(byte[] keyData) throws IOException {
		StringBuilder sb = new StringBuilder();
		String[] lines = new String(keyData).split("[\r?\n]+");
		String[] skips = new String[] { "-----BEGIN", "-----END", ": " };
		for (String line : lines) {
			boolean skipLine = false;
			for (String skip : skips) {
				if (line.contains(skip)) {
					skipLine = true;
				}
			}
			if (!skipLine) {
				sb.append(line.trim());
			}
		}
		return Base64.getDecoder().decode(sb.toString());
	}
}
