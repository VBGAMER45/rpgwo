using System.Windows.Forms;

namespace UpgradeHelpers.Gui
{
    public static class MaskTextBoxExtension
    {
        public static string ClipText(this MaskedTextBox maskedTextBox)
        {
            string value = null;
            switch (maskedTextBox.TextMaskFormat)
            {
                case MaskFormat.IncludePrompt:
                case MaskFormat.IncludeLiterals:
                case MaskFormat.IncludePromptAndLiterals:
                    var obj = maskedTextBox.TextMaskFormat;
                    maskedTextBox.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
                    value = maskedTextBox.Text;
                    maskedTextBox.TextMaskFormat = obj;
                    break;
                case MaskFormat.ExcludePromptAndLiterals:
                    value = maskedTextBox.Text;
                    break;
            }
            return value;
        }
    }
}
