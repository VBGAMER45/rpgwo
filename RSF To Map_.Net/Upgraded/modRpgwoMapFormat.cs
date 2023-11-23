using Microsoft.VisualBasic;
using System;
using System.IO;
using System.Runtime.InteropServices;
using UpgradeHelpers.Helpers;

namespace RsfToMap
{
	internal static class modRpgwoMapFormat
	{

		public static short mMapWidth = 0;
		public static short mMapHeight = 0;
		public static string mMapVersion = new string('\0', 30);
		public static string mMapExtra = new string('\0', 64);
		public static short mSurfaceArray = 0;
		public static string mMapNotes = new string('\0', 5000);
		public static short mNumberOfItems = 0;
		public static short mNumberOfMonsters = 0;

		public static int mv2NumberOfItems = 0;
		public static int mv2NumberOfMonsters = 0;


		public static bool v2Map = false;

		[Serializable][StructLayout(LayoutKind.Sequential, CharSet=CharSet.Ansi)]
		public struct mItemType
		{
			public bool a;
			public short c;
			public short ItemID;
			public short Xpos;
			public short Ypos;
			public short Data1;
			public short Data2;
			public short Data3;
			public short Data4;
			public short Data5;
			[Microsoft.VisualBasic.VBFixedArray(13)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=14)]
			public char[] _junk;
			public short Reset;
			public short Uses;
			public short Trigger;
			//Junk2 As String * 4
			public float SpawnTimeout;
			[Microsoft.VisualBasic.VBFixedArray(199)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=200)]
			public char[] _Writing;
			[Microsoft.VisualBasic.VBFixedArray(100)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=101)]
			public char[] _junk3;
			public string junk
			{
				get
				{
					return new string(_junk);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_junk, value);
				}
			}

			public string Writing
			{
				get
				{
					return new string(_Writing);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_Writing, value);
				}
			}

			public string junk3
			{
				get
				{
					return new string(_junk3);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_junk3, value);
				}
			}

			public static mItemType CreateInstance()
			{
				mItemType result = new mItemType();
				result._junk = new char[14];
				result._Writing = new char[200];
				result._junk3 = new char[101];
				return result;
			}
		}
		[Serializable][StructLayout(LayoutKind.Sequential, CharSet=CharSet.Ansi)]
		public struct mMonsterType
		{
			public bool a;
			public short MonsterId;
			public short Xpos;
			public short Ypos;
			public short Timeout;
			[Microsoft.VisualBasic.VBFixedArray(30)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=31)]
			public char[] _Junk10;
			public string Junk10
			{
				get
				{
					return new string(_Junk10);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_Junk10, value);
				}
			}

			public static mMonsterType CreateInstance()
			{
				mMonsterType result = new mMonsterType();
				result._Junk10 = new char[31];
				return result;
			}
		}


		//V2/v3 RPGWO
		[Serializable][StructLayout(LayoutKind.Sequential, CharSet=CharSet.Ansi)]
		public struct Montype2
		{
			[Microsoft.VisualBasic.VBFixedArray(3)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=4)]
			public char[] _d;
			[Microsoft.VisualBasic.VBFixedArray(49)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=50)]
			public char[] _MonsterName;
			public short Image;
			public short ImageType;
			public short Level;
			[Microsoft.VisualBasic.VBFixedArray(101)][System.Runtime.InteropServices.MarshalAs(System.Runtime.InteropServices.UnmanagedType.ByValArray, SizeConst=102)]
			public char[] _test;
			public string d
			{
				get
				{
					return new string(_d);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_d, value);
				}
			}

			public string MonsterName
			{
				get
				{
					return new string(_MonsterName);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_MonsterName, value);
				}
			}

			public string test
			{
				get
				{
					return new string(_test);
				}
				set
				{
					ArraysHelper.CopyStringToCharArray(_test, value);
				}
			}

			public static Montype2 CreateInstance()
			{
				Montype2 result = new Montype2();
				result._d = new char[4];
				result._MonsterName = new char[50];
				result._test = new char[102];
				return result;
			}
		}
		public static Montype2[] Monsters2 = null;


		[Serializable]
		private struct mMapDataType
		{
			public short Xpos;
			public short Ypos;
			public short Surface;
		}
		static mMapDataType[] tempmMapData = null;

		public static short[, ] mMap = null;
		public static mItemType[] mItems = null;
		public static mMonsterType[] mMonsters = null;



		internal static void SaveRpgwoMap(string filename)
		{
			object mapElements = null;
			int f = FileSystem.FreeFile();
			mSurfaceArray = 0;

			if (modGlobals.FileExists(filename))
			{
				File.Delete(filename);
			}

			FileSystem.FileOpen(f, filename, OpenMode.Binary, OpenAccess.Write, OpenShare.LockWrite, -1);
			FileSystem.FilePut(f, mMapWidth);
			FileSystem.FilePut(f, mMapHeight);
			FileSystem.FilePut(f, mMapVersion);
			FileSystem.FilePut(f, mSurfaceArray);
			FileSystem.FilePut(f, mMapExtra);
			mNumberOfMonsters--;
			mNumberOfItems--;

			mv2NumberOfItems--;
			mv2NumberOfMonsters--;
			//Get Tile Id
			//ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
			//Put #f, , mMap


			int countSurfaceItems = 1;


			tempmMapData = ArraysHelper.InitializeArray<mMapDataType>(countSurfaceItems);
			int MapSizeTotalCount = 0;
			int tempForEndVar = mMapWidth;
			for (int x = 1; x <= tempForEndVar; x++)
			{
				int tempForEndVar2 = mMapHeight;
				for (int y = 1; y <= tempForEndVar2; y++)
				{
					if (mMap[x - 1, y - 1] != 0)
					{

						tempmMapData[tempmMapData.GetUpperBound(0)].Xpos = (short) x;
						tempmMapData[tempmMapData.GetUpperBound(0)].Ypos = (short) y;
						tempmMapData[tempmMapData.GetUpperBound(0)].Surface = (short) mMap[x - 1, y - 1];
						MapSizeTotalCount++;
						tempmMapData = ArraysHelper.RedimPreserve(tempmMapData, new int[]{tempmMapData.GetUpperBound(0) + 2});
					}
				}
			}
			tempmMapData = ArraysHelper.RedimPreserve(tempmMapData, new int[]{tempmMapData.GetUpperBound(0)});

			if (mSurfaceArray == 1)
			{
				FileSystem.FilePut(f, mapElements);
				FileSystem.FilePut(f, tempmMapData);
			}
			else
			{


				FileSystem.FilePut(f, mMap);
			}


			if (v2Map)
			{


				FileSystem.FilePut(f, mv2NumberOfItems);
				// MsgBox mNumberOfItems
				//ReDim mItems(1 To mNumberOfItems)
				if (mv2NumberOfItems > 0)
				{
					mItems = ArraysHelper.RedimPreserve(mItems, new int[]{modRpgwoMapFormat.mv2NumberOfItems});
					FileSystem.FilePut(f, mItems);
				}
				//MsgBox Loc(1)
				FileSystem.FilePut(f, mv2NumberOfMonsters);
				//MsgBox mNumberOfMonsters
				//ReDim mMonsters(1 To mNumberOfMonsters)
				if (mv2NumberOfMonsters > 0)
				{
					mMonsters = ArraysHelper.RedimPreserve(mMonsters, new int[]{modRpgwoMapFormat.mv2NumberOfMonsters});
					FileSystem.FilePut(f, mMonsters);
				}


			}
			else
			{

				FileSystem.FilePut(f, mNumberOfItems);
				// MsgBox mNumberOfItems
				//ReDim mItems(1 To mNumberOfItems)
				if (mNumberOfItems > 0)
				{
					mItems = ArraysHelper.RedimPreserve(mItems, new int[]{modRpgwoMapFormat.mNumberOfItems});
					FileSystem.FilePut(f, mItems);
				}



				FileSystem.FilePut(f, mNumberOfMonsters);

				//MsgBox mNumberOfMonsters
				//ReDim mMonsters(1 To mNumberOfMonsters)
				if (mNumberOfMonsters > 0)
				{
					mMonsters = ArraysHelper.RedimPreserve(mMonsters, new int[]{modRpgwoMapFormat.mNumberOfMonsters});
					FileSystem.FilePut(f, mMonsters);
				}


			}
			// MsgBox "notes start:" & Loc(f)
			short k = 5000;
			FileSystem.FilePut(f, k);
			string notes = new string('\0', 5000);
			notes = StringsHelper.GetFixedLengthString(new String(' ', k), 5000);
			FileSystem.FilePut(f, notes);
			//Get Notes
			FileSystem.FileClose(f);
		}
	}
}