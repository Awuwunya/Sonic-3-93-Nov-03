using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SplitROM {
	class Program {
		private static string[] settings;
		private static byte[] data;

		static void Main(string[] args) {
			foreach(string a in args) {
				if (a.EndsWith(".asm") || a.EndsWith(".txt"))
					settings = File.ReadAllLines(a);
				else data = File.ReadAllBytes(a);
			}

			if(settings == null || data == null) {
				Error("Need a settings file and input binary file!");
			}

			Console.WriteLine("Reading input file...");
			List<OutputAction> files = new List<OutputAction>();
			int start = 0;
			string file = null;

			foreach(string line in settings) {
				if (line.Trim().Length == 0 || line.StartsWith("#")) {
					continue;

				} else if (line.StartsWith("*")) {
					string[] ln = line.Substring(1).Split(',');
					if(ln.Length == 0 || (file != null && file.Length > 0))
						Error("File in incorrect format");

					files.Add(new RunProgram("", ln));

				} else {
					string[] ln = line.Split(' ');

					if (!int.TryParse(ln[0].Trim(), System.Globalization.NumberStyles.HexNumber, CultureInfo.InvariantCulture, out int pos))
						Error("File in incorrect format");

					if (file != null && file.Length > 0)
						files.Add(new OutPutFile(file, start, pos));

					start = pos;
					file = ln.Length <= 0 ? null : line.Substring(ln[0].Length).Trim();
				}
			}

			if(file != null && file.Length > 0)
				Error("File in incorrect format");

			foreach(OutputAction a in files) {
				if (a is OutPutFile f) {
					Directory.CreateDirectory(new FileInfo(f.file).Directory.FullName);
					if (File.Exists(f.file)) File.Delete(f.file);

					if (f.start > f.end)
						Error("File " + f.file + " has a negative size: " + f.start.ToString("X6") + " - " + f.end.ToString("X6"));

					Console.WriteLine("Split " + f.file);
					using (FileStream fs = File.OpenWrite(f.file)) {
						fs.Write(data, f.start, f.end - f.start);
					}
				} else if(a is RunProgram p) {
					Console.WriteLine("Exec " + string.Join(" ", p.args));

					try {
						Process x = new Process();
						x.StartInfo.WorkingDirectory = Directory.GetCurrentDirectory();
						x.StartInfo.FileName = "cmd";
						x.StartInfo.Arguments = "/c cd \""+ Directory.GetCurrentDirectory() + "\" && " + string.Join(" ", p.args).Replace("/", "\\");
						x.StartInfo.RedirectStandardOutput = false;
						x.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
						x.StartInfo.CreateNoWindow = true;
						x.StartInfo.UseShellExecute = true;
						x.Start();
						x.WaitForExit(10000);

					} catch(Exception ex) {
						Error("Exception: " + ex.Message + "\n  for external program " + p.file + "\n  for arguments " + string.Join(",", p.args));
					}
				}
			}
		}

		private static void Error(string v) {
			Console.WriteLine(v);
			Console.ReadKey();
			Environment.Exit(-1);
		}
	}

	public class OutputAction {
		public string file;

		public OutputAction(string file) {
			this.file = file;
		}
	}

	public class OutPutFile : OutputAction {
		public int start, end;

		public OutPutFile(string file, int start, int end) : base(file) {
			this.start = start;
			this.end = end;
		}
	}

	public class RunProgram : OutputAction {
		public string[] args;

		public RunProgram(string file, string[] args) : base(file) {
			this.args = args;
		}
	}
}
