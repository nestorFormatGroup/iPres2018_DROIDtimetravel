package javaWrapperForBatches;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

public class DroidHistoryAnalysis {

	static String SEPARATOR = ";";
	static String allPuids;
	protected static PrintWriter outputCsv;
	protected static String filename;
	protected static String folderWithAllTools;

	public static void main(String args[]) throws Exception, IOException {

		JOptionPane.showMessageDialog(null, "Please choose the folder with files to analyse.", "File Analysation",
				JOptionPane.QUESTION_MESSAGE);
		String folder = chooseFolder();

		allPuids = chooseFile();//choose the filepath where you have saved "all_puids_V90.txt"


		outputCsv = new PrintWriter(new FileWriter(folder + "\\droidhistory.csv"));

		outputCsv.println(
				"Filename" + SEPARATOR + "SignatureFileVersion" + SEPARATOR + "PUID" + SEPARATOR + "V90puidName");
		ArrayList<File> files = utilities.ListsFiles.getPaths(new File(folder), new ArrayList<File>());

		int o = 1; // to avoid that the analyse file is counted as well

		JOptionPane.showMessageDialog(null, ("Files to analyse: " + (files.size() - o)));
	
		int[] arraySigFiles = new int[93];

		for (int i = 0; i < 93; i++) {
			arraySigFiles[i] = i + 1;
		}

		for (int i = 0; i < files.size(); i++) {

			filename = (utilities.fileStringUtilities.getFileNameFromStringWithExtension(files.get(i).toString()));

			if (!filename.equals("droidhistory.csv")) {
				System.out.println("Is examined: " + filename);

				for (int j = 0; j < arraySigFiles.length; j++) {

					if ((j + 1 != 14) && (j + 1 != 15) && (j + 1 != 27) && (j + 1 != 30) && (j + 1 != 53)
							&& (j + 1 != 54) && (j + 1 != 56) && (j + 1 != 57) && (j + 1 != 64) && (j + 1 != 71)
							&& (j + 1 != 76) && (j + 1 != 80) && (j + 1 != 87) && (j + 1 != 89)) {

						outputCsv.print(filename + SEPARATOR);

						String droidOutput;
						
						String whereTheOutputIs = chooseFolder();
						
						String droidFindings = whereTheOutputIs + "log_DROID_" + filename
								+ "Sig" + arraySigFiles[j] + ".txt";

						String fileFullPath = files.get(i).toString();

						//This path has to be changed depending on where your DROID stuff is
						//Sorry for hardcoding :-(
						Runtime.getRuntime()
								.exec("cmd /c  " + "D:\\"
										+ "droid-binary-6.3-bin\\droid -Ns \"C:\\Users\\Friese Yvonne\\.droid6\\signature_files\\DROID_SignatureFile_V"
										+ arraySigFiles[j] + ".xml\" -Nr " + fileFullPath + " > " + droidFindings);

						outputCsv.print("SigV" + arraySigFiles[j] + SEPARATOR);
						System.out.println("currently working on: SigV" + arraySigFiles[j]);

						File filedroidfindings = new File(droidFindings);

						while (!filedroidfindings.exists()) {
							Thread.sleep(2 * 1000);
							System.out.println("Does DROID sleep?");
						}

						BufferedReader fileReader = new BufferedReader(new FileReader(filedroidfindings.getPath())); // droidfindings

						List<String> linesLogdroid = new ArrayList<String>();

						while ((droidOutput = fileReader.readLine()) != null) {
							linesLogdroid.add(droidOutput);
						}

						int lendroid = 5;

						while (!(linesLogdroid.size() > lendroid)) { 
							Thread.sleep(2 * 1000);
							while ((droidOutput = fileReader.readLine()) != null) {
								linesLogdroid.add(droidOutput);
							}
						}


							if ((linesLogdroid.size() > lendroid+1) && (linesLogdroid.get(6).contains(filename))) {
								droidOutput = linesLogdroid.get(6);
								String[] segsdroid = droidOutput.split(",");
								droidOutput = segsdroid[1];
								System.out.println(droidOutput);
								outputCsv.print(droidOutput + SEPARATOR);
								String pronomMeaning = getPronomMeaning(droidOutput);
								outputCsv.print(pronomMeaning);						
							}			
							else {
								droidOutput = "Line missing";
								System.out.println(droidOutput);
								outputCsv.print(droidOutput + SEPARATOR);
								String pronomMeaning = "";
								outputCsv.print(pronomMeaning);	
						}
						fileReader.close();
						outputCsv.print("\n");
					}
				}
			}

		}
		outputCsv.close();

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
	
		static String chooseFolder() throws IOException {
			try {
		JFileChooser j = new JFileChooser();
		j.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
		j.showOpenDialog(j);
		if (j.getSelectedFile() == null) {
			JOptionPane.showMessageDialog(null, "No folder was chosen", "Info Message", JOptionPane.PLAIN_MESSAGE);
			return null;
		} else {
			String folder = j.getSelectedFile().getPath();
			return folder;
		}
	} catch (Exception e) {
		JOptionPane.showMessageDialog(null, "Most likely you tried to choose a folder like \"C:\" but you do not have the rights to read files there." + e, "Info Message", JOptionPane.PLAIN_MESSAGE);
		return null;		
	}
	}
	
	static String chooseFile() throws FileNotFoundException {
		try {
			JFileChooser j = new JFileChooser();
			j.setFileSelectionMode(JFileChooser.FILES_ONLY);
			j.showOpenDialog(j);
			if (j.getSelectedFile() == null) {
				JOptionPane.showMessageDialog(null, "No file was chosen");
			} else {
				String file = j.getSelectedFile().getPath();
				return file;
			}
			return null;
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Most likely you tried to choose a folder like \"C:\" but you do not have the rights to read files there." + e, "Info Message", JOptionPane.PLAIN_MESSAGE);
			return null;
		}
	}
	
}
