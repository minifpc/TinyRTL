# ----------------------------------------------------------------------------
# File:   build.ps1 - PowerShell file to build the project.
# Author: (c) 2024 Jens Kallup - paule32
# All rights reserved
#
# only for education, and non-profit usage !
# ----------------------------------------------------------------------------
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.IO

Add-Type -AssemblyName PresentationFramework

# ----------------------------------------------------------------------------
# @brief internal application stuff (variable's, and constabt's) ...
# ----------------------------------------------------------------------------
enum IntroDialogButton {
    unknown          = 0
    selectFolderFPC  = 1
    selectFolderNASM = 2
    ok               = 3
    cancel           = 4
}

# ----------------------------------------------------------------------------
# please, stay fair and hold you on the codex of code of conduct, Thanks.
# ----------------------------------------------------------------------------
$copyright = "",
    "This PowerShell Script help you by compile the FPC Qt Project.\n",
    "(c) 2024 by Jens Kallup - paule32\n",
    "all rights reserved."

# ----------------------------------------------------------------------------
# PowerShell specified options / stuff ...
# ----------------------------------------------------------------------------
$ErrorActionPreference = "SilentlyContinue"  # This will hide errors

# ----------------------------------------------------------------------------
# @brief  this function shows the user a message box.
#         you can use \n to split strings with/aa new-line seperator.
#
# @param  str   - the message string
# @param  title - the title of the message box
#
# @return nothing
#
# @since  version 1.0
# @author paule32
# ----------------------------------------------------------------------------
function messageBox([string]$str, [string]$title)
{
    $result = [System.Windows.Forms.MessageBox]::Show(
    $str.Replace("\n","`n"), $title,
    [System.Windows.Forms.MessageBoxButtons]::OK,
    [System.Windows.Forms.MessageBoxIcon]::None)
}

# ----------------------------------------------------------------------------
# show a nice welcome pop-up dualog :-) ...
# ----------------------------------------------------------------------------
function AboutInfo() {
    messageBox $copyright "Information"
}

# ----------------------------------------------------------------------------
# Show an Open Folder Dialog and return the directory selected by the user.
# ----------------------------------------------------------------------------
function Read-FolderBrowseDialog([string]$InitialDirectory)
{
    $openFolderDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $openFolderDialog.ShowNewFolderButton = $false
    $openFolderDialog.RootFolder = $InitialDirectory
        
    if ($openFolderDialog.ShowDialog() -eq "OK") {
        #AboutInfo
    }
    return $openFolderDialog.SelectedPath
}

# ----------------------------------------------------------------------------
# start up function for our powershell script ...
# ----------------------------------------------------------------------------
function Main([string]$arg1,[string]$arg2,[string]$arg3,[string]$arg4,[string]$arg5,[string]$arg6)
{
    [System.Windows.Forms.Application]::EnableVisualStyles() | Out-Null
    
    $form = New-Object System.Windows.Forms.Form
    $form.Text = 'Setup Compililation Stage'
    $form.Font = New-Object System.Drawing.Font("Arial",10,[System.Drawing.FontStyle]::Regular)
    $form.Size = New-Object System.Drawing.Size(360,470)
    $form.Topmost = $true
    $form.MaximizeBox = $false
    $form.StartPosition = 'CenterScreen'

    [void]$form.SuspendLayout()
    
    $formGraphics = $form.createGraphics()
    $brush = new-Object System.Drawing.SolidBrush "gray"
    
    $fontBrush1 = new-Object System.Drawing.SolidBrush "yellow"
    $fontBrush2 = new-Object System.Drawing.SolidBrush "white"
    $fontBrush3 = new-Object System.Drawing.SolidBrush "navy"
    
    $pen   = new-object System.Drawing.Pen black
    $rect  = new-object System.Drawing.Rectangle 308, 0, 110, 470
    $font1 = new-object System.Drawing.Font("Arial Black",14,[System.Drawing.FontStyle]::Bold)
    $font2 = new-object System.Drawing.Font("Arial Black",11,[System.Drawing.FontStyle]::Bold)
    
    $form.add_paint({
        $formGraphics.FillRectangle($brush, $rect)
        $pen.color = "red"
        $formGraphics.DrawString("F",$font1,$fontBrush1,300 + 16,10)
        $formGraphics.DrawString("P",$font1,$fontBrush1,300 + 16,40)
        $formGraphics.DrawString("C",$font1,$fontBrush1,300 + 16,70)
        
        $formGraphics.DrawString("F",$font2,$fontBrush2,300 + 19,130)
        $formGraphics.DrawString("r",$font2,$fontBrush2,300 + 19,150)
        $formGraphics.DrawString("e",$font2,$fontBrush2,300 + 19,170)
        $formGraphics.DrawString("e",$font2,$fontBrush2,300 + 19,190)
        
        $formGraphics.DrawString("P",$font2,$fontBrush2,300 + 19,230)
        $formGraphics.DrawString("a",$font2,$fontBrush2,300 + 19,250)
        $formGraphics.DrawString("s",$font2,$fontBrush2,300 + 19,270)
        $formGraphics.DrawString("c",$font2,$fontBrush2,300 + 19,290)
        $formGraphics.DrawString("a",$font2,$fontBrush2,300 + 19,310)
        $formGraphics.DrawString("l",$font2,$fontBrush2,300 + 22,330)
        
        $formGraphics.DrawString("3",$font2,$fontBrush3,300 + 22,360)
        $formGraphics.DrawString(".",$font2,$fontBrush3,300 + 22,368)
        $formGraphics.DrawString("2",$font2,$fontBrush3,300 + 22,383)
        $formGraphics.DrawString(".",$font2,$fontBrush3,300 + 22,391)
        $formGraphics.DrawString("0",$font2,$fontBrush3,300 + 22,406)
    })

    $checkFPC = New-Object System.Windows.Forms.Label
    $checkFPC.Location = New-Object System.Drawing.Point(275,36)
    $checkFPC.Size = New-Object System.Drawing.Size(20,20)
    $checkFPC.font = New-Object System.Drawing.Font("Wingdings 2",22,[System.Drawing.FontStyle]::Bold)
    $checkFPC.Text = [string][char]0x4f
    #
    $checkNASM = New-Object System.Windows.Forms.Label
    $checkNASM.Location = New-Object System.Drawing.Point(275,124)
    $checkNASM.font = New-Object System.Drawing.Font("Wingdings 2",22,[System.Drawing.FontStyle]::Bold)
    $checkNASM.Size = New-Object System.Drawing.Size(20,20)
    $checkNASM.Text = [string][char]0x4f
    #
    $checkMSYS2 = New-Object System.Windows.Forms.Label
    $checkMSYS2.Location = New-Object System.Drawing.Point(275,206)
    $checkMSYS2.font = New-Object System.Drawing.Font("Wingdings 2",22,[System.Drawing.FontStyle]::Bold)
    $checkMSYS2.Size = New-Object System.Drawing.Size(20,20)
    $checkMSYS2.Text = [string][char]0x4f
    #
    $checkProgessBar = New-Object System.Windows.Forms.Label
    $checkProgessBar.Location = New-Object System.Drawing.Point(275,335)
    $checkProgessBar.font = New-Object System.Drawing.Font("Wingdings 2",22,[System.Drawing.FontStyle]::Bold)
    $checkProgessBar.Size = New-Object System.Drawing.Size(20,20)
    $checkProgessBar.Text = [string][char]0x4f

    $form.Controls.Add($checkFPC)
    $form.Controls.Add($checkNASM)
    $form.Controls.Add($checkMSYS2)
    #
    $form.Controls.Add($checkProgessBar)

    $searchButtonFPC = New-Object System.Windows.Forms.Button
    $searchButtonFPC.Location = New-Object System.Drawing.Point(10,75)
    $searchButtonFPC.Size = New-Object System.Drawing.Size(120,23)
    $searchButtonFPC.Text = 'Select Directory'
    $searchButtonFPC.DialogResult = [IntroDialogButton]::selectFolderFPC
    
    $searchButtonNASM = New-Object System.Windows.Forms.Button
    $searchButtonNASM.Location = New-Object System.Drawing.Point(10,161)
    $searchButtonNASM.Size = New-Object System.Drawing.Size(120,23)
    $searchButtonNASM.Text = 'Select Directory'
    $searchButtonNASM.DialogResult = [IntroDialogButton]::selectFolderNASM
    
    $searchButtonMSYS2 = New-Object System.Windows.Forms.Button
    $searchButtonMSYS2.Location = New-Object System.Drawing.Point(10,240)
    $searchButtonMSYS2.Size = New-Object System.Drawing.Size(120,23)
    $searchButtonMSYS2.Text = 'Select Directory'
    $searchButtonMSYS2.DialogResult = [IntroDialogButton]::selectFolderNASM
    
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(10,389)
    $okButton.Size = New-Object System.Drawing.Size(75,23)
    $okButton.Text = 'OK'
    $okButton.DialogResult = [IntroDialogButton]::ok
    #
    $okButton.Add_Click({
        # -------------------------------------------------
        # to avoid multiple button-clicks, we disable it:
        # -------------------------------------------------
        $okButton.Enabled = $false
        $okButton.BackColor = "#ee0000"
        $okButton.ForeColor = "#ffffff"
        $okButton.Font = New-Object System.Drawing.Font("Arial",11,[System.Drawing.FontStyle]::Bold)
        $okButton.Location = New-Object System.Drawing.Point(10,280)
        $okButton.Size = New-Object System.Drawing.Size(75,28)
        
        $labelAction = New-Object System.Windows.Forms.Label
        $labelAction.Location = New-Object System.Drawing.Point(10,315)
        $labelAction.Size = New-Object System.Drawing.Size(200,20)
        $labelAction.Text = ""
        #
        $form.Controls.Add($labelAction)
        
        $fpcdir  = $textBoxFPC.Text.Trim()
        $asmdir  = $textBoxNASM.Text.Trim()
        
        $prjdir  = Split-Path -Parent $PSCommandPath
        $prjdir  = $prjdir.Trim()
        
        $asmx32  = $asmdir + "\nasm.exe"
        $asmx64  = $asmdir + "\nasm.exe"
        
        # -------------------------------------------------
        # copy the fpc.exe from the 64-Bit Version into the
        # directory of the shared directory for win32 ...
        # -------------------------------------------------
        $fpcx32  = $fpcdir + "\fpc32.exe"     # todo !
        $fpcx64  = $fpcdir + "\fpc64.exe"     # todo !
        
        $ld32    = $fpcdir + "\ld32.exe"      # todo !
        $ld64    = $fpcdir + "\ld64.exe"      # todo !
        
        $as32    = $fpcdir + "\as32.exe"      # todo !
        $as64    = $fpcdir + "\as64.exe"      # todo !
        
        $strip32 = $fpcdir + "\strip32.exe"   # todo !
        $strip64 = $fpcdir + "\strip64.exe"   # todo !
        
        # -------------------------------------------------
        # fpc command line options ...
        # -------------------------------------------------
        $fpcdst  = " ",
        "-Twin64 -Mdelphi -dwindows -dwin64 -v0 ",
        "-Fi$prjdir\sources\fpc-win ",
        "-Fi$prjdir\sources\fpc-rtl ",
        "-Fi$prjdir\sources\fpc-gnu ",
        "-F1$prjdir\sources\fpc-qt  "
        
        $fpcasm  = "-Anasmwin64 -al "
        
        $fpcsys1 = " ",
        "-Fu$prjdir\sources\fpc-sys ",
        "-Fu$prjdir\sources\fpc-qt  ",
        " "  ,
        "-Fu$prjdir\units\fpc-rtl ",
        "-Fu$prjdir\units\fpc-sys ",
        "-Fu$prjdir\units\fpc-win ",
        "-Fu$prjdir\units\fpc-qt  "
        
        $fpcsys2 = " ",
        "-n ",
        "-O3 -Op3 -Os ",
        "-Si -Sc  -Sg ",
        "-Xd -Xe  -XD -CX -XXs ",
        "-sh -Ur      ",
        "-WA -WD -WN  ", $fpcasm, " ",
        "-vl "

        $fpcsys3 = "  ",
        "-n ",
        "-O3 -Op3 -Os ",
        "-Si -Sc  -Sg ",
        "-Xd -Xe  -XD -CX -XXs ",
        "-sh -Ur  "
        
        $progressBar.Value = 1
        $labelAction.Text = "=[ clean up directories    ]="
                
        Set-Location -Path $prjdir
        
        Remove-Item -Recurse "$prjdir\units"
        Remove-Item -Recurse "$prjdir\tests\units"
        
        Remove-Item "$prjdir\tests\fpc_rtl.dll"
        Remove-Item "$prjdir\tests\test1.exe"
        
        New-Item "$prjdir\units\fpc-sys" -ItemType Directory
        New-Item "$prjdir\units\fpc-rtl" -ItemType Directory
        New-Item "$prjdir\units\fpc-win" -ItemType Directory
        New-Item "$prjdir\units\fpc-qt"  -ItemType Directory
        #
        New-Item "$prjdir\tests\units"   -ItemType Directory
        
        $progressBar.Value = 10
        $labelAction.Text = "=[ build dll file... ]="
        
        $prog = $textBoxUSER.Text + "\src\build.bat"
        Start-Process -FilePath "$prog" -Wait
        
        $progressBar.Value = 100
        $form.Dispose()
        Main $textBoxTempFPC $textBoxTempNASM $textBoxTempMSYS2 $checkFPCText $checkNASMText $checkMSYS2Text
    })
    
    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Point(150,389)
    $cancelButton.Size = New-Object System.Drawing.Size(75,23)
    $cancelButton.Text = 'Cancel'
    $cancelButton.DialogResult = [IntroDialogButton]::cancel
    #
    $cancelButton.Add_Click({
        $form.Dispose()
    })
    
    $form.Controls.Add($searchButtonFPC)
    $form.Controls.Add($searchButtonNASM)
    $form.Controls.Add($searchButtonMSYS2)
    
    $form.Controls.Add($okButton)
    $form.Controls.Add($cancelButton)

    $labelFPC = New-Object System.Windows.Forms.Label
    $labelFPC.Location = New-Object System.Drawing.Point(10,20)
    $labelFPC.Size = New-Object System.Drawing.Size(270,20)
    $labelFPC.Text = 'Please enter the path of FPC.EXE below:'
    
    $labelNASM = New-Object System.Windows.Forms.Label
    $labelNASM.Location = New-Object System.Drawing.Point(10,104)
    $labelNASM.Size = New-Object System.Drawing.Size(270,20)
    $labelNASM.Text = 'Please enter the path of NASM.EXE below:'
    
    $labelMSYS2 = New-Object System.Windows.Forms.Label
    $labelMSYS2.Location = New-Object System.Drawing.Point(10,189)
    $labelMSYS2.Size = New-Object System.Drawing.Size(270,20)
    $labelMSYS2.Text = 'Please enter the path of MSYS2 below:'
    
    $labelUSER = New-Object System.Windows.Forms.Label
    $labelUSER.Location = New-Object System.Drawing.Point(10,274)
    $labelUSER.Size = New-Object System.Drawing.Size(270,20)
    $labelUSER.Text = 'Please enter the project path below:'
    
    $form.Controls.Add($labelFPC)
    $form.Controls.Add($labelNASM)
    $form.Controls.Add($labelMSYS2)
    $form.Controls.Add($labelUSER)

    $textBoxFPC = New-Object System.Windows.Forms.TextBox
    $textBoxFPC.Location = New-Object System.Drawing.Point(10,40)
    $textBoxFPC.Size = New-Object System.Drawing.Size(260,20)
    
    $textBoxNASM = New-Object System.Windows.Forms.TextBox
    $textBoxNASM.Location = New-Object System.Drawing.Point(10,128)
    $textBoxNASM.Size = New-Object System.Drawing.Size(260,24)
    
    $textBoxMSYS2 = New-Object System.Windows.Forms.TextBox
    $textBoxMSYS2.Location = New-Object System.Drawing.Point(10,209)
    $textBoxMSYS2.Size = New-Object System.Drawing.Size(260,20)
    
    $textBoxUSER = New-Object System.Windows.Forms.TextBox
    $textBoxUSER.Location = New-Object System.Drawing.Point(10,296)
    $textBoxUSER.Size = New-Object System.Drawing.Size(260,20)
    $textBoxUSER.Text = "E:\Projekte\fpc-qt"
    
    $form.Controls.Add($textBoxFPC)
    $form.Controls.Add($textBoxNASM)
    $form.Controls.Add($textBoxMSYS2)
    $form.Controls.Add($textBoxUSER)
    
    $progressBar = New-Object System.Windows.Forms.ProgressBar
    $progressBar.Location = new-object System.Drawing.Point(10,340)
    $progressBar.Size = new-object System.Drawing.Size(260,21)
    $progressBar.Minimum = 0
    $progressBar.Maximum = 100
    #
    $form.Controls.Add($progressBar)

    $textBoxFPC.Text   = $arg1
    $textBoxNASM.Text  = $arg2
    $textBoxMSYS2.Text = $arg3
    #
    $textBoxTempFPC    = $arg1
    $textBoxTempNASM   = $arg2
    $textBoxTempMSYS2  = $arg3
    #
    $checkFPC.Text     = $arg4
    $checkNASM.Text    = $arg5
    $checkMSYS2.Text   = $arg6
    #
    $checkFPCText      = $arg4
    $checkNASMText     = $arg5
    $checkMSYS2Text    = $arg6
    
    # ---------------------------------------------------
    $res_path = [IO.Directory]::Exists($arg1)
    $res_file = [IO.File]::Exists($arg1 + "\fpc.exe")
    if ($res_path -and $res_file) {
        $checkFPC.Text = [string][char]0x50
    }   else {
        $checkFPC.Text = [string][char]0x4f
    }
    # ---------------------------------------------------
    $res_path = [IO.Directory]::Exists($arg2)
    $res_file = [IO.File]::Exists($arg2 + "\nasm.exe")
    if ($res_path -and $res_file) {
        $checkNASM.Text = [string][char]0x50
    }   else {
        $checkNASM.Text = [string][char]0x4f
    }
    # ---------------------------------------------------
    $res_path = [IO.Directory]::Exists($arg3)
    $res_file = [IO.File]::Exists($arg3 + "\bin\gcc.exe")
    if ($res_path -and $res_file) {
        $checkMSYS2.Text = [string][char]0x50
    }   else {
        $checkMSYS2.Text = [string][char]0x4f
    }
    
    # ---------------------------------------------------
    # event listener ...
    # ---------------------------------------------------
    $searchButtonFPC.Add_Click({
        $path = Read-FolderBrowseDialog Desktop
        $textBoxTempFPC = $path
        $form.Dispose()
        
        $res_path = [IO.Directory]::Exists($path)
        $res_file = [IO.File]::Exists($path + "\fpc.exe")
        
        if ($res_path -and $res_file) {
            $checkFPCText  = [string][char]0x50 } else {
            $checkFPCText  = [string][char]0x4f }
        Main $textBoxTempFPC $textBoxTempNASM $textBoxTempMSYS2 $checkFPCText $checkNASMText $checkMSYS2Text
    })
    $searchButtonNASM.Add_Click({
        $res = Read-FolderBrowseDialog Desktop
        $textBoxTempNASM = $res
        $form.Dispose()
        
        $res_path = [IO.Directory]::Exists($path)
        $res_file = [IO.File]::Exists($path + "\fpc.exe")
        
        if ($res_path -and $res_file) {
            $checkNASMText = [string][char]0x50 } else {
            $checkNASMText = [string][char]0x4f }
        Main $textBoxTempFPC $textBoxTempNASM $textBoxTempMSYS2 $checkFPCText $checkNASMText $checkMSYS2Text
    })
    $searchButtonMSYS2.Add_Click({
        $res = Read-FolderBrowseDialog Desktop
        $textBoxTempMSYS2 = $res
        $form.Dispose()
        
        $res_path = [IO.Directory]::Exists($path)
        $res_file = [IO.File]::Exists($path + "\fpc.exe")
        
        if ($res_path -and $res_file) {
            $checkMSYS2Text  = [string][char]0x50 } else {
            $checkMSYS2Text  = [string][char]0x4f }
        Main $textBoxTempFPC $textBoxTempNASM $textBoxTempMSYS2 $checkFPCText $checkNASMText $checkMSYS2Text
    })
    
    $progressBar.Value = 25
    [void]$form.ResumeLayout()

    $result = $form.ShowDialog()
    $form.Dispose()
}

# ----------------------------------------------------------------------------
# this is our entry point of script start ...
# ----------------------------------------------------------------------------
$arg4 = [string][char]0x4f
$arg5 = [string][char]0x4f
$arg6 = [string][char]0x4f

Main "E:\FPC\3.2.0\bin\i386-win32" "E:\NASM" "E:\MSYS64\mingw32" $arg4 $arg5 $arg6
