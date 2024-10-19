// ---------------------------------------------------------------------------
// File:   FPC_WinErrors.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// ---------------------------------------------------------------------------
{$ifndef __WINDOWS_ERRORS_HDR__}
{$define __WINDOWS_ERRORS_HDR__}
{$M-}
const ERROR_SUCCESS             =  0;
const ERROR_INVALID_FUNCTION    =  1;
const ERROR_FILE_NOT_FOUND      =  2;
const ERROR_PATH_NOT_FOUND      =  3;
const ERROR_TOO_MANY_OPEN_FILES =  4;
const ERROR_ACCESS_DENIED       =  5;
const ERROR_INVALID_HANDLE      =  6;
const ERROR_INVALID_PARAMETER   = 87;

{$endif}    // __WINDOWS_ERRORS_HDR__
