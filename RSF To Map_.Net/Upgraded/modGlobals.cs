using Microsoft.VisualBasic;
using System;
using System.Text;
using UpgradeHelpers.Helpers;

namespace RsfToMap
{
	internal static class modGlobals
	{

		internal static string[] Tokenize(ref string pData)
		{
			StringBuilder CurWord = new StringBuilder(); //current token
			string[] WL = null; //array of tokens
			string ch = ""; //current character
			string SepChar = ","; //separation character //make sepchar a comma
			WL = new string[]{""};
			int Num = -1; //number of tokens
			pData = pData + SepChar; //add a comma to the end of the string, to
			// make sure the last word/token is stored
			int tempForEndVar = Strings.Len(pData);
			for (int t = 1; t <= tempForEndVar; t++)
			{
				ch = pData.Substring(t - 1, Math.Min(1, pData.Length - (t - 1)));
				if (ch == SepChar)
				{
					if (CurWord.ToString() != "")
					{ //save word, start a new one
						Num++;
						WL = ArraysHelper.RedimPreserve(WL, new int[]{Num + 1});
						WL[Num] = CurWord.ToString(); //save word to list
						CurWord = new StringBuilder(""); //reset CurWord to empty string
					}
				}
				else
				{
					CurWord.Append(ch); //CH is not a comma, so add it to the
					//current word...
				}
			}
			return WL; //returns an array of strings
		}

		internal static bool FileExists(string filename)
		{
			return Strings.Len(FileSystem.Dir(filename, FileAttribute.Normal)) > 0;
		}
	}
}