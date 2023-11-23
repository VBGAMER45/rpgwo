using System.Reflection;
using System.Windows.Forms;

namespace UpgradeHelpers.Gui
{
    public static partial class TabControlHelper
    {
        public static int GetOldTab(this TabControl tabControl)
        {
            FieldInfo field = tabControl.GetType().GetField("lastSelection", BindingFlags.NonPublic | BindingFlags.Instance);
            return (int)field.GetValue(tabControl);
        }
    }
}
