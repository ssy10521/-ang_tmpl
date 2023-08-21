#!/usr/bin/env pwsh
$basedir=Split-Path $MyInvocation.MyCommand.Definition -Parent

$exe=""
if ($PSVersionTable.PSVersion -lt "6.0" -or $IsWindows) {
  # Fix case when both the Windows and Linux builds of Node
  # are installed in the same directory
  $exe=".exe"
}
$ret=0
#$angular_cli_bin="$basedir/../@angular/cli/bin"
$angular_cli_bin="$basedir/node_modules/@angular/cli/bin"
if (Test-Path "$basedir/node$exe") {
  # Support pipeline input
  if ($MyInvocation.ExpectingInput) {
    $input | & "$basedir/node$exe"  "$angular_cli_bin/ng.js" $args
  } else {
    & "$basedir/node$exe"  "$angular_cli_bin/ng.js" $args
  }
  $ret=$LASTEXITCODE
} else {
  # Support pipeline input
  if ($MyInvocation.ExpectingInput) {
    $input | & "node$exe"  "$angular_cli_bin/ng.js" $args
  } else {
    & "node$exe"  "$angular_cli_bin/ng.js" $args
  }
  $ret=$LASTEXITCODE
}
exit $ret
