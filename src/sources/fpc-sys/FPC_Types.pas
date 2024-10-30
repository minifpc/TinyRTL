// ---------------------------------------------------------------------------
// File:   FPC_Types.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
{$ifndef __FPC_TYPES_HDR__}
{$define __FPC_TYPES_HDR__}
// ---------------------------------------------------------------------------
// 64-bit data types
// ---------------------------------------------------------------------------
type ShortBYTE  =                 -128..127;
type ShortWORD  =               -32768..32767;
type ShortDWORD =          -2147483648..2147483647;
type ShortQWORD = -9223372036854775808..9223372036854775807;

type LongBYTE   =  0..255;
type LongDWORD  =  0..4294967295;
type LongQWORD  =  0..18446744073709551615;

type LONG       = LongInt;

type Integer  = QWord;
type Cardinal = QWord;

type PtrUInt  = QWord;

type SizeInt = LongInt;

type DWORD  = LongDWORD;
type UINT   = LongDWORD;
type SIZE_T = LongDWORD;

type PByte  = ^Byte;

type CodePointer  =  Pointer;
type PPointer     = ^Pointer;

type PChar        = ^Char;
type PShortString = ^ShortString;

type TString      = PChar;
type AnsiChar     = Pointer;

type PAnsiChar    = ^AnsiChar;
type PAnsiString  = ^AnsiString;

type RawByteString = type AnsiString;

type ULONG     = LongDWORD;
type ULONG_PTR = ^ULONG;

type PLONG = ^LONG;

type
	TMsgStrTable = record
		name: PShortString;			// Message name
		method: CodePointer;		// Method to call
	end;

type
	TStringMessageTable = record
		count: LongDWord; 			// Number of messages in the string table.
		msgstrtable: array [0..0] of TMsgStrTable;
	end;

type
	PStringMessageTable = ^TStringMessageTable;

type
	PGuid = ^TGuid;
	TGuid = packed record
    case Integer of
        1 : (
            Data1 : LongDWord;
            Data2 : word;
            Data3 : word;
            Data4 : array[0..7] of byte;
        );
        2 : (
            D1 : LongDWord;
            D2 : word;
            D3 : word;
            D4 : array[0..7] of byte;
        );
        3 : ( { uuid fields according to RFC4122 }
            time_low : LongDWord;
            time_mid : word;
            time_hi_and_version : word;
            clock_seq_hi_and_reserved : byte;
            clock_seq_low : byte;
            node : array[0..5] of byte;
        );
    end;

type
	TInterfaceEntryType = (
		etStandard, 				// Standard entry
		etVirtualMethodResult,		// Virtual method
		etStaticMethodResult,		// Static method
		etFieldValue,				// Field value
		etVirtualMethodClass,		// Interface provided by a virtual class method
		etStaticMethodClass,		// Interface provided by a static class method
		etFieldValueClass			// Interface provided by a class field
	);

type
	TInterfaceEntry = record
		IID   : PGuid;
		IIDStr: PShortString;
		IIDRef: Pointer;
		VTable: Pointer;
		case Integer of
		1: (
			IOffset: LongDWord;
		);
		2: (
			IOffsetAsCodePtr: CodePointer;
			IIDStrRef       : Pointer;
			IType           : TInterfaceEntryType;
      );
	end;

type
	PInterfaceTable = ^TInterfaceTable;
	TInterfaceTable = record
		EntryCount: LongDWord;
		Entries: array [0..0] of TInterfaceEntry;
	end;

type
	PPVmt = ^PVmt;
	PVmt  = ^TVmt;
	TVmt = record
        vInstanceSize     : LongDWord;
       	vInstanceSize2    : LongDWord;
       	vParentRef        : PPVmt;
       	vClassName        : PShortString;
       	vDynamicTable     : Pointer;
       	vMethodTable      : Pointer;
       	vFieldTable       : Pointer;
       	vTypeInfo         : Pointer;
       	vInitTable        : Pointer;
       	vAutoTable        : Pointer;
       	vIntfTable        : PInterfaceTable;
       	vMsgStrPtr        : PStringMessageTable;
       	vDestroy          : CodePointer;
       	vNewInstance      : CodePointer;
       	vFreeInstance     : CodePointer;
       	vSafeCallException: CodePointer;
       	vDefaultHandler   : CodePointer;
       	vAfterConstruction: CodePointer;
       	vBeforeDestruction: CodePointer;
       	vDefaultHandlerStr: CodePointer;
       	vDispatch         : CodePointer;
       	vDispatchStr      : CodePointer;
       	vEquals           : CodePointer;
       	vGetHashCode      : CodePointer;
       	vToString         : CodePointer;
	private
		function GetvParent: PVmt; inline;
	public
		property vParent: PVmt read GetvParent;
	end;


type
	PJmp_buf = ^jmp_buf;
	jmp_buf  = packed record
		ebx:   LongDWord;
		esi:   LongDWord;
		edi:   LongDWord;
		bp:    Pointer;
		sp:    Pointer;
		pc:    Pointer;
	end;

type
	PExceptAddr = ^TExceptAddr;
	TExceptAddr = record
		buf       : pjmp_buf;
		next      : PExceptAddr;
		frametype : LongDword;
	end;

type
	FileRec = record
		Mode: LongInt;
	end;

type
	TTypeKind = (
		tkUnknown,		// Unknown property type.
		tkInteger,		// Integer property.
		tkChar, 		// Char property.
		tkEnumeration,	// Enumeration type property.
		tkFloat,		// Float property.
		tkSet,			// Set property.
		tkMethod,		// Method property.
		tkSString,		// Shortstring property.
		tkLString,		// Longstring property.
		tkAString,		// Ansistring property.
		tkWString,		// Widestring property.
		tkVariant,		// Variant property.
		tkArray,		// Array property.
		tkRecord,		// Record property.
		tkInterface,	// Interface property.
		tkClass,		// Class property.
		tkObject,		// Object property.
		tkWChar,		// Widechar property.
		tkBool,			// Boolean property.
		tkInt64,		// Int64 property.
		tkQWord,		// QWord property.
		tkDynArray, 	// Dynamic array property.
		tkInterfaceRaw, // Raw interface property.
		tkProcVar,		// Procedural variable
		tkUString,		// Unicode string
		tkUChar,		// Unicode character
		tkHelper,		// Helper type
		tkFile, 		// File type
		tkClassRef, 	// Class reference type
		tkPointer		// Generic pointer type
	);

type
	PText = ^Text;
	
	TextRec = packed  record
//		Handle    : THandle;
		Mode      : LongDWord;
		bufsize   : LongDWord;
		_private  : LongDWord;
		bufpos,
		bufend    : LongDWord;
//		bufptr    : ^textbuf;
//		openfunc,
//		inoutfunc,
//		flushfunc,
//		closefunc : codepointer;
//		UserData  : array[1..32] of byte;
//		name      : array[0..textrecnamelength-1] of TFileTextRecChar;
//		LineEnd   : TLineEndStr;
//		buffer    : textbuf;
  End;

Type
  TAnsiRec = record
    CodePage: UINT;
    Len     : ShortDWord;
  end;
  PAnsiRec = ^TAnsiRec;

const
  AnsiFirstOff = sizeof(TAnsiRec);

{$ifndef __WINDOWS_TYPES_HDR__}
{$I fpc_wintypes.pas}
{$endif}

{$endif}    //  __FPC_TYPES_HDR__
{$endif}    //  windows_header

{$ifdef windows_source}
{$mode delphi}

function Tvmt.GetvParent: Pvmt;
begin
    if vParentRef <> nil then
    result := vParentRef^ else
    result := nil;
end;

{$endif}
