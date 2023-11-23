#if !NETSTANDARD2_0
using Microsoft.VisualBasic;
#endif
using System;
using System.Text;
using System.Linq;

namespace UpgradeHelpers.Helpers
{

	/// <summary>
	/// The StringsHelper is an utility that provides funcationality related to string operations.
	/// </summary>
	public class StringsHelper
	{

		/// <summary>
		/// VBA Format function truncates strings to 255 characters. For information please refer to the following link:
		/// https://docs.microsoft.com/en-us/office/vba/language/reference/user-interface-help/format-function-visual-basic-for-applications
		/// PS, the doc actually says the limit is 257 but in practice is actually 255
		/// </summary>
		private const int VBAStringsFormatLimit = 255;
		/// <summary>
		/// VbStrConv Enum used for the runtime implementation of StringsHelper.StrConv.
		/// </summary>
		[Flags]
		public enum VbStrConvEnum
		{
			/// <summary>
			/// From Unicode
			/// </summary>
			VbFromUnicode = 128,
			/// <summary>
			/// Hiragana
			/// </summary>
			VbHiragana = 32,
			/// <summary>
			/// Katakana
			/// </summary>
			VbKatakana = 16,
			/// <summary>
			/// Lower case
			/// </summary>
			VbLowerCase = 2,
			/// <summary>
			/// Narrow
			/// </summary>
			VbNarrow = 8,
			/// <summary>
			/// ProperCase
			/// </summary>
			VbProperCase = 3,
			/// <summary>
			/// Unicode
			/// </summary>
			VbUnicode = 64,
			/// <summary>
			/// Upper case
			/// </summary>
			VbUpperCase = 1,
			/// <summary>
			/// Wide char
			/// </summary>
			VbWide = 4
		}
		/*
                /// <summary>Indicates the first day of the week to use when calling date-related functions.</summary>
                public enum FirstDayOfWeek
                {
                    /// <summary>The first day of the week as specified in your system settings This member is equivalent to the Visual Basic constant vbUseSystemDayOfWeek.</summary>
                    System,
                    /// <summary>Sunday (default) This member is equivalent to the Visual Basic constant vbSunday.</summary>
                    Sunday,
                    /// <summary>Monday This member is equivalent to the Visual Basic constant vbMonday.</summary>
                    Monday,
                    /// <summary>Tuesday This member is equivalent to the Visual Basic constant vbTuesday.</summary>
                    Tuesday,
                    /// <summary>Wednesday This member is equivalent to the Visual Basic constant vbWednesday.</summary>
                    Wednesday,
                    /// <summary>Thursday This member is equivalent to the Visual Basic constant vbThursday.</summary>
                    Thursday,
                    /// <summary>Friday This member is equivalent to the Visual Basic constant vbFriday.</summary>
                    Friday,
                    /// <summary>Saturday This member is equivalent to the Visual Basic constant vbSaturday.</summary>
                    Saturday
                }

                /// <summary>Indicates the first week of the year to use when calling date-related functions.</summary>
                public enum FirstWeekOfYear
                {
                    /// <summary>The weekspecified in your system settings as the first week of the year. This member is equivalent to the Visual Basic constant vbUseSystem.</summary>
                    System,
                    /// <summary>The week in which January 1 occurs (default). This member is equivalent to the Visual Basic constant vbFirstJan1.</summary>
                    Jan1,
                    /// <summary>The first week that has at least four days in the new year. This member is equivalent to the Visual Basic constant vbFirstFourDays.</summary>
                    FirstFourDays,
                    /// <summary>The first full week of the year. This member is equivalent to the Visual Basic constant vbFirstFullWeek.</summary>
                    FirstFullWeek
                }
        */
#if !PORTABLE
		/// <summary>
		/// Runtime implementation for VBA.Strings.StrConv
		/// note:
		///     If Conversion == vbUnicode then the string returned will be encoded using
		///     System.Text.Encoding.Default, otherwise the encoding System.Text.Encoding.Unicode
		///     will be used.
		/// </summary>
		/// <param name="str">Byte array representing an string.</param>
		/// <param name="conversion">The type of the conversion to execute.</param>
		/// <returns>The converted string.</returns>
		public static string StrConv(string str, VbStrConvEnum conversion)
		{
			//0 is to indicate to use the default ANSI encode of the machine
			return StrConv(str, conversion, 0, true);
		}

		public static string StrConv(string str, VbStrConvEnum conversion, int localeId)
		{
			//0 is to indicate to use the default ANSI encode of the machine
			return StrConv(str, conversion, localeId, true);
		}

		public static string StrConv(string str, VbStrConvEnum conversion, bool unicode)
		{
			//0 is to indicate to use the default ANSI encode of the machine
			return StrConv(str, conversion, 0, unicode);
		}

		/// <summary>
		/// Runtime implementation for VBA.Strings.StrConv
		/// note:
		///     If Conversion == vbUnicode then the string returned will be encoded using
		///     System.Text.Encoding.Default, otherwise the encoding System.Text.Encoding.Unicode
		///     will be used.
		/// </summary>
		/// <param name="str">Byte array representing an string.</param>
		/// <param name="conversion">The type of the conversion to execute.</param>
		/// <param name="localeId">The LocaleID to use in the conversion.</param>
		/// <returns>The converted string.</returns>
		public static string StrConv(string str, VbStrConvEnum conversion, int localeId, bool unicode)
		{

			string res;
			IntPtr strPtr;

			switch (conversion)
			{
				case VbStrConvEnum.VbFromUnicode:
					if (unicode)
					{
						byte[] bytesDefEnc = Encoding.Default.GetBytes(str);

						if (bytesDefEnc.Length % 2 == 1)
						{
							byte[] newByteArray = new byte[bytesDefEnc.Length + 1];
							bytesDefEnc.CopyTo(newByteArray, 0);
							newByteArray[newByteArray.Length - 1] = 0;
							res = Encoding.Unicode.GetString(newByteArray);
						}
						else
						{
							res = Encoding.Unicode.GetString(bytesDefEnc);
						}
						break;
					}
					else
					{
						strPtr = System.Runtime.InteropServices.Marshal.StringToHGlobalAnsi(str);
						res = System.Runtime.InteropServices.Marshal.PtrToStringUni(strPtr);
						System.Runtime.InteropServices.Marshal.FreeHGlobal(strPtr);
						break;
					}

				case VbStrConvEnum.VbUnicode:
					if (unicode)
					{
						res = Encoding.Default.GetString(Encoding.Unicode.GetBytes(str));
						break;
					}
					else
					{
						strPtr = System.Runtime.InteropServices.Marshal.StringToHGlobalUni(str);
						res = System.Runtime.InteropServices.Marshal.PtrToStringAnsi(strPtr, str.Length * 2);
						System.Runtime.InteropServices.Marshal.FreeHGlobal(strPtr);
						break;
					}
				default:
#if NETSTANDARD2_0
                    throw new NotSupportedException("The method Microsoft.VisualBasic.Strings.StrConv is not part of the .Net Standard");
#else
					res = Microsoft.VisualBasic.Strings.StrConv(str, (Microsoft.VisualBasic.VbStrConv)((int)conversion), localeId);
					break;
#endif
			}

			return res;
		}

#endif

		/// <summary>
		/// Converts a byte array to a string.
		/// </summary>
		/// <param name="array">Byte array to be converted.</param>
		/// <returns>The string converted in Unicode encoding.</returns>
		public static string ByteArrayToString(byte[] array)
		{
			if (array != null)
			{
				byte[] sArray;
				if (array.Length % 2 == 0)
				{
					sArray = array;
				}
				else
				{
					sArray = new byte[array.Length + 1];
					Array.Copy(array, sArray, array.Length);
				}

				return Encoding.Unicode.GetString(sArray, 0, sArray.Length);
			}
			return string.Empty;
		}

		/// <summary>
		/// Obtains exactly the indicated amount of characters from the start of the string
		/// (and add spaces to the right if needed to complete the amount of characters).
		/// </summary>
		/// <param name="str">String from which characters are to be extracted.</param>
		/// <param name="nChars">The amount of characters to get.</param>
		/// <returns>A string of <i>nChars</i> characters of length from <i>str</i>.</returns>
		public static string GetFixedLengthString(string str, int nChars)
		{
			string result = Left(str, nChars);

			if (result != null && result.Length < nChars)
			{
				result = result.PadRight(nChars);
			}

			return result;
		}

		/// <summary>
		/// Obtains the indicated amount of characters from the start of the string.
		/// </summary>
		/// <param name="str">String from which characters are to be extracted.</param>
		/// <param name="nChars">The amount of characters to get.</param>
		/// <returns>A string with the first <i>nChars</i> characters from <i>str</i>.</returns>
		public static string Left(string str, int nChars)
		{
			if (str == null)
			{
				return null;
			}

			return str.Substring(0, Math.Min(nChars, str.Length));
		}

		/// <summary>
		/// Obtains the indicated amount of bytes from the start of the string intepreted as Encoding.Unicode (UTF-16).
		/// </summary>
		/// <param name="str">String from which bytes are to be extracted.</param>
		/// <param name="nBytes">The amount of bytes to get.</param>
		/// <returns>A string with the first <i>nBytes</i> bytes from <i>str</i>.</returns>
		public static string LeftB(string str, int nBytes)
		{
			return LeftB(str, nBytes, Encoding.Unicode);
		}

		/// <summary>
		/// Gets the first nBytes of str interpreted as the respective encoding.
		/// </summary>
		/// <param name="str">The string to the bytes from</param>
		/// <param name="nBytes">The number of bytes to get</param>
		/// <param name="encoding">The encoding that the string will be interpreted as</param>
		/// <returns></returns>
		public static string LeftB(string str, int nBytes, Encoding encoding)
		{
			if (str == null)
			{
				return null;
			}

			if (nBytes < 0)
			{
				throw new InvalidOperationException("The number of bytes cannot be a negative value");
			}

			byte[] strBytes = encoding.GetBytes(str);
			nBytes = Math.Min(nBytes, strBytes.Length); // Avoiding buffer over-runs
			byte[] segmentBytes = new byte[nBytes];

			for (int i = 0; i < nBytes; i++)
			{
				segmentBytes[i] = strBytes[i];
			}

			segmentBytes = Encoding.Convert(encoding, Encoding.Unicode, segmentBytes);

			return Encoding.Unicode.GetString(segmentBytes);
		}

		/// <summary>
		/// Obtains the indicated amount of characters from the end of the string.
		/// </summary>
		/// <param name="str">String from which characters are to be extracted.</param>
		/// <param name="nChars">The amount of characters to get.</param>
		/// <returns>A string with the last <i>nChars</i> characters from <i>str</i>.</returns>
		public static string Right(string str, int nChars)
		{
			if (str == null)
			{
				return null;
			}

			return str.Substring(Math.Max(str.Length - nChars, 0));
		}

		/// <summary>
		/// Obtains the indicated amount of bytes from the end of the string interpreted as Unicode (UTF-16)
		/// </summary>
		/// <param name="str">String from which bytes are to be extracted.</param>
		/// <param name="nChars">The amount of bytes to get.</param>
		/// <returns>A string with the last <i>bytes</i> bytes from <i>str</i> intepreted as the Unicode (UTF-16).</returns>
		public static string RightB(string str, int nBytes)
		{
			return RightB(str, nBytes, Encoding.Unicode);
		}

		/// <summary>
		/// Obtains the indicated amount of bytes from the end of the string interpreted as the respective encoding.
		/// </summary>
		/// <param name="str">String from which bytes are to be extracted.</param>
		/// <param name="nChars">The amount of bytes to get.</param>
		/// <param name="encoding">The encoding to interpret the string.</param>
		/// <returns>A string with the last <i>bytes</i> bytes from <i>str</i> intepreted as the given encoding.</returns>
		public static string RightB(string str, int nBytes, Encoding encoding)
		{
			if (str == null)
			{
				return null;
			}

			if (nBytes < 0)
			{
				throw new InvalidOperationException("The number of bytes cannot be a negative value");
			}

			byte[] strBytes = encoding.GetBytes(str);
			nBytes = Math.Min(nBytes, strBytes.Length); // Avoiding buffer over-runs
			byte[] segmentBytes = new byte[nBytes];

			for (int i = 0, j = strBytes.Length - nBytes; i < nBytes; i++, j++)
			{
				segmentBytes[i] = strBytes[j];
			}

			segmentBytes = Encoding.Convert(encoding, Encoding.Unicode, segmentBytes);

			return Encoding.Unicode.GetString(segmentBytes);
		}

		/// <summary>
		/// Uses the library Math.Min avoiding a negative result.
		/// </summary>
		/// <param name="Value1"></param>
		/// <param name="Value2"></param>
		/// <returns></returns>
		private static int MathMin(int Value1, int Value2)
		{
			var min = Math.Min(Value1, Value2);
			return min < 0 ? 0 : min;
		}

		/// <summary>
		/// Function that simulates the behavior of the VB6 Mid function.
		/// </summary>
		/// <param name="text">Test to apply the Mid</param>
		/// <param name="start">Position where it starts (1 Based)</param>
		/// <param name="length">Amount of characters that will return</param>
		/// <returns>The sub string requested</returns>
		public static string Mid(string text, int start, int length)
		{
			string returnString = "";
			if (text == null)
			{
				return null;
			}

			if (start - 1 < 0 || start > text.Length)
			{
				return returnString;
			}

			if (length < 0)
			{
				throw new IndexOutOfRangeException("Length cannot be negative.");
			}

			if (!string.IsNullOrEmpty(text))
			{
				start = MathMin(text.Length, start - 1);
				length = MathMin(text.Length, length);
				if (length + start > text.Length - 1)
				{
					returnString = text.Substring(start);
				}
				else
				{
					returnString = text.Substring(start, length);
				}
			}
			return returnString;
		}

		/// <summary>
		/// Function that simulates the behavior of the VB6 Mid function.
		/// </summary>
		/// <param name="text">Test to apply the Mid</param>
		/// <param name="start">Position where it starts (1 Based)</param>
		/// <returns>The sub string requested</returns>
		public static string Mid(string text, int start)
		{
			if (text != null)
			{
				return Mid(text, start, text.Length - 1);
			}
			return null;
		}

		/// <summary>
		/// Function that simulates the behavior of the VB6 Mid function receiving an object
		/// </summary>
		/// <param name="text">Test to apply the Mid</param>
		/// <param name="start">Position where it starts (1 Based)</param>
		/// <param name="length">Amount of characters that will return</param>
		/// <returns>The sub string requested</returns>
		public static string Mid(object text, int start, int length)
		{
			if (text != null)
			{
				return Mid(Convert.ToString(text), start, length);
			}
			return null;
		}

		/// <summary>
		/// Function that simulates the behavior of the VB6 Mid function receiving an object
		/// </summary>
		/// <param name="text">Test to apply the Mid</param>
		/// <param name="start">Position where it starts (1 Based)</param>
		/// <returns>The sub string requested</returns>
		public static string Mid(object text, int start)
		{
			if (text != null)
			{
				return Mid(Convert.ToString(text), start, Convert.ToString(text).Length - 1);
			}
			return null;
		}

		/// <summary>
		/// Search and compare the strings using Linq
		/// </summary>
		/// <param name="value">String where the value will be searched.</param>
		/// <param name="seek">Value to look for in the String.</param>
		/// <returns>Returns the index of the first matching pattern. 0 means not found.</returns>
		private static int PatternAt(int start, byte[] source, byte[] pattern)
		{
			for (int i = start; i < source.Length; i++)
			{
				if (source.Skip(i).Take(pattern.Length).SequenceEqual(pattern))
				{
					return i + 1;
				}
			}
			return 0;
		}
		/// <summary>
		/// Gets the byte position of the first occurrence of one string within another
		/// </summary>
		/// <param name="start">Position where the search starts.</param>
		/// <param name="value">String where the value will be searched.</param>
		/// <param name="seek">Value to look for in the String.</param>
		/// <returns>Returns an integer with the position where the first occurrence was found in a byte array. 0 means not found. </returns>
		public static int InStrB(int start, string value, string seek, Encoding encoding)
		{
			int result = 0;
			if (value == null || seek == null)
			{
				return 0;
			}
			try
			{
				result = PatternAt(start, encoding.GetBytes(value), encoding.GetBytes(seek));
			}
			catch
			{
				result = 0;
			}
			return result;
		}

		/// <summary>
		/// Calls InStrB with default encoding
		/// </summary>
		/// <param name="start">Position where the search starts.</param>
		/// <param name="value">String where the value will be searched.</param>
		/// <param name="seek">Value to look for in the String.</param>
		/// <returns>Returns an integer with the position where the first occurrence was found in a byte array. 0 means not found. </returns>
		public static int InStrB(int start, string value, string seek)
		{
			return InStrB(start, value, seek, Encoding.Unicode);
		}

		/// <summary>
		/// Calls InStrB with default start position
		/// </summary>
		/// <param name="start">Position where the search starts.</param>
		/// <param name="value">String where the value will be searched.</param>
		/// <param name="seek">Value to look for in the String.</param>
		/// <returns>Returns an integer with the position where the first occurrence was found in a byte array. 0 means not found. </returns>
		public static int InStrB(string value, string seek)
		{
			return InStrB(0, value, seek);
		}

		/// <summary>
		/// Calls AscB with the default encoding
		/// </summary>
		/// <param name="input">String that contains the data to obtain the byte.</param>
		/// <returns>Returns the value of the first byte in a string</returns>
		public static byte AscB(string input)
		{
			return AscB(input, Encoding.Unicode);
		}

		/// <summary>
		/// Gets the character code for the first character
		/// </summary>
		/// <param name="input">String that contains the data to obtain the byte.</param>
		/// <returns>Returns the value of the first byte in a string</returns>
		public static byte AscB(string input, Encoding encoding)
		{
			return encoding.GetBytes(input)[0];
		}

		/// <summary>
		/// Calls the main MidB with the default parameters (all remaining bytes and Encoding.Unicode)
		/// </summary>
		/// <param name="str">The string to get bytes from</param>
		/// <param name="start">The start index to get bytes</param>
		/// <returns>A string with the first <i>nChars</i> bytes from the <i>str</i> starting from the specified position.</returns>
		public static string MidB(string str, int start)
		{
			return MidB(str, start, Encoding.Unicode.GetByteCount(str) - start, Encoding.Unicode);
		}

		/// <summary>
		/// Calls the main MidB with the default Encoding (Unicode)
		/// </summary>
		/// <param name="str">The string to get bytes from</param>
		/// <param name="start">The start index to get bytes</param>
		/// <param name="nBytes">The number of bytes</param>
		/// <returns>A string with the first <i>nChars</i> bytes from the <i>str</i> starting from the specified position.</returns>
		public static string MidB(string str, int start, int nBytes)
		{
			return MidB(str, start, nBytes, Encoding.Unicode);
		}

		/// <summary>
		/// /// Calls the main MidB with the default length (the remaining bytes from the start point)
		/// </summary>
		/// <param name="str">The string to get bytes from</param>
		/// <param name="start">The start index to get bytes</param>
		/// <param name="encoding">The encoding to interpret the string</param>
		/// <returns>A string with the first <i>nChars</i> bytes from the <i>str</i> starting from the specified position.</returns>
		public static string MidB(string str, int start, Encoding encoding)
		{
			return MidB(str, start, encoding.GetByteCount(str) - start, encoding);
		}

		/// <summary>nBytes
		/// Obtains the indicated amount of bytes starting from a specified point in the string interpreted as the given encoding <i>str</i>.
		/// </summary>
		/// <param name="str">String from which bytes are to be extracted.</param>
		/// <param name="start">The starting point.</param>
		/// <param name="nBytes">The amount of bytes to get.</param>
		/// <returns>A string with the first <i>nChars</i> bytes from the <i>str</i> starting from the specified position.</returns>
		public static string MidB(string str, int start, int nBytes, Encoding encoding)
		{
			if (str == null)
			{
				return null;
			}

			if (start < 0)
			{
				throw new InvalidOperationException("The start parameter cannot be a negative value");
			}

			byte[] strBytes = encoding.GetBytes(str);
			nBytes = Math.Min(nBytes, strBytes.Length - Math.Min(strBytes.Length, start)); // Avoiding buffer over-runs
			byte[] segmentBytes = new byte[nBytes];

			for (int i = start, j = 0; j < nBytes; i++, j++)
			{
				segmentBytes[j] = strBytes[i];
			}

			segmentBytes = Encoding.Convert(encoding, Encoding.Unicode, segmentBytes);

			return Encoding.Unicode.GetString(segmentBytes);
		}

		/// <summary>
		/// Replaces a portion of a string with other string. Provides the same functionality than
		/// MidAssignment for Visual Basic 6.
		/// </summary>
		/// <param name="str">The string to be changed.</param>
		/// <param name="start">The index into the string where to start the changing.</param>
		/// <param name="length">The length of the portion of string to change.</param>
		/// <param name="val">The new string to change into the other one.</param>
		/// <returns>The changed string with the new portion.</returns>
		public static string MidAssignment(string str, int start, int length, string val)
		{
			int minTmp = Math.Min(length, Math.Min(val.Length, str.Length - (start - 1)));

			return str.Substring(0, start - 1) + val.Substring(0, minTmp) + str.Substring(start - 1 + minTmp);
		}

		/// <summary>
		/// Replaces a portion of a string with other string. Provides the same functionality than
		/// MidAssignment for Visual Basic 6.
		/// </summary>
		/// <param name="str">The string to be changed.</param>
		/// <param name="start">The index into the string where to start the replace.</param>
		/// <param name="val">The new string to change into the other one.</param>
		/// <returns>The changed string with the new portion.</returns>
		public static string MidAssignment(string str, int start, string val)
		{
			return MidAssignment(str, start, int.MaxValue, val);
		}

		/// <summary>
		/// Matches a string value with a regular expression pattern.
		/// </summary>
		/// <param name="value">The string to be matched.</param>
		/// <param name="pattern">The regular expression used to match the string.</param>
		/// <returns>True if the pattern matches into the string.</returns>
		public static bool Like(string value, string pattern)
		{
			System.Diagnostics.Debug.WriteLine("WARNING: Using VB6 'Like' operator pattern affects performace. Pattern used " + pattern);

			// convert VB6 regular expressions to C# regular expressions
			string transformedPattern = string.Empty;
			string[] splittedPattern = System.Text.RegularExpressions.Regex.Split(pattern, @"(\[[^]]*\])");
			for (int i = 0; i < splittedPattern.Length; i++)
			{
				if (i % 2 == 0)
				{
					// replace '#' , '?' and '*' that are outside the square brackets
					transformedPattern += splittedPattern[i].Replace("#", "\\d").Replace('?', '.').Replace("*", ".*");
				}
				else
				{
					// leave intact the insides of the square brackets
					transformedPattern += splittedPattern[i];
				}
			}
			transformedPattern = "^" + transformedPattern + "$";

			return System.Text.RegularExpressions.Regex.IsMatch(value, transformedPattern, System.Text.RegularExpressions.RegexOptions.Singleline);
		}

#if NETSTANDARD2_0
        private static String FormatString(object _toFormat, string mask, object dayOfWeek, object weekOfYear)
#else
		private static String FormatString(object _toFormat, string mask, FirstDayOfWeek dayOfWeek, FirstWeekOfYear weekOfYear)
#endif
		{

			string toFormat = _toFormat.ToString();
			int atCount = mask.Count(x => { return x == '@'; });
			if (atCount >= toFormat.Length)
			{
				if (mask.StartsWith("!"))
				{
					toFormat = toFormat.PadRight(atCount + 1);
				}
			}

			toFormat = toFormat.PadLeft(atCount);

			char[] source = toFormat.ToCharArray();

			int sourceIndex = 0;
			char[] output = mask.ToCharArray();
			for (int outputIndex = 0; outputIndex < output.Length; outputIndex++)
			{
				if (output[outputIndex] == '@' || output[outputIndex] == '!')
				{
					output[outputIndex] = source[sourceIndex];
					sourceIndex++;
				}
			}

			String retValue = new string(output);

			if (sourceIndex < source.Length)
			{
				retValue += toFormat.Substring(sourceIndex);
			}

			return retValue;

		}
#if NETSTANDARD2_0
        private static String FormatDate(object _toFormat, string mask, object dayOfWeek, object weekOfYear)
#else
		private static String FormatDate(object _toFormat, string mask, FirstDayOfWeek dayOfWeek, FirstWeekOfYear weekOfYear)
#endif
		{
			DateTime input;
			if (_toFormat is DateTime)
			{
				input = (DateTime)_toFormat;
			}
			else if (_toFormat is string)
			{
				string str = (string)_toFormat;
#if (NET35)
				if (string.IsNullOrEmpty(str) || str.Trim().Length == 0)
#else
				if (string.IsNullOrWhiteSpace(str))
#endif
				{
					return String.Empty;
				}
				if (!DateTime.TryParse(str, out input))
				{
					return (String)_toFormat;
				}
			}
			else
			{
				input = DateTime.FromOADate(Convert.ToDouble(_toFormat));
			}

			if (string.Equals(mask, "general date", StringComparison.OrdinalIgnoreCase))
			{
				if (input.Hour == 0 && input.Minute == 0 && input.Second == 0 && input.Millisecond == 0)
				{
					mask = "d";
				}
				else
				{
					mask = "G";
				}
			}
			else
			{
				string lowerMask = mask.ToLower();
				char[] maskArray = (lowerMask + "\0\0\0\0\0").ToCharArray();
				StringBuilder maskBuilder = new StringBuilder();
				char lastChar = maskArray[0];
				char lastPattern = '\0';
				int count = 1;
				bool containsAMPM = (lowerMask.Contains("am/pm") || lowerMask.Contains("ampm") || lowerMask.Contains("a/p"));
				for (int maskIndex = 1; maskIndex < maskArray.Length; maskIndex++)
				{
					while (maskArray[maskIndex] == lastChar)
					{
						count++;
						maskIndex++;
					}
					bool wasPattern = true;
					switch (lastChar)
					{
						case 'a':
							if ((maskArray[maskIndex] == 'm' && maskArray[maskIndex + 1] == '/' && maskArray[maskIndex + 2] == 'p' && maskArray[maskIndex + 3] == 'm') ||
								(maskArray[maskIndex] == 'm' && maskArray[maskIndex + 1] == 'p' && maskArray[maskIndex + 2] == 'm'))
							{
								maskBuilder.Append(lastChar, count - 1);
								maskBuilder.Append("tt");
								maskIndex += (maskArray[maskIndex + 1] == '/') ? 4 : 3;
							}
							else if (maskArray[maskIndex] == '/' && maskArray[maskIndex + 1] == 'p')
							{
								maskBuilder.Append(lastChar, count - 1);
								maskBuilder.Append("t");
								maskIndex += 2;
							}
							else
							{
								goto default;
							}

							break;
						case 'h':
							if (containsAMPM)
							{
								maskBuilder.Append('h', count);
							}
							else
							{
								maskBuilder.Append('H', count);
							}
							break;
						case 'd':
						case 'y':
						case 's':
							maskBuilder.Append(lastChar, count);
							break;
						case 'm':
							if (lastPattern == 'h')
							{
								maskBuilder.Append('m', count);
							}
							else
							{
								maskBuilder.Append('M', count);
							}

							break;
						case 'n':
							maskBuilder.Append('m', count);
							break;
						case '\\':
							int times = count / 2;
							int remainder = count % 2;
							maskBuilder.Append('\\', times * 2);
							if (remainder == 1)
							{
								maskBuilder.Append(maskArray[maskIndex]);
								maskIndex++;
							}
							break;
						default:
							for (int c = 0; c < count; c++)
							{
								maskBuilder.Append('\\');
								maskBuilder.Append(lastChar);
							}
							wasPattern = false;
							break;
					}
					if (wasPattern)
					{
						lastPattern = lastChar;
					}

					lastChar = maskArray[maskIndex];
					if (lastChar == '\0')
					{
						break;
					}

					count = 1;
				}

				mask = maskBuilder.ToString();
			}

			return input.ToString(mask);
		}

#if NETSTANDARD2_0
        private static String FormatNumber(object _toFormat, string mask, object dayOfWeek, object weekOfYear)
#else
		private static String FormatNumber(object _toFormat, string mask, FirstDayOfWeek dayOfWeek, FirstWeekOfYear weekOfYear)
#endif
		{
			int intValue = 0;
			decimal decimalValue = 0;
			bool isInteger = false;
			if (_toFormat is DateTime)
			{
				DateTime dateTime = (DateTime)_toFormat;
				decimalValue = new decimal(dateTime.ToOADate());
			}
			else if (_toFormat is Int32)
			{
				int toFormatAsInt = (Int32)_toFormat;
				intValue = toFormatAsInt;
				isInteger = true;
			}
			else
			{
				var toFormatAsString = _toFormat.ToString();
#if (NET35)
				if (string.IsNullOrEmpty(toFormatAsString) || toFormatAsString.Trim().Length == 0)
#else
				if (string.IsNullOrWhiteSpace(toFormatAsString))
#endif
				{
					return String.Empty;
				}
				if (Int32.TryParse(toFormatAsString, out intValue))
				{
					isInteger = true;
				}
				else
				{
					if (!Decimal.TryParse(toFormatAsString, out decimalValue))
					{
						return toFormatAsString;
					}
				}
			}
			if (mask.Equals("P2", StringComparison.Ordinal))
			{
				if (isInteger)
				{
					decimalValue = intValue;
				}
				return (decimalValue * 100).ToString("F") + "%";
			}
			return isInteger ? intValue.ToString(mask, System.Globalization.NumberFormatInfo.CurrentInfo) : decimalValue.ToString(mask, System.Globalization.NumberFormatInfo.CurrentInfo);
		}

		/// <summary>
		/// Returns the String toFormat formatted with the given mask.
		/// </summary>
		/// <param name="_toFormat">The String object to format.</param>
		/// <param name="_mask">The format to apply.</param>
		/// <param name="dayOfWeek">A value chosen from the FirstDayOfWeek enumeration that specifies the first day of the week.</param>
		/// <param name="weekOfYear">A value chosen from the FirstWeekOfYear enumeration that specifies the first week of the year.</param>
		/// <returns>Empty String if toFormat is null or empty, othewise the formatted string.</returns>
#if NETSTANDARD2_0
        public static String Format(object _toFormat, object _mask, object dayOfWeek, object weekOfYear)
#else
		public static String Format(object _toFormat, object _mask, FirstDayOfWeek dayOfWeek, FirstWeekOfYear weekOfYear)
#endif
		{
			string result = null;

			if (_toFormat == null)
			{
				return String.Empty;
			}
			string mask = _mask != null ? _mask.ToString() : String.Empty;

			if (string.Equals(mask, ">", StringComparison.Ordinal))
			{
				var str = _toFormat.ToString();
#if (NET35)
				result = (string.IsNullOrEmpty(str) || str.Trim().Length == 0) ? String.Empty : str.ToUpper();
#else
				result = string.IsNullOrWhiteSpace(str) ? String.Empty : str.ToUpper();
#endif

			}
			else if (string.Equals(mask, "<", StringComparison.Ordinal))
			{
				var str = _toFormat.ToString();
#if (NET35)
				result = (string.IsNullOrEmpty(str) || str.Trim().Length == 0) ? String.Empty : str.ToLower();
#else
				result = string.IsNullOrWhiteSpace(str) ? String.Empty : str.ToLower();
#endif

			}
			else if (string.Equals(mask, "General Date", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatDate(_toFormat, mask, dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Medium Date", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatDate(_toFormat, "dd-mmm-yy", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Medium Time", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatDate(_toFormat, "hh:mm AM/PM", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Short Time", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatDate(_toFormat, "HH:mm", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "General Number", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "G", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Fixed", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "F", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Standard", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "N", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Currency", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "C", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Percent", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "P2", dayOfWeek, weekOfYear);
			}
			else if (string.Equals(mask, "Scientific", StringComparison.OrdinalIgnoreCase))
			{
				result = FormatNumber(_toFormat, "0.00E+00", dayOfWeek, weekOfYear);
			}
			else
			{
				int maskSize = mask.Length;
				for (int i = 0; i < maskSize; i++)
				{
					var c = mask[i];
					switch (c)
					{
						case '#':
						case '0':
							result = FormatNumber(_toFormat, mask, dayOfWeek, weekOfYear);
							goto truncateFormat;
						case '@':
							result = FormatString(_toFormat, mask, dayOfWeek, weekOfYear);
							goto truncateFormat;
						case 'Y':
						case 'D':
						case 'M':
						case 'y':
						case 'd':
						case 'm':
						case 'H':
						case 'h':
						case 'N':
						case 'n':
							result = FormatDate(_toFormat, mask, dayOfWeek, weekOfYear);
							goto truncateFormat;
					}
				}
			}

#if WPF || WINFORMS
            //UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("VB.Strings.Format");
#endif
			if (result == null)
			{
				result = _toFormat.ToString();
			}

		// truncates the value to 255, as vb6 does
		truncateFormat:
			return Left(result, VBAStringsFormatLimit);
		}

		/// <summary>
		/// Returns the String toFormat formatted with the given mask.
		/// </summary>
		/// <param name="toFormat">The String object to format.</param>
		/// <param name="mask">The format to apply.</param>
		/// <param name="dayOfWeek">A value chosen from the FirstDayOfWeek enumeration that specifies the first day of the week.</param>
		/// <returns>Empty String if toFormat is null or empty, othewise the formatted string.</returns>
#if NETSTANDARD2_0
        public static String Format(object toFormat, object mask, object dayOfWeek)
        {
            return Format(toFormat, mask, null, null);
        }
#else
		public static String Format(object toFormat, object mask, FirstDayOfWeek dayOfWeek)
		{
			return Format(toFormat, mask, dayOfWeek, FirstWeekOfYear.Jan1);
		}
#endif

		/// <summary>
		/// Returns the String toFormat formatted with the given mask.
		/// </summary>
		/// <param name="toFormat">The String object to format.</param>
		/// <param name="mask">The format to apply.</param>
		/// <param name="weekOfYear">A value chosen from the FirstWeekOfYear enumeration that specifies the first week of the year.</param>
		/// <returns>Empty String if toFormat is null or empty, othewise the formatted string.</returns>
#if !NETSTANDARD2_0
		public static String Format(object toFormat, object mask, FirstWeekOfYear weekOfYear)
		{
			return Format(toFormat, mask, FirstDayOfWeek.Sunday, weekOfYear);
		}
#endif


		/// <summary>
		/// Returns the String toFormat formatted with the given mask.
		/// </summary>
		/// <param name="toFormat">The String object to format.</param>
		/// <param name="mask">The format to apply.</param>
		/// <returns>Empty String if toFormat is null or empty, otherwise the formatted string.</returns>
#if NETSTANDARD2_0
        public static String Format(object toFormat, object mask)
        {
            return Format(toFormat, mask, null, null);
        }
#else

		public static String Format(object toFormat, object mask)
		{
			return Format(toFormat, mask, FirstDayOfWeek.Sunday, FirstWeekOfYear.Jan1);
		}
#endif


		/// <summary>
		/// Returns the String toFormat formatted with an empty mask.
		/// </summary>
		/// <param name="toFormat">The String object to format.</param>
		/// <returns>Empty String if toFormat is null or empty, othewise the formatted string.</returns>
#if NETSTANDARD2_0
        public static String Format(object toFormat)
        {
            return Format(toFormat, String.Empty, null);
        }
#else
		public static String Format(object toFormat)
		{
			return Format(toFormat, String.Empty, FirstDayOfWeek.Sunday, FirstWeekOfYear.Jan1);
		}
#endif

		/// <summary>
		/// Gets a double value represented by the given String value. If value contains an
		/// invalid number then a Double.NaN is returned.
		/// This method is used to do safe castings between strings and numeric values.
		/// It is required for comparisons between strings and primitive types which were allowed by VB6 but are invalid in .NET.
		/// </summary>
		/// <param name="value">String containing the double value to convert.</param>
		/// <returns>A double value.</returns>
		public static double ToDoubleSafe(String value)
		{
			double dValue;
			return Double.TryParse(value, System.Globalization.NumberStyles.Any, null, out dValue) ? dValue : Double.NaN;
		}

#if !NETSTANDARD2_0
		/// <summary>
		/// Returns a string after applying Strings.Replace. If res is null it returns an
		/// empty string.
		/// </summary>
		/// <param name="expression">String containing substring to replace.</param>
		/// <param name="find">Substring being searched for.</param>
		/// <param name="replacement">Replacement substring.</param>
		/// <param name="start">Position within expression that starts a substring used for replacement. Default value: 1</param>
		/// <param name="count">Number of substring substitutions to perform.</param>
		/// <param name="Compare">Numeric value indicating the kind of comparison to use when evaluating substrings.</param>
		/// <returns></returns>
		public static String Replace(string expression, string find, string replacement, int start = 1, int count = -1, [Microsoft.VisualBasic.CompilerServices.OptionCompare] CompareMethod compare = CompareMethod.Binary)
		{
			string res = Strings.Replace(expression, find, replacement, start, count, compare);
			return res == null ? string.Empty : res;
		}
#endif
	}
}
