using Microsoft.VisualBasic;
using System;
using System.IO;
using System.Windows.Forms;
using UpgradeHelpers.Helpers;

namespace RsfToMap
{
	internal partial class frmMain
		: System.Windows.Forms.Form
	{

		public frmMain()
			: base()
		{
			if (m_vb6FormDefInstance == null)
			{
				if (m_InitializingDefInstance)
				{
					m_vb6FormDefInstance = this;
				}
				else
				{
					try
					{
						//For the start-up form, the first instance created is the default instance.
						if (System.Reflection.Assembly.GetExecutingAssembly().EntryPoint != null && System.Reflection.Assembly.GetExecutingAssembly().EntryPoint.DeclaringType == this.GetType())
						{
							m_vb6FormDefInstance = this;
						}
					}
					catch
					{
					}
				}
			}
			//This call is required by the Windows Form Designer.
			InitializeComponent();
		}


		private void frmMain_Activated(System.Object eventSender, System.EventArgs eventArgs)
		{
			if (UpgradeHelpers.Gui.ActivateHelper.myActiveForm != eventSender)
			{
				UpgradeHelpers.Gui.ActivateHelper.myActiveForm = (System.Windows.Forms.Form) eventSender;
			}
		}
		private void cmdExit_Click(Object eventSender, EventArgs eventArgs)
		{
			Environment.Exit(0);
		}

		private void cmdSelect_Click(Object eventSender, EventArgs eventArgs)
		{
			string Filename = "";
			CommonDialog1Open.Title = "Select .rsf file";
			CommonDialog1Open.Filter = "Script Files (*.rsf)|*.rsf";
			CommonDialog1Open.InitialDirectory = Path.GetDirectoryName(Application.ExecutablePath);
			CommonDialog1Open.ShowDialog();
			if (Strings.Len(CommonDialog1Open.FileName) == 0)
			{
				return;
			}
			Filename = CommonDialog1Open.FileName;
			string data = "";
			modRpgwoMapFormat.mNumberOfItems = 1;
			modRpgwoMapFormat.mNumberOfMonsters = 1;

			modRpgwoMapFormat.mv2NumberOfItems = 1;
			modRpgwoMapFormat.mv2NumberOfMonsters = 1;

			if (cboVersion.Text == "V1")
			{
				modRpgwoMapFormat.v2Map = false;
				modRpgwoMapFormat.mMapVersion = StringsHelper.GetFixedLengthString("1.0       RPGWO Edit", 30);
			}
			else
			{
				modRpgwoMapFormat.v2Map = true;
				modRpgwoMapFormat.mMapVersion = StringsHelper.GetFixedLengthString("2.0       RPGWO Edit", 30);

			}


			FileSystem.FileOpen(1, Filename, OpenMode.Input, OpenAccess.Default, OpenShare.Default, -1);
			string[] DataArray = null;
            short Xpos = 0;
            short Ypos = 0;
			short ImageNumber = 0;
			int SpawnSeconds = 0;

			while(!FileSystem.EOF(1))
			{
				data = FileSystem.LineInput(1);
				if (data.StartsWith("/MAPITEMCLEAR "))
				{
					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 14), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);
					modRpgwoMapFormat.mMapHeight = Convert.ToInt16(Double.Parse(DataArray[0]));
					modRpgwoMapFormat.mMapWidth = Convert.ToInt16(Double.Parse(DataArray[0]));
					modRpgwoMapFormat.mMap = new short[Convert.ToInt16(Double.Parse(DataArray[0])), Convert.ToInt16(Double.Parse(DataArray[0]))];


					//  ReDim Map(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
					//  ReDim ItemMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
					// ReDim MonsterMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)

				}
				//Load Items
				if (data.StartsWith("/ITEMIXY "))
				{
					//Now tokenize the remaining data and break into the parts of image# and x and y position

					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 9), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);

					ImageNumber = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[0])));

					Xpos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[1])));
					Ypos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[2])));
					modRpgwoMapFormat.mItems = ArraysHelper.RedimPreserve(modRpgwoMapFormat.mItems, new int[]{modRpgwoMapFormat.mNumberOfItems + 1});
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].ItemID = (short) ImageNumber;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Xpos = (short) Xpos;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Ypos = (short) Ypos;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].a = true;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].SpawnTimeout = (float) Math.Floor(Double.Parse(DataArray[3]));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data1 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[4])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data2 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[5])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data3 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[6])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data4 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[7])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data5 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[8])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Reset = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[9])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Writing = StringsHelper.GetFixedLengthString(new String(' ', 200), 200);
					// mItems(mNumberOfItems).Trigger = Int(DataArray(10))

					modRpgwoMapFormat.mNumberOfItems++;
					modRpgwoMapFormat.mv2NumberOfItems++;

				}
				//Spawn items
				if (data.StartsWith("/ITEMSPAWNIXY "))
				{
					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 14), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);
					ImageNumber = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[0])));

					Xpos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[1])));
					Ypos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[2])));
					modRpgwoMapFormat.mItems = ArraysHelper.RedimPreserve(modRpgwoMapFormat.mItems, new int[]{modRpgwoMapFormat.mNumberOfItems + 1});
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].ItemID = (short) ImageNumber;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Xpos = (short) Xpos;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Ypos = (short) Ypos;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].a = true;
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].SpawnTimeout = (float) Math.Floor(Double.Parse(DataArray[3]));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data1 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[4])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data2 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[5])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data3 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[6])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data4 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[7])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Data5 = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[8])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Trigger = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[8])));
					modRpgwoMapFormat.mItems[modRpgwoMapFormat.mNumberOfItems - 1].Uses = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[9])));

					modRpgwoMapFormat.mNumberOfItems++;
					modRpgwoMapFormat.mv2NumberOfItems++;

				}
				//Text on item
				if (data.StartsWith("/ITEMTEXTIXY "))
				{
					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 13), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);
					Xpos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[0])));
					Ypos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[1])));
					//'ItemMap(Xpos, Ypos).ItemText = DataArray(2)
				}

				//Surface the ground
				if (data.StartsWith("/SURFACEIXY "))
				{
					//Now tokenize the remaining data and break into the parts of image# and x and y position

					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 12), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);

					ImageNumber = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[0])));
					Xpos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[1])));
					Ypos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[2])));

					modRpgwoMapFormat.mMap[Xpos - 1, Ypos - 1] = ImageNumber;

				}
				//Load Monsters
				if (data.StartsWith("/MONSTERSPAWNADDXY "))
				{
					data = data.Substring(Math.Max(data.Length - (Strings.Len(data) - 19), 0));
					DataArray = (string[]) modGlobals.Tokenize(ref data);

					ImageNumber = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[2])));
					Xpos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[0])));
					Ypos = Convert.ToInt16(Math.Floor(Double.Parse(DataArray[1])));
					SpawnSeconds = Convert.ToInt32(Math.Floor(Double.Parse(DataArray[3])));
					modRpgwoMapFormat.mMonsters = ArraysHelper.RedimPreserve(modRpgwoMapFormat.mMonsters, new int[]{modRpgwoMapFormat.mNumberOfMonsters + 1});
					modRpgwoMapFormat.mMonsters[modRpgwoMapFormat.mNumberOfMonsters - 1].Xpos = (short) Xpos;
					modRpgwoMapFormat.mMonsters[modRpgwoMapFormat.mNumberOfMonsters - 1].Ypos = (short) Ypos;
					modRpgwoMapFormat.mMonsters[modRpgwoMapFormat.mNumberOfMonsters - 1].MonsterId = (short) ImageNumber;
					modRpgwoMapFormat.mMonsters[modRpgwoMapFormat.mNumberOfMonsters - 1].Timeout = (short) SpawnSeconds;
					modRpgwoMapFormat.mMonsters[modRpgwoMapFormat.mNumberOfMonsters - 1].a = true;
					modRpgwoMapFormat.mNumberOfMonsters++;
					modRpgwoMapFormat.mv2NumberOfMonsters++;
					//MonsterMap(Xpos, Ypos).ImageNumber = ImageNumber
					//MonsterMap(Xpos, Ypos).MonsterArrayID = GetMonsterArrayId(ImageNumber)
					//MonsterMap(Xpos, Ypos).MonsterId = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).MonsterId 'ImageNumber
					//MonsterMap(Xpos, Ypos).Life = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Life
					//MonsterMap(Xpos, Ypos).Stamina = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Stamina
					//MonsterMap(Xpos, Ypos).Mana = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Mana
					//MonsterMap(Xpos, Ypos).SpawnSeconds = SpawnSeconds
					//MonsterMap(Xpos, Ypos).OldX = Xpos
					//MonsterMap(Xpos, Ypos).OldY = Ypos
					//MonsterMap(Xpos, Ypos).OldMonsterArrayID = MonsterMap(Xpos, Ypos).MonsterArrayID
					//MonsterMap(Xpos, Ypos).ImageType = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).ImageType

				}


			};
			FileSystem.FileClose(1);

			//save the file
			if (modRpgwoMapFormat.v2Map)
			{

				modRpgwoMapFormat.SaveRpgwoMap(Filename + "v2-3.map");
			}
			else
			{
				modRpgwoMapFormat.SaveRpgwoMap(Filename + "v1.map");
			}
			//End of rsf file

			MessageBox.Show("Done!", AssemblyHelper.GetTitle(System.Reflection.Assembly.GetExecutingAssembly()));

		}

		//UPGRADE_WARNING: (2080) Form_Load event was upgraded to Form_Load method and has a new behavior. More Information: https://www.mobilize.net/vbtonet/ewis/ewi2080
		private void Form_Load()
		{
			string datam = "Jonathan Valentin 2004-2020";
		}
		[STAThread]
		static void Main()
		{
			Application.Run(CreateInstance());
		}
	}
}