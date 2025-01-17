package com.sixtyfour.cbmnative;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sixtyfour.Logger;
import com.sixtyfour.parser.cbmnative.CodeContainer;

/**
 * Some static helper methods.
 * 
 * @author EgonOlsen
 * 
 */
public class Util {
	/**
	 * Creates native code for a single (BASIC) command by wrapping it into a list
	 * of code containers.
	 * 
	 * @param commands the commands to wrap
	 * @return the code containers
	 */
	public static List<CodeContainer> createSingleCommand(String... commands) {
		List<String> after = new ArrayList<String>();
		after.addAll(Arrays.asList(commands));
		CodeContainer cc = new CodeContainer(null, null, after);
		List<CodeContainer> ccs = new ArrayList<CodeContainer>();
		ccs.add(cc);
		return ccs;
	}

	/**
	 * Creates an empty command. This is used for DATA, which is a BASIC command
	 * that has no equivalent in native code.
	 * 
	 * @return a code container list with nothing in it
	 */
	public static List<CodeContainer> createNoCommand() {
		List<String> after = new ArrayList<String>();
		CodeContainer cc = new CodeContainer(null, null, after);
		List<CodeContainer> ccs = new ArrayList<CodeContainer>();
		ccs.add(cc);
		return ccs;
	}

	/**
	 * Extracts all number constants from an assembly source.
	 * 
	 * @param input the source
	 * @return the constants in name->value map
	 */
	public static Map<String, Number> extractNumberConstants(List<String> input) {
		Map<String, Number> const2Value = new HashMap<>();
		for (String line : input) {
			line = line.replace("\t", " ");
			if (line.startsWith("CONST_")) {
				int pos = line.indexOf(" ");
				if (pos != -1) {
					String name = line.substring(0, pos).trim();
					String right = line.substring(pos + 1).trim();
					pos = right.indexOf(" ");
					if (pos != -1) {
						String type = right.substring(0, pos).trim();
						String number = right.substring(pos + 1).trim();
						if (type.equals(".REAL") || type.equals(".WORD")) {
							try {
								Double num = Double.valueOf(number);
								if (type.equals(".REAL")) {
									const2Value.put(name, num);
									if (!name.endsWith("R") && !const2Value.containsKey(name + "R")) {
										// Just to make sure that CONST_0R exists...
										const2Value.put(name + "R", num);
									}
								} else {
									const2Value.put(name, num.intValue());
								}
							} catch (Exception e) {
								Logger.log("Failed to parse " + number + " as a number!");
							}
						}
					}
				}
			}
		}
		return const2Value;
	}

	public static Map<String, String> extractStringConstants(List<String> input) {
		Map<String, String> const2Value = new HashMap<>();
		int cnt = 0;
		for (String line : input) {
			line = line.replace("\t", " ");
			if (line.startsWith("CONST_")) {
				int pos = line.indexOf(" ");
				if (pos != -1) {
					String name = line.substring(0, pos).trim();
					String right = line.substring(pos + 1).trim();
					pos = right.indexOf(" ");
					if (pos != -1) {
						String type = right.substring(0, pos).trim();
						if (type.equals(".BYTE") && cnt < input.size() - 1) {
							try {
								String nextLine = input.get(cnt + 1);
								nextLine = nextLine.replace("\t", " ").trim();
								if (nextLine.startsWith(".STRG")) {
									String val = nextLine.substring(6).trim().replace("\"", "");
									const2Value.put(name, val);
									// System.out.println("Extracted "+name+" : "+val);
								}
							} catch (Exception e) {
								Logger.log("Failed to parse string for " + line);
							}
						}
					}
				}
			}
			cnt++;
		}
		return const2Value;
	}
}
