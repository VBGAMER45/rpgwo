
namespace UpgradeStubs
{
	public class AxMSComDlg_AxCommonDialog
		: System.Windows.Forms.Control
	{

		public string getFileName()
		{
			UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("MSComDlg.CommonDialog.Filename");
			return default(string);
		}
		public void setDialogTitle(string DialogTitle)
		{
			UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("MSComDlg.CommonDialog.DialogTitle");
		}
		public void setFilter(string Filter)
		{
			UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("MSComDlg.CommonDialog.Filter");
		}
		public void setInitDir(string InitDir)
		{
			UpgradeHelpers.Helpers.NotUpgradedHelper.NotifyNotUpgradedElement("MSComDlg.CommonDialog.InitDir");
		}
	}
}