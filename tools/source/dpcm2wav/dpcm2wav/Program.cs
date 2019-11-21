using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dpcm2wav {
	class Program {
		private static void Error(string text) {
			Console.WriteLine(text);
			Console.ReadKey();
			Environment.Exit(-1);
		}

		static void Main(string[] args) {
			if(args.Length < 3) {
				Console.WriteLine("Usage: dpcm2wav <rate> <input> <output>");
				Console.WriteLine("<rate>   : Target sample rate for the sample in Hertz.");
				Console.WriteLine("<input>  : Input file in DPCM format.");
				Console.WriteLine("<output> : Output file in WAV format.");
				Error("");
			}

			if (!File.Exists(args[1]))
				Error("Input file does not exist!");

			if(!int.TryParse(args[0], out int rate))
				Error("Could not parse sample rate!");

			byte[] data = File.ReadAllBytes(args[1]);
			byte[] pcm = new byte[data.Length * 2 + 0x2C];

			// generate wav header
			int ppos = 0;

			// ChunkID
			pcm[ppos++] = (byte)'R';
			pcm[ppos++] = (byte)'I';
			pcm[ppos++] = (byte)'F';
			pcm[ppos++] = (byte)'F';

			// ChunkSize
			PutInt(ref pcm, ref ppos, pcm.Length - 8);

			// Format
			pcm[ppos++] = (byte)'W';
			pcm[ppos++] = (byte)'A';
			pcm[ppos++] = (byte)'V';
			pcm[ppos++] = (byte)'E';

			// Subchunk1ID
			pcm[ppos++] = (byte)'f';
			pcm[ppos++] = (byte)'m';
			pcm[ppos++] = (byte)'t';
			pcm[ppos++] = (byte)' ';

			// Subchunk1Size
			PutInt(ref pcm, ref ppos, 0x10);

			// AudioFormat
			pcm[ppos++] = 1;
			pcm[ppos++] = 0;

			// NumChannels
			pcm[ppos++] = 1;
			pcm[ppos++] = 0;

			// SampleRate
			PutInt(ref pcm, ref ppos, rate);

			// ByteRate
			PutInt(ref pcm, ref ppos, rate * 1 * 1);

			// BlockAlign
			pcm[ppos++] = 1;
			pcm[ppos++] = 0;

			// BitsPerSample
			pcm[ppos++] = 8;
			pcm[ppos++] = 0;

			// Subchunk2ID
			pcm[ppos++] = (byte)'d';
			pcm[ppos++] = (byte)'a';
			pcm[ppos++] = (byte)'t';
			pcm[ppos++] = (byte)'a';

			// Subchunk2Size
			PutInt(ref pcm, ref ppos, pcm.Length - 0x2C);

			// main byte loop
			byte acc = 0x80;

			for (int i = 0;i < data.Length;i++) {
				acc += lut[data[i] >> 4];
				pcm[ppos++] = acc;
				acc += lut[data[i] & 0xF];
				pcm[ppos++] = acc;
			}

			File.WriteAllBytes(args[2], pcm);
		}

		private static void PutInt(ref byte[] buf, ref int pos, int val) {
			buf[pos++] = (byte)val;
			buf[pos++] = (byte)(val >> 8);
			buf[pos++] = (byte)(val >> 16);
			buf[pos++] = (byte)(val >> 24);
		}

		static readonly byte[] lut = { 0, 1, 2, 4, 8, 0x10, 0x20, 0x40, 0x80, 0xFF, 0xFE, 0xFC, 0xF8, 0xF0, 0xE0, 0xC0 };
	}
}
