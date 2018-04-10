package javaWrapperForBatches;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class LogAnalysatorStandAlone {

	static String SEPARATOR = ";";
	static String allPuids;

	public static void main(String args[]) throws Exception, IOException {

		String folder = "D:\\droid-binary-6.3-bin\\log";

		ArrayList<File> files = utilities.ListsFiles.getPaths(new File(folder), new ArrayList<File>());

		PrintWriter outputCsv = new PrintWriter(new FileWriter(folder + "\\droidhistory.csv"));
		PrintWriter test = new PrintWriter(new FileWriter(folder + "\\test.txt"));
		allPuids = "D://all_puids_V90.txt";

		ArrayList<LogObject> objectsforCsv = new ArrayList<LogObject>();

		for (int i = 0; i < files.size(); i++) {

			FileReader input = new FileReader(files.get(i).getPath());
			BufferedReader fileReader = new BufferedReader(input);

			String str;
			List<String> linesLogdroid = new ArrayList<String>();

			while ((str = fileReader.readLine()) != null) {
				linesLogdroid.add(str);
			}

			fileReader.close();
			LogObject temp = new LogObject();
			temp.logLines = linesLogdroid.size();
			
		
			for (int j = 0; j < linesLogdroid.size(); j++) {
			
					if (linesLogdroid.get(j).startsWith("Selected folder or file:")) {
						String[] filename = linesLogdroid.get(j).split("C:");
						temp.filename = ("C:" + filename[1] + SEPARATOR);

					}
					if (linesLogdroid.get(j).startsWith("Binary signature file:")) {
						String[] signature = linesLogdroid.get(j).split("DROID_SignatureFile_");
						temp.signatureFile = (signature[1].replace(".xml", "")+ SEPARATOR);
					}
					if (linesLogdroid.get(j).startsWith("C:")) {
						if (linesLogdroid.get(j).contains(",")) {
							String[] puid = linesLogdroid.get(j).split(",");
							temp.puid.add(puid[1]);
							temp.puidnames.add(getPronomMeaning(puid[1]));
						} else {
							temp.puid.add("unknown");
							temp.puidnames.add("");
						}
					}
				}

			objectsforCsv.add(temp);
		}

		outputCsv.println("Filename" + SEPARATOR + "SignatureFileVersion" + SEPARATOR + "PUID" + SEPARATOR + "puidName"
				+ SEPARATOR + "LogLines");

		for (int j = 0; j < objectsforCsv.size(); j++) {

			outputCsv.print(objectsforCsv.get(j).filename + objectsforCsv.get(j).signatureFile);

			for (int i = 0; i < objectsforCsv.get(j).puid.size(); i++) {
				outputCsv.print(objectsforCsv.get(j).puid.get(i) + ",");
			}

			outputCsv.print(SEPARATOR);

			for (int i = 0; i < objectsforCsv.get(j).puidnames.size(); i++) {
				outputCsv.print(objectsforCsv.get(j).puidnames.get(i) + ",");
			}

			outputCsv.print(SEPARATOR);
			outputCsv.print(objectsforCsv.get(j).logLines);
			outputCsv.print("\n");
		}

		outputCsv.close();
		test.close();

	}

	static String getPronomMeaning(String pronomPUID) throws IOException {

		String pronomMeaning = "not known";

		List<String> linesLog = new ArrayList<String>();

		FileReader input = new FileReader(allPuids);
		BufferedReader buffRd = new BufferedReader(input);
		String str;

		while ((str = buffRd.readLine()) != null) {
			linesLog.add(str);
		}
		buffRd.close();
		pronomPUID = pronomPUID + ";";

		for (int j = 0; j < linesLog.size(); j++) {

			if (pronomPUID.contains("x-")) {

				if (linesLog.get(j).contains(pronomPUID)) {

					pronomMeaning = linesLog.get(j);
					break;
				}
			} else {
				if ((linesLog.get(j).contains(pronomPUID)) && (!linesLog.get(j).contains("x-"))) {
					pronomMeaning = linesLog.get(j);
					break;
				}
			}
		}

		if (pronomMeaning.contains(";")) {
			String[] segs = pronomMeaning.split(";");

			if (!(segs[1].equals(null))) {
				pronomMeaning = segs[1];
			}
		}

		return pronomMeaning;
	}
}
