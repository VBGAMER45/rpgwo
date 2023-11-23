using System.IO;

#if !NETSTANDARD2_0
using MicrosoftVisualBasicFileAttribute = Microsoft.VisualBasic.FileAttribute ;
#endif

namespace UpgradeHelpers.Helpers
{
	/// <summary>
	/// The IOHelper is an utility that provides funcationality related to Input/Output operations.
	/// </summary>

#if NETSTANDARD2_0
	// Summary:
	//	   Copied from Microsoft.VisualBasic dll(not available for .Net standard)
	//     Indicates the file attributes to use when calling file-access functions.
	public enum MicrosoftVisualBasicFileAttribute
	{
		//
		// Summary:
		//     Normal (default for Dir and SetAttr). No special characteristics apply to this
		//     file. This member is equivalent to the Visual Basic constant vbNormal.
		Normal = 0,
		//
		// Summary:
		//     Read only. This member is equivalent to the Visual Basic constant vbReadOnly.
		ReadOnly = 1,
		//
		// Summary:
		//     Hidden. This member is equivalent to the Visual Basic constant vbHidden.
		Hidden = 2,
		//
		// Summary:
		//     System file. This member is equivalent to the Visual Basic constant vbSystem.
		System = 4,
		//
		// Summary:
		//     Volume label. This attribute is not valid when used with SetAttr. This member
		//     is equivalent to the Visual Basic constant vbVolume.
		Volume = 8,
		//
		// Summary:
		//     Directory or folder. This member is equivalent to the Visual Basic constant vbDirectory.
		Directory = 16,
		//
		// Summary:
		//     File has changed since last backup. This member is equivalent to the Visual Basic
		//     constant vbArchive.
		Archive = 32
	}
#endif

	public class IOHelper
    {
		/// <summary>
		/// Converts a <see cref="T:Microsoft.VisualBasic.FileAttribute" /> to a <see cref="T:System.IO.FileAttributes" />.
		/// </summary>
		/// <returns>A <see cref="T:System.IO.FileAttributes" /> that contains the converted file attribute.</returns>
		/// <param name="vbFileAttribute">A <see cref="T:Microsoft.VisualBasic.FileAttribute" /> that represents the file attribute to convert from.</param>
		public static FileAttributes ToFileAttributes(MicrosoftVisualBasicFileAttribute vbFileAttribute)
        {
            FileAttributes result = 0;

            if (vbFileAttribute == 0)
            {
                result |= FileAttributes.Normal;
            }

#if (NET35)
			if((vbFileAttribute | MicrosoftVisualBasicFileAttribute.ReadOnly) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.ReadOnly))
#endif
            {
                result |= FileAttributes.ReadOnly;
            }

#if (NET35)
			if ((vbFileAttribute | MicrosoftVisualBasicFileAttribute.Hidden) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.Hidden))
#endif
			{
				result |= FileAttributes.Hidden;
            }

#if (NET35)
			if((vbFileAttribute | MicrosoftVisualBasicFileAttribute.System) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.System))
#endif
            {
                result |= FileAttributes.System;
            }

#if (NET35)
			if ((vbFileAttribute | MicrosoftVisualBasicFileAttribute.Volume) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.Volume))
#endif
            {
                result |= FileAttributes.Device;
            }

#if (NET35)
			if ((vbFileAttribute | MicrosoftVisualBasicFileAttribute.Directory) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.Directory))
#endif
            {
                result |= FileAttributes.Directory;
            }

#if (NET35)
			if ((vbFileAttribute | MicrosoftVisualBasicFileAttribute.Archive) == vbFileAttribute)
#else
			if (vbFileAttribute.HasFlag(MicrosoftVisualBasicFileAttribute.Archive))
#endif
            {
                result |= FileAttributes.Archive;
            }

            return result;
        }
    }
}
