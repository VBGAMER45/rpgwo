VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsBitmap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

    Private Type BITMAP
       bmType As Long
       bmWidth As Long
       bmHeight As Long
       bmWidthBytes As Long
       bmPlanes As Integer
       bmBitsPixel As Integer
       bmBits As Long
    End Type

    Private Declare Function GetObject Lib "gdi32" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, lpObject As Any) As Long
    Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
    Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hdc As Long) As Long
    Private Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long
    Private Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
    Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
    Private Declare Function SetBkColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long
    Private Declare Function SetTextColor Lib "gdi32" (ByVal hdc As Long, ByVal crColor As Long) As Long
    Private Declare Function LoadImage Lib "user32" Alias "LoadImageA" (ByVal hInst As Long, ByVal lpsz As String, ByVal un1 As Long, ByVal n1 As Long, ByVal n2 As Long, ByVal un2 As Long) As Long
    Private Declare Function CreateCompatibleBitmap Lib "gdi32" (ByVal hdc As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long


    Private Const CLR_INVALID = &HFFFF ' used to test results of color
                                       ' API calls

    Private iImageDC As Long        ' DC to the Image bitmap
    Private iInvertImageDC As Long  ' DC to the Inverted Image bitmap
    Private iMaskDC As Long         ' The DC to the Mask bitmap
    Private iWidth As Long          ' Size of Bitmap - X
    Private iHeight As Long         ' Size of Bitmap - Y

    ' for this object class, 5 properties are exposed (read only) and one
    ' function

    ' Get ImageDC           - returns a DC that contains the original
    '                         image
    ' Get InvertImageDC     - returns a DC that contains an invert of the
    '                         image's background
    ' Get MaskDC            - returns a DC that contains an invert of the
    '                         original image
    ' Fnc SetBitmap         - returns TRUE/FALSE when attempting to load
    '                         image into bitmap object

    Property Get ImageDC() As Long
       ImageDC = iImageDC              ' return the DC that contains the
                                       ' regular image
    End Property

    Property Get InvertImageDC() As Long
       InvertImageDC = iInvertImageDC  ' return the DC that contains the
                                       ' inverted image
    End Property

    Property Get MaskDC() As Long
       MaskDC = iMaskDC                ' return the DC that contains the
                                       ' mask image
    End Property

    Property Get Width() As Long
       Width = iWidth                  ' return the width of the bitmap
    End Property

    Property Get Height() As Long
       Height = iHeight                ' return the height of the bitmap
    End Property

    Public Function LoadBitmap(strName As String, Optional flgMask As Boolean = True) As Boolean
        Dim hBitmap As Long
        
        hBitmap = LoadImage(0, strName, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE)
        
        If hBitmap = 0 Then
            LoadBitmap = False
            Exit Function
        End If
        
        If flgMask Then
            LoadBitmap = SetBitmapMask(hBitmap)
        Else
            LoadBitmap = SetBitmap(hBitmap)
        End If
    End Function


Public Function SetBitmap(NewBitmap As Long) As Boolean
    Dim lResult As Long         ' lResults of our API calls
    Dim BitmapData As BITMAP    ' data on the incoming bitmap
    
    lResult = GetObject(NewBitmap, Len(BitmapData), BitmapData)
    
    ' verify the bitmap data
    If (lResult = 0) Then
        SetBitmap = False
        Exit Function
    End If
    
    ' persist the height/width of the bitmap image
    
    iWidth = BitmapData.bmWidth     ' determine the bitmaps width
    iHeight = BitmapData.bmHeight    ' determine the bitmaps height
        
    iImageDC = CreateCompatibleDC(0)
    
    ' make sure there are three new DC's to use in this bitmap object
    If (iImageDC = 0) Then
        SetBitmap = False
        Exit Function
    End If
    
    ' save the actual bitmap within this bitmap object
    lResult = SelectObject(iImageDC, NewBitmap)
    
    ' make sure the object is selected
    If (lResult = 0) Then
        SetBitmap = False
        Exit Function
    End If
    
    SetBitmap = True
    
End Function


    Public Function SetBitmapMask(NewBitmap As Long) As Boolean

    ' The NewBitmap argument is a handle to a bitmap, this is used to
    ' grab the bitmap info, place the data into a bitmap structure, and
    ' use the structure to build a bitmap/mask grab the bitmap
    ' information

       Dim lResult As Long         ' lResults of our API calls
       Dim iInvertImage As Long    ' temp bitmap used in creating the
                                   ' invert image
       Dim iMask As Long           ' temp bitmap used in creating mask
       Dim BitmapData As BITMAP    ' data on the incoming bitmap

       lResult = GetObject(NewBitmap, Len(BitmapData), BitmapData)

      ' verify the bitmap data
         If (lResult = 0) Then
            SetBitmapMask = False
            Exit Function
         End If

       ' persist the height/width of the bitmap image

       iWidth = BitmapData.bmWidth     ' determine the bitmaps width
       iHeight = BitmapData.bmHeight    ' determine the bitmaps height

    ' Three Device Contexts (DC) are created. One is temporary (for
    ' the incoming bitmap which will be copied. The second is for the
    ' bitmap image that will be contained with this bitmap object class,
    ' and the third is for the image mask that will also be contained
    ' within this bitmap object class.

    iImageDC = CreateCompatibleDC(0)
    iInvertImageDC = CreateCompatibleDC(0)
    iMaskDC = CreateCompatibleDC(0)

       ' make sure there are three new DC's to use in this bitmap object
       If (iImageDC = 0) Or (iInvertImageDC = 0) Or (iMaskDC = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

    ' save the actual bitmap within this bitmap object
    lResult = SelectObject(iImageDC, NewBitmap)

    ' make sure the object is selected
       If (lResult = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

    ' create the bitmap to hold the inverted image, and connect it to
    ' a DC
    iInvertImage = CreateCompatibleBitmap(iImageDC, iWidth, iHeight)

    ' make sure a bitmap can be created
       If (iInvertImage = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

    ' copy the image into the bitmap just created
       lResult = SelectObject(iInvertImageDC, iInvertImage)

    ' make sure the object is selected
       If (lResult = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

    ' create the bitmap to hold the mask, and connect it to a DC
       iMask = CreateCompatibleBitmap(iMaskDC, iWidth, iHeight)

    ' make sure a bitmap can be created
       If (iMask = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

       ' the bitmap is now in memory, attach it to the DC created for the
       'Mask
          lResult = SelectObject(iMaskDC, iMask)

       ' make sure the object is selected
          If (lResult = 0) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' blit the incoming image into the ImageDC created, now there is a
       ' permanent copy of the original image
       lResult = BitBlt(iInvertImageDC, 0, 0, iWidth, iHeight, iImageDC, 0, 0, SRCCOPY)
        'lResult = BitBlt(hdc, 0, 0, iWidth, iHeight, iImageDC, 0, 0, SRCCOPY)
        

       ' if the first blit fails, SetBitmap = False
          If (lResult = 0) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' create the Mask image first
         lResult = BitBlt(iMaskDC, 0, 0, iWidth, iHeight, iImageDC, 0, 0, SRCCOPY)
        ' lResult = BitBlt(hdc, 50, 0, iWidth, iHeight, iImageDC, 0, 0, SRCCOPY)

       ' if the first blit fails, SetBitmap = False
          If (lResult = 0) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' next change the background of the real bitmap, this is done to
       ' create
       ' the Mask image.
          lResult = SetBkColor(iInvertImageDC, vbBlack)

       ' Make sure the background color is set successfully
          If (lResult = CLR_INVALID) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' Change the textcolor of the real bitmap. This is done to create
       ' the mask image
       lResult = SetTextColor(iInvertImageDC, vbWhite)          'iInvertImageDC,  vbWhite
    'lResult = SetBkColor(iMaskDC, vbBlack)
    'lResult = SetTextColor(iMaskDC, vbWhite)          'iInvertImageDC,  vbWhite

     '   Call BitBlt(hdc, 0, 0, iWidth, iHeight, iInvertImageDC, 0, 0, SRCCOPY)
     '   Call BitBlt(hdc, 100, 0, iWidth, iHeight, iMaskDC, 0, 0, SRCCOPY)
        

       ' make sure the text color is set successfully
          If (lResult = CLR_INVALID) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' invert the white background to black on the real bitmap, by
       ' blitting
       ' the Mask created over the slightly modified original bitmap.
       ' This will result in the background color becoming black -
       ' perfect for transparent blitting.
       lResult = BitBlt(iInvertImageDC, 0, 0, iWidth, iHeight, iMaskDC, 0, 0, SRCAND)
       'lResult = BitBlt(iMaskDC, 0, 0, iWidth, iHeight, iInvertImageDC, 0, 0, SRCAND)
       'lResult = BitBlt(hdc, 100, 0, iWidth, iHeight, iMaskDC, 0, 0, SRCAND)

       ' make sure the blit succeeded
          If (lResult = 0) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' destroy the temporary bitmap created to hold the Inverted Image
      lResult = DeleteObject(iInvertImage)

       ' make sure our temporary bitmap is deleted
          If (lResult = 0) Then
             SetBitmapMask = False
             Exit Function
          End If

       ' destroy the temporary bitmap created to hold the Mask Image
       lResult = DeleteObject(iMask)

       ' make sure the temporary bitmap is deleted
       If (lResult = 0) Then
          SetBitmapMask = False
          Exit Function
       End If

       ' the bitmap image has been loaded into the bitmap object,
       ' return a successful attempt
          SetBitmapMask = True

    End Function

    Private Sub Class_Terminate()

       ' when this object is destroyed, destroy the Device Contexts that
       ' are being used.

       Call DeleteDC(iImageDC)         ' delete the image DC
       Call DeleteDC(iInvertImageDC)   ' delete the inverted image DC
       Call DeleteDC(iMaskDC)          ' delete the mask DC

    End Sub

