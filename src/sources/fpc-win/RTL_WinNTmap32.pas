// ---------------------------------------------------------------------------
// File:   RTL_WinNTmap32.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}

// WINDOWS NT STATUS CODE               WIN32 ERROR CODE
{------------------------------------------------------------------}
const STATUS_DATATYPE_MISALIGNMENT                          ERROR_NOACCESS
const STATUS_ACCESS_VIOLATION                               ERROR_NOACCESS
const STATUS_DATATYPE_MISALIGNMENT_ERROR                    ERROR_NOACCESS

const STATUS_CTL_FILE_NOT_SUPPORTED                         ERROR_NOT_SUPPORTED

const STATUS_PORT_ALREADY_SET                               ERROR_INVALID_PARAMETER
const STATUS_SECTION_NOT_IMAGE                              ERROR_INVALID_PARAMETER
const STATUS_BAD_WORKING_SET_LIMIT                          ERROR_INVALID_PARAMETER
const STATUS_WORKING_SET_LIMIT_RANGE                        ERROR_INVALID_PARAMETER
const STATUS_INCOMPATIBLE_FILE_MAP                          ERROR_INVALID_PARAMETER
const STATUS_PORT_DISCONNECTED                              ERROR_INVALID_HANDLE

const STATUS_NOT_LOCKED                                     ERROR_NOT_LOCKED

const STATUS_NOT_MAPPED_VIEW                                ERROR_INVALID_ADDRESS
const STATUS_UNABLE_TO_FREE_VM                              ERROR_INVALID_PARAMETER
const STATUS_UNABLE_TO_DELETE_SECTION                       ERROR_INVALID_PARAMETER

const STATUS_MORE_PROCESSING_REQUIRED                       ERROR_MORE_DATA
const STATUS_INVALID_CID                                    ERROR_INVALID_PARAMETER

const STATUS_STACK_OVERFLOW                                 ERROR_STACK_OVERFLOW
const STATUS_BAD_INITIAL_STACK                              ERROR_STACK_OVERFLOW

const STATUS_INVALID_VOLUME_LABEL                           ERROR_LABEL_TOO_LONG
const STATUS_SECTION_NOT_EXTENDED                           ERROR_OUTOFMEMORY

const STATUS_NOT_MAPPED_DATA                                ERROR_INVALID_ADDRESS
const STATUS_NO_LDT                                         ERROR_INVALID_THREAD_ID

const STATUS_INFO_LENGTH_MISMATCH                           ERROR_BAD_LENGTH
const STATUS_INVALID_INFO_CLASS                             ERROR_INVALID_PARAMETER
const STATUS_SUSPEND_COUNT_EXCEEDED                         ERROR_SIGNAL_REFUSED,
const STATUS_NOTIFY_ENUM_DIR                                ERROR_NOTIFY_ENUM_DIR

const STATUS_REGISTRY_RECOVERED                             ERROR_REGISTRY_RECOVERED
const STATUS_REGISTRY_IO_FAILED                             ERROR_REGISTRY_IO_FAILED

const STATUS_NOT_REGISTRY_FILE                              ERROR_NOT_REGISTRY_FILE
const STATUS_KEY_DELETED                                    ERROR_KEY_DELETED
const STATUS_NO_LOG_SPACE                                   ERROR_NO_LOG_SPACE
const STATUS_KEY_HAS_CHILDREN                               ERROR_KEY_HAS_CHILDREN
const STATUS_CHILD_MUST_BE_VOLATILE                         ERROR_CHILD_MUST_BE_VOLATILE
const STATUS_REGISTRY_CORRUPT                               ERROR_BADDB
const STATUS_DLL_NOT_FOUND                                  ERROR_MOD_NOT_FOUND
const STATUS_DLL_INIT_FAILED                                ERROR_DLL_INIT_FAILED
const STATUS_INVALID_IMPORT_OF_NON_DLL                      ERROR_INVALID_IMPORT_OF_NON_DLL

const STATUS_ORDINAL_NOT_FOUND                              ERROR_INVALID_ORDINAL
const STATUS_DRIVER_ORDINAL_NOT_FOUND                       ERROR_INVALID_ORDINAL

const STATUS_DRIVER_UNABLE_TO_LOAD                          ERROR_BAD_DRIVER

const STATUS_ENTRYPOINT_NOT_FOUND                           ERROR_PROC_NOT_FOUND
const STATUS_DRIVER_ENTRYPOINT_NOT_FOUND                    ERROR_PROC_NOT_FOUND

const STATUS_PENDING                                        ERROR_IO_PENDING
const STATUS_MORE_ENTRIES                                   ERROR_MORE_DATA
const STATUS_INTEGER_OVERFLOW                               ERROR_ARITHMETIC_OVERFLOW
const STATUS_BUFFER_OVERFLOW                                ERROR_MORE_DATA

const STATUS_NO_MORE_FILES                                  ERROR_NO_MORE_FILES
const STATUS_NO_INHERITANCE                                 ERROR_NO_INHERITANCE
const STATUS_NO_MORE_EAS                                    ERROR_NO_MORE_ITEMS
const STATUS_NO_MORE_ENTRIES                                ERROR_NO_MORE_ITEMS
const STATUS_GUIDS_EXHAUSTED                                ERROR_NO_MORE_ITEMS
const STATUS_AGENTS_EXHAUSTED                               ERROR_NO_MORE_ITEMS

const STATUS_UNSUCCESSFUL                                   ERROR_GEN_FAILURE
const STATUS_TOO_MANY_LINKS                                 ERROR_TOO_MANY_LINKS

const STATUS_NOT_IMPLEMENTED                                ERROR_INVALID_FUNCTION
const STATUS_ILLEGAL_FUNCTION                               ERROR_INVALID_FUNCTION

const STATUS_IN_PAGE_ERROR                                  ERROR_SWAPERROR
const STATUS_PAGEFILE_QUOTA                                 ERROR_PAGEFILE_QUOTA
const STATUS_COMMITMENT_LIMIT                               ERROR_COMMITMENT_LIMIT
const STATUS_SECTION_TOO_BIG                                ERROR_NOT_ENOUGH_MEMORY

const RPC_NT_SS_IN_NULL_CONTEXT                             ERROR_INVALID_HANDLE
const RPC_NT_INVALID_BINDING                                ERROR_INVALID_HANDLE
const STATUS_INVALID_HANDLE                                 ERROR_INVALID_HANDLE
const STATUS_OBJECT_TYPE_MISMATCH                           ERROR_INVALID_HANDLE
const STATUS_FILE_CLOSED                                    ERROR_INVALID_HANDLE
const STATUS_INVALID_PORT_HANDLE                            ERROR_INVALID_HANDLE
const STATUS_HANDLE_NOT_CLOSABLE                            ERROR_INVALID_HANDLE
const STATUS_NOT_COMMITTED                                  ERROR_INVALID_ADDRESS

const STATUS_PARTIAL_COPY                                   ERROR_PARTIAL_COPY
const STATUS_LPC_REPLY_LOST                                 ERROR_INTERNAL_ERROR

const STATUS_INVALID_PARAMETER                              ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_1                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_2                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_3                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_4                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_5                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_6                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_7                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_8                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_9                            ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_10                           ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_11                           ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_12                           ERROR_INVALID_PARAMETER
const STATUS_INVALID_PARAMETER_MIX                          ERROR_INVALID_PARAMETER
const STATUS_INVALID_PAGE_PROTECTION                        ERROR_INVALID_PARAMETER
const STATUS_SECTION_PROTECTION                             ERROR_INVALID_PARAMETER

const STATUS_RESOURCE_DATA_NOT_FOUND                        ERROR_RESOURCE_DATA_NOT_FOUND
const STATUS_RESOURCE_TYPE_NOT_FOUND                        ERROR_RESOURCE_TYPE_NOT_FOUND
const STATUS_RESOURCE_NAME_NOT_FOUND                        ERROR_RESOURCE_NAME_NOT_FOUND
const STATUS_RESOURCE_LANG_NOT_FOUND                        ERROR_RESOURCE_LANG_NOT_FOUND

const STATUS_NO_SUCH_DEVICE                                 ERROR_FILE_NOT_FOUND
const STATUS_NO_SUCH_FILE                                   ERROR_FILE_NOT_FOUND

const STATUS_INVALID_DEVICE_REQUEST                         ERROR_INVALID_FUNCTION
const STATUS_VOLUME_NOT_UPGRADED                            ERROR_INVALID_FUNCTION

const STATUS_END_OF_FILE                                    ERROR_HANDLE_EOF
const STATUS_FILE_FORCED_CLOSED                             ERROR_HANDLE_EOF

const STATUS_WRONG_VOLUME                                   ERROR_WRONG_DISK
const STATUS_NO_MEDIA                                       ERROR_NO_MEDIA_IN_DRIVE

const STATUS_NO_MEDIA_IN_DEVICE                             ERROR_NOT_READY
const STATUS_VOLUME_DISMOUNTED                              ERROR_NOT_READY

const STATUS_NONEXISTENT_SECTOR                             ERROR_SECTOR_NOT_FOUND
const STATUS_WORKING_SET_QUOTA                              ERROR_WORKING_SET_QUOTA
const STATUS_NO_MEMORY                                      ERROR_NOT_ENOUGH_MEMORY

const STATUS_CONFLICTING_ADDRESSES                          ERROR_INVALID_ADDRESS
const STATUS_INVALID_SYSTEM_SERVICE                         ERROR_INVALID_FUNCTION

const STATUS_THREAD_IS_TERMINATING                          ERROR_ACCESS_DENIED
const STATUS_PROCESS_IS_TERMINATING                         ERROR_ACCESS_DENIED
const STATUS_INVALID_LOCK_SEQUENCE                          ERROR_ACCESS_DENIED
const STATUS_INVALID_VIEW_SIZE                              ERROR_ACCESS_DENIED
const STATUS_ALREADY_COMMITTED                              ERROR_ACCESS_DENIED
const STATUS_ACCESS_DENIED                                  ERROR_ACCESS_DENIED
const STATUS_FILE_IS_A_DIRECTORY                            ERROR_ACCESS_DENIED
const STATUS_CANNOT_DELETE                                  ERROR_ACCESS_DENIED

const STATUS_INVALID_COMPUTER_NAME                          ERROR_INVALID_COMPUTERNAME

const STATUS_FILE_DELETED                                   ERROR_ACCESS_DENIED
const STATUS_FILE_RENAMED                                   ERROR_ACCESS_DENIED
const STATUS_DELETE_PENDING                                 ERROR_ACCESS_DENIED
const STATUS_PORT_CONNECTION_REFUSED                        ERROR_ACCESS_DENIED

const STATUS_NO_SUCH_PRIVILEGE                              ERROR_NO_SUCH_PRIVILEGE
const STATUS_PRIVILEGE_NOT_HELD                             ERROR_PRIVILEGE_NOT_HELD
const STATUS_CANNOT_IMPERSONATE                             ERROR_CANNOT_IMPERSONATE
const STATUS_LOGON_FAILURE                                  ERROR_LOGON_FAILURE
const STATUS_MUTUAL_AUTHENTICATION_FAILED                   ERROR_MUTUAL_AUTH_FAILED
const STATUS_TIME_DIFFERENCE_AT_DC                          ERROR_TIME_SKEW
const STATUS_PKINIT_FAILURE                                 ERROR_PKINIT_FAILURE
const STATUS_SMARTCARD_SUBSYSTEM_FAILURE                    ERROR_SMARTCARD_SUBSYSTEM_FAILURE
const STATUS_DOWNGRADE_DETECTED                             ERROR_DOWNGRADE_DETECTED

const STATUS_SMARTCARD_CERT_REVOKED                         SEC_E_SMARTCARD_CERT_REVOKED
const STATUS_ISSUING_CA_UNTRUSTED                           SEC_E_ISSUING_CA_UNTRUSTED
const STATUS_REVOCATION_OFFLINE_C                           SEC_E_REVOCATION_OFFLINE_C
const STATUS_PKINIT_CLIENT_FAILURE                          SEC_E_PKINIT_CLIENT_FAILURE
const STATUS_SMARTCARD_CERT_EXPIRED                         SEC_E_SMARTCARD_CERT_EXPIRED
const STATUS_NO_KERB_KEY                                    SEC_E_NO_KERB_KEY

const STATUS_CURRENT_DOMAIN_NOT_ALLOWED                     ERROR_CURRENT_DOMAIN_NOT_ALLOWED

const STATUS_SMARTCARD_WRONG_PIN                            SCARD_W_WRONG_CHV
const STATUS_SMARTCARD_CARD_BLOCKED                         SCARD_W_CHV_BLOCKED
const STATUS_SMARTCARD_CARD_NOT_AUTHENTICATED               SCARD_W_CARD_NOT_AUTHENTICATED

const STATUS_SMARTCARD_NO_CARD                              SCARD_E_NO_SMARTCARD
const STATUS_SMARTCARD_NO_KEY_CONTAINER                     NTE_NO_KEY
const STATUS_SMARTCARD_NO_CERTIFICATE                       SCARD_E_NO_SUCH_CERTIFICATE
const STATUS_SMARTCARD_NO_KEYSET                            NTE_BAD_KEYSET
const STATUS_SMARTCARD_IO_ERROR                             SCARD_E_COMM_DATA_LOST
const STATUS_ACCOUNT_RESTRICTION                            ERROR_ACCOUNT_RESTRICTION

const STATUS_INVALID_LOGON_HOURS                            ERROR_INVALID_LOGON_HOURS
const STATUS_INVALID_WORKSTATION                            ERROR_INVALID_WORKSTATION

const STATUS_BUFFER_TOO_SMALL                               ERROR_INSUFFICIENT_BUFFER
const STATUS_UNABLE_TO_DECOMMIT_VM                          ERROR_INVALID_ADDRESS
const STATUS_DISK_CORRUPT_ERROR                             ERROR_DISK_CORRUPT

const STATUS_FT_MISSING_MEMBER                              ERROR_IO_DEVICE
const STATUS_FT_ORPHANING                                   ERROR_IO_DEVICE

const STATUS_VARIABLE_NOT_FOUND                             ERROR_ENVVAR_NOT_FOUND
const STATUS_OBJECT_NAME_INVALID                            ERROR_INVALID_NAME
const STATUS_OBJECT_NAME_NOT_FOUND                          ERROR_FILE_NOT_FOUND
const STATUS_OBJECT_NAME_COLLISION                          ERROR_ALREADY_EXISTS
const STATUS_OBJECT_PATH_INVALID                            ERROR_BAD_PATHNAME

const STATUS_OBJECT_PATH_NOT_FOUND                          ERROR_PATH_NOT_FOUND
const STATUS_DFS_EXIT_PATH_FOUND                            ERROR_PATH_NOT_FOUND

const STATUS_DFS_UNAVAILABLE                                ERROR_CONNECTION_UNAVAIL
const STATUS_OBJECT_PATH_SYNTAX_BAD                         ERROR_BAD_PATHNAME
const STATUS_NAME_TOO_LONG                                  ERROR_FILENAME_EXCED_RANGE

const STATUS_DATA_OVERRUN                                   ERROR_IO_DEVICE
const STATUS_DATA_LATE_ERROR                                ERROR_IO_DEVICE

const STATUS_DATA_ERROR                                     ERROR_CRC
const STATUS_CRC_ERROR                                      ERROR_CRC

const STATUS_SHARING_VIOLATION                              ERROR_SHARING_VIOLATION

const STATUS_QUOTA_EXCEEDED                                 ERROR_NOT_ENOUGH_QUOTA
const STATUS_MUTANT_NOT_OWNED                               ERROR_NOT_OWNER

const STATUS_SEMAPHORE_LIMIT_EXCEEDED                       ERROR_TOO_MANY_POSTS
const STATUS_DISK_FULL                                      ERROR_DISK_FULL

const STATUS_LOCK_NOT_GRANTED                               ERROR_LOCK_VIOLATION
const STATUS_FILE_LOCK_CONFLICT                             ERROR_LOCK_VIOLATION

const STATUS_NOT_A_DIRECTORY                                ERROR_DIRECTORY
const STATUS_CANNOT_MAKE                                    ERROR_CANNOT_MAKE
const STATUS_UNKNOWN_REVISION                               ERROR_UNKNOWN_REVISION
const STATUS_REVISION_MISMATCH                              ERROR_REVISION_MISMATCH

const STATUS_INVALID_OWNER                                  ERROR_INVALID_OWNER
const STATUS_INVALID_PRIMARY_GROUP                          ERROR_INVALID_PRIMARY_GROUP

const STATUS_NO_IMPERSONATION_TOKEN                         ERROR_NO_IMPERSONATION_TOKEN
const STATUS_CANT_DISABLE_MANDATORY                         ERROR_CANT_DISABLE_MANDATORY
const STATUS_NO_LOGON_SERVERS                               ERROR_NO_LOGON_SERVERS
const STATUS_DOMAIN_CONTROLLER_NOT_FOUND                    ERROR_DOMAIN_CONTROLLER_NOT_FOUND
const STATUS_NO_SUCH_LOGON_SESSION                          ERROR_NO_SUCH_LOGON_SESSION
const STATUS_INVALID_ACCOUNT_NAME                           ERROR_INVALID_ACCOUNT_NAME
const STATUS_USER_EXISTS                                    ERROR_USER_EXISTS
const STATUS_NO_SUCH_USER                                   ERROR_NO_SUCH_USER
const STATUS_GROUP_EXISTS                                   ERROR_GROUP_EXISTS
const STATUS_NO_SUCH_GROUP                                  ERROR_NO_SUCH_GROUP
const STATUS_SPECIAL_GROUP                                  ERROR_SPECIAL_GROUP

const STATUS_MEMBER_IN_GROUP                                ERROR_MEMBER_IN_GROUP
const STATUS_MEMBER_NOT_IN_GROUP                            ERROR_MEMBER_NOT_IN_GROUP

const STATUS_LAST_ADMIN                                     ERROR_LAST_ADMIN

const STATUS_WRONG_PASSWORD                                 ERROR_INVALID_PASSWORD
const STATUS_WRONG_PASSWORD_CORE                            ERROR_INVALID_PASSWORD

const STATUS_ILL_FORMED_PASSWORD                            ERROR_ILL_FORMED_PASSWORD

const STATUS_PASSWORD_RESTRICTION                           ERROR_PASSWORD_RESTRICTION
const STATUS_PASSWORD_EXPIRED                               ERROR_PASSWORD_EXPIRED
const STATUS_PASSWORD_MUST_CHANGE                           ERROR_PASSWORD_MUST_CHANGE

const STATUS_ACCOUNT_DISABLED                               ERROR_ACCOUNT_DISABLED
const STATUS_ACCOUNT_LOCKED_OUT                             ERROR_ACCOUNT_LOCKED_OUT

const STATUS_NONE_MAPPED                                    ERROR_NONE_MAPPED
const STATUS_TOO_MANY_LUIDS_REQUESTED                       ERROR_TOO_MANY_LUIDS_REQUESTED
const STATUS_LUIDS_EXHAUSTED                                ERROR_LUIDS_EXHAUSTED
const STATUS_INVALID_SUB_AUTHORITY                          ERROR_INVALID_SUB_AUTHORITY

const STATUS_INVALID_ACL                                    ERROR_INVALID_ACL,
const STATUS_INVALID_SID                                    ERROR_INVALID_SID
const STATUS_INVALID_SECURITY_DESCR                         ERROR_INVALID_SECURITY_DESCR

const STATUS_PROCEDURE_NOT_FOUND                            ERROR_PROC_NOT_FOUND

const STATUS_BAD_INITIAL_PC                                 ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_FILE_FOR_SECTION                       ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_FORMAT                           ERROR_BAD_EXE_FORMAT
const STATUS_IMAGE_MP_UP_MISMATCH                           ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_NOT_MZ                           ERROR_BAD_EXE_FORMAT
const STATUS_IMAGE_CHECKSUM_MISMATCH                        ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_PROTECT                          ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_LE_FORMAT                        ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_NE_FORMAT                        ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_WIN_16                           ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_WIN_32                           ERROR_BAD_EXE_FORMAT
const STATUS_INVALID_IMAGE_WIN_64                           ERROR_BAD_EXE_FORMAT

const STATUS_NO_TOKEN                                       ERROR_NO_TOKEN
const STATUS_RANGE_NOT_LOCKED                               ERROR_NOT_LOCKED

const STATUS_SERVER_DISABLED                                ERROR_SERVER_DISABLED
const STATUS_SERVER_NOT_DISABLED                            ERROR_SERVER_NOT_DISABLED

const STATUS_INVALID_ID_AUTHORITY                           ERROR_INVALID_ID_AUTHORITY
const STATUS_ALLOTTED_SPACE_EXCEEDED                        ERROR_ALLOTTED_SPACE_EXCEEDED
const STATUS_TOO_MANY_PAGING_FILES                          ERROR_NOT_ENOUGH_MEMORY
const STATUS_INSUFFICIENT_RESOURCES                         ERROR_NO_SYSTEM_RESOURCES
const STATUS_INSUFF_SERVER_RESOURCES                        ERROR_NOT_ENOUGH_SERVER_MEMORY

const STATUS_FILE_INVALID                                   ERROR_FILE_INVALID
const STATUS_MAPPED_FILE_SIZE_ZERO                          ERROR_FILE_INVALID

const STATUS_DEVICE_PAPER_EMPTY                             ERROR_OUT_OF_PAPER

const STATUS_DEVICE_POWERED_OFF                             ERROR_NOT_READY
const STATUS_DEVICE_OFF_LINE                                ERROR_NOT_READY

const STATUS_DEVICE_DATA_ERROR                              ERROR_CRC
const STATUS_DEVICE_NOT_READY                               ERROR_NOT_READY
const STATUS_DEVICE_NOT_CONNECTED                           ERROR_DEVICE_NOT_CONNECTED

const STATUS_DEVICE_POWER_FAILURE                           ERROR_NOT_READY
const STATUS_NOT_FOUND                                      ERROR_NOT_FOUND

const STATUS_NO_MATCH                                       ERROR_NO_MATCH
const STATUS_PROPSET_NOT_FOUND                              ERROR_SET_NOT_FOUND
const STATUS_DEVICE_BUSY                                    ERROR_BUSY

const STATUS_FREE_VM_NOT_AT_BASE                            ERROR_INVALID_ADDRESS
const STATUS_MEMORY_NOT_ALLOCATED                           ERROR_INVALID_ADDRESS

const STATUS_NOT_SAME_DEVICE                                ERROR_NOT_SAME_DEVICE
const STATUS_NOT_SUPPORTED                                  ERROR_NOT_SUPPORTED

const STATUS_REMOTE_NOT_LISTENING                           ERROR_REM_NOT_LIST
const STATUS_DUPLICATE_NAME                                 ERROR_DUP_NAME
const STATUS_BAD_NETWORK_PATH                               ERROR_BAD_NETPATH
const STATUS_NETWORK_BUSY                                   ERROR_NETWORK_BUSY
const STATUS_ONLY_IF_CONNECTED                              ERROR_ONLY_IF_CONNECTED
const STATUS_DEVICE_DOES_NOT_EXIST                          ERROR_DEV_NOT_EXIST
const STATUS_TOO_MANY_COMMANDS                              ERROR_TOO_MANY_CMDS
const STATUS_ADAPTER_HARDWARE_ERROR                         ERROR_ADAP_HDW_ERR
const STATUS_REDIRECTOR_NOT_STARTED                         ERROR_PATH_NOT_FOUND
const STATUS_INVALID_EA_NAME                                ERROR_INVALID_EA_NAME

const STATUS_EA_LIST_INCONSISTENT                           ERROR_EA_LIST_INCONSISTENT
const STATUS_EA_TOO_LARGE                                   ERROR_EA_LIST_INCONSISTENT
const STATUS_INVALID_EA_FLAG                                ERROR_EA_LIST_INCONSISTENT

const STATUS_EAS_NOT_SUPPORTED                              ERROR_EAS_NOT_SUPPORTED

const STATUS_FILE_CORRUPT_ERROR                             ERROR_FILE_CORRUPT
const STATUS_EA_CORRUPT_ERROR                               ERROR_FILE_CORRUPT
const STATUS_NONEXISTENT_EA_ENTRY                           ERROR_FILE_CORRUPT
const STATUS_NO_EAS_ON_FILE                                 ERROR_FILE_CORRUPT

const STATUS_NOT_A_REPARSE_POINT                            ERROR_NOT_A_REPARSE_POINT

const STATUS_IO_REPARSE_TAG_INVALID                         ERROR_REPARSE_TAG_INVALID
const STATUS_IO_REPARSE_TAG_MISMATCH                        ERROR_REPARSE_TAG_MISMATCH

const STATUS_IO_REPARSE_TAG_NOT_HANDLED                     ERROR_CANT_ACCESS_FILE
const STATUS_REPARSE_POINT_NOT_RESOLVED                     ERROR_CANT_RESOLVE_FILENAME

const STATUS_DIRECTORY_IS_A_REPARSE_POINT                   ERROR_BAD_PATHNAME
const STATUS_REPARSE_ATTRIBUTE_CONFLICT                     ERROR_REPARSE_ATTRIBUTE_CONFLICT
const STATUS_IO_REPARSE_DATA_INVALID                        ERROR_INVALID_REPARSE_DATA
const STATUS_FILE_IS_OFFLINE                                ERROR_FILE_OFFLINE

const STATUS_REMOTE_STORAGE_NOT_ACTIVE                      ERROR_REMOTE_STORAGE_NOT_ACTIVE
const STATUS_REMOTE_STORAGE_MEDIA_ERROR                     ERROR_REMOTE_STORAGE_MEDIA_ERROR 

const STATUS_NO_TRACKING_SERVICE                            ERROR_NO_TRACKING_SERVICE

const STATUS_JOURNAL_DELETE_IN_PROGRESS                     ERROR_JOURNAL_DELETE_IN_PROGRESS
const STATUS_JOURNAL_NOT_ACTIVE                             ERROR_JOURNAL_NOT_ACTIVE
const STATUS_JOURNAL_ENTRY_DELETED                          ERROR_JOURNAL_ENTRY_DELETED

const STATUS_INVALID_NETWORK_RESPONSE                       ERROR_BAD_NET_RESP

const STATUS_USER_SESSION_DELETED                           ERROR_UNEXP_NET_ERR
const STATUS_UNEXPECTED_NETWORK_ERROR                       ERROR_UNEXP_NET_ERR
const STATUS_USER_SESSION_DELETED                           ERROR_UNEXP_NET_ERR

const STATUS_BAD_REMOTE_ADAPTER                             ERROR_BAD_REM_ADAP
const STATUS_PRINT_QUEUE_FULL                               ERROR_PRINTQ_FULL
const STATUS_NO_SPOOL_SPACE                                 ERROR_NO_SPOOL_SPACE
const STATUS_PRINT_CANCELLED                                ERROR_PRINT_CANCELLED

const STATUS_NETWORK_NAME_DELETED                           ERROR_NETNAME_DELETED
const STATUS_NETWORK_ACCESS_DENIED                          ERROR_NETWORK_ACCESS_DENIED

const STATUS_BAD_DEVICE_TYPE                                ERROR_BAD_DEV_TYPE
const STATUS_BAD_NETWORK_NAME                               ERROR_BAD_NET_NAME

const STATUS_TOO_MANY_NAMES                                 ERROR_TOO_MANY_NAMES
const STATUS_TOO_MANY_GUIDS_REQUESTED                       ERROR_TOO_MANY_NAMES
const STATUS_TOO_MANY_ADDRESSES                             ERROR_TOO_MANY_NAMES
const STATUS_TOO_MANY_NODES                                 ERROR_TOO_MANY_NAMES
const STATUS_TOO_MANY_SESSIONS                              ERROR_TOO_MANY_SESS

const STATUS_SHARING_PAUSED                                 ERROR_SHARING_PAUSED
const STATUS_REQUEST_NOT_ACCEPTED                           ERROR_REQ_NOT_ACCEP
const STATUS_REDIRECTOR_PAUSED                              ERROR_REDIR_PAUSED
const STATUS_NET_WRITE_FAULT                                ERROR_NET_WRITE_FAULT
const STATUS_VIRTUAL_CIRCUIT_CLOSED                         ERROR_VC_DISCONNECTED

const STATUS_INVALID_PIPE_STATE                             ERROR_BAD_PIPE
const STATUS_INVALID_READ_MODE                              ERROR_BAD_PIPE

const STATUS_PIPE_CLOSING                                   ERROR_NO_DATA
const STATUS_PIPE_EMPTY                                     ERROR_NO_DATA

const STATUS_PIPE_CONNECTED                                 ERROR_PIPE_CONNECTED
const STATUS_PIPE_DISCONNECTED                              ERROR_PIPE_NOT_CONNECTED
const STATUS_PIPE_LISTENING                                 ERROR_PIPE_LISTENING
const STATUS_PIPE_NOT_AVAILABLE                             ERROR_PIPE_BUSY
const STATUS_INSTANCE_NOT_AVAILABLE                         ERROR_PIPE_BUSY
const STATUS_PIPE_BUSY                                      ERROR_PIPE_BUSY

const STATUS_PIPE_BROKEN                                    ERROR_BROKEN_PIPE
const STATUS_DIRECTORY_NOT_EMPTY                            ERROR_DIR_NOT_EMPTY
const STATUS_TOO_MANY_OPENED_FILES                          ERROR_TOO_MANY_OPEN_FILES
const STATUS_IO_TIMEOUT                                     ERROR_SEM_TIMEOUT
const STATUS_CANCELLED                                      ERROR_OPERATION_ABORTED
const STATUS_UNRECOGNIZED_MEDIA                             ERROR_UNRECOGNIZED_MEDIA
const STATUS_INVALID_LEVEL                                  ERROR_INVALID_LEVEL
const STATUS_UNRECOGNIZED_VOLUME                            ERROR_UNRECOGNIZED_VOLUME
const STATUS_MEDIA_WRITE_PROTECTED                          ERROR_WRITE_PROTECT
const STATUS_TOO_LATE                                       ERROR_WRITE_PROTECT
const STATUS_SUCCESS                                        NO_ERROR
const STATUS_FULLSCREEN_MODE                                ERROR_FULLSCREEN_MODE
const STATUS_END_OF_MEDIA                                   ERROR_END_OF_MEDIA
const STATUS_EOM_OVERFLOW                                   ERROR_EOM_OVERFLOW
const STATUS_BEGINNING_OF_MEDIA                             ERROR_BEGINNING_OF_MEDIA
const STATUS_MEDIA_CHANGED                                  ERROR_MEDIA_CHANGED
const STATUS_BUS_RESET                                      ERROR_BUS_RESET
const STATUS_FILEMARK_DETECTED                              ERROR_FILEMARK_DETECTED
const STATUS_SETMARK_DETECTED                               ERROR_SETMARK_DETECTED
const STATUS_NO_DATA_DETECTED                               ERROR_NO_DATA_DETECTED
const STATUS_PARTITION_FAILURE                              ERROR_PARTITION_FAILURE
const STATUS_INVALID_BLOCK_LENGTH                           ERROR_INVALID_BLOCK_LENGTH
const STATUS_DEVICE_NOT_PARTITIONED                         ERROR_DEVICE_NOT_PARTITIONED

const STATUS_UNABLE_TO_LOCK_MEDIA                           ERROR_UNABLE_TO_LOCK_MEDIA
const STATUS_UNABLE_TO_UNLOAD_MEDIA                         ERROR_UNABLE_TO_UNLOAD_MEDIA

const STATUS_UNMAPPABLE_CHARACTER                           ERROR_NO_UNICODE_TRANSLATION
const STATUS_NOT_ALL_ASSIGNED                               ERROR_NOT_ALL_ASSIGNED
const STATUS_SOME_NOT_MAPPED                                ERROR_SOME_NOT_MAPPED
const STATUS_NO_QUOTAS_FOR_ACCOUNT                          ERROR_NO_QUOTAS_FOR_ACCOUNT
const STATUS_LOCAL_USER_SESSION_KEY                         ERROR_LOCAL_USER_SESSION_KEY
const STATUS_NULL_LM_PASSWORD                               ERROR_NULL_LM_PASSWORD
const STATUS_BAD_INHERITANCE_ACL                            ERROR_BAD_INHERITANCE_ACL
const STATUS_INVALID_GROUP_ATTRIBUTES                       ERROR_INVALID_GROUP_ATTRIBUTES
const STATUS_BAD_IMPERSONATION_LEVEL                        ERROR_BAD_IMPERSONATION_LEVEL
const STATUS_CANT_OPEN_ANONYMOUS                            ERROR_CANT_OPEN_ANONYMOUS

const STATUS_BAD_VALIDATION_CLASS                           ERROR_BAD_VALIDATION_CLASS
const STATUS_BAD_TOKEN_TYPE                                 ERROR_BAD_TOKEN_TYPE

const STATUS_BAD_MASTER_BOOT_RECORD                         ERROR_INVALID_PARAMETER
const STATUS_NO_SECURITY_ON_OBJECT                          ERROR_NO_SECURITY_ON_OBJECT
const STATUS_CANT_ACCESS_DOMAIN_INFO                        ERROR_CANT_ACCESS_DOMAIN_INFO

const STATUS_INVALID_SERVER_STATE                           ERROR_INVALID_SERVER_STATE
const STATUS_INVALID_DOMAIN_STATE                           ERROR_INVALID_DOMAIN_STATE
const STATUS_INVALID_DOMAIN_ROLE                            ERROR_INVALID_DOMAIN_ROLE

const STATUS_NO_SUCH_DOMAIN                                 ERROR_NO_SUCH_DOMAIN

const STATUS_DOMAIN_EXISTS                                  ERROR_DOMAIN_EXISTS
const STATUS_DOMAIN_LIMIT_EXCEEDED                          ERROR_DOMAIN_LIMIT_EXCEEDED

const STATUS_OPLOCK_NOT_GRANTED                             ERROR_OPLOCK_NOT_GRANTED
const STATUS_INVALID_OPLOCK_PROTOCOL                        ERROR_INVALID_OPLOCK_PROTOCOL

const STATUS_INTERNAL_DB_CORRUPTION                         ERROR_INTERNAL_DB_CORRUPTION
const STATUS_INTERNAL_ERROR                                 ERROR_INTERNAL_ERROR

const STATUS_GENERIC_NOT_MAPPED                             ERROR_GENERIC_NOT_MAPPED
const STATUS_BAD_DESCRIPTOR_FORMAT                          ERROR_BAD_DESCRIPTOR_FORMAT
const STATUS_NOT_LOGON_PROCESS                              ERROR_NOT_LOGON_PROCESS
const STATUS_LOGON_SESSION_EXISTS                           ERROR_LOGON_SESSION_EXISTS
const STATUS_NO_SUCH_PACKAGE                                ERROR_NO_SUCH_PACKAGE
const STATUS_BAD_LOGON_SESSION_STATE                        ERROR_BAD_LOGON_SESSION_STATE
const STATUS_LOGON_SESSION_COLLISION                        ERROR_LOGON_SESSION_COLLISION
const STATUS_INVALID_LOGON_TYPE                             ERROR_INVALID_LOGON_TYPE

const STATUS_RXACT_INVALID_STATE                            ERROR_RXACT_INVALID_STATE
const STATUS_RXACT_COMMIT_FAILURE                           ERROR_RXACT_COMMIT_FAILURE

const STATUS_SPECIAL_ACCOUNT                                ERROR_SPECIAL_ACCOUNT
const STATUS_SPECIAL_USER                                   ERROR_SPECIAL_USER

const STATUS_MEMBERS_PRIMARY_GROUP                          ERROR_MEMBERS_PRIMARY_GROUP
const STATUS_TOKEN_ALREADY_IN_USE                           ERROR_TOKEN_ALREADY_IN_USE
const STATUS_NO_SUCH_ALIAS                                  ERROR_NO_SUCH_ALIAS

const STATUS_MEMBER_NOT_IN_ALIAS                            ERROR_MEMBER_NOT_IN_ALIAS
const STATUS_MEMBER_IN_ALIAS                                ERROR_MEMBER_IN_ALIAS

const STATUS_ALIAS_EXISTS                                   ERROR_ALIAS_EXISTS
const STATUS_LOGON_NOT_GRANTED                              ERROR_LOGON_NOT_GRANTED
const STATUS_TOO_MANY_SECRETS                               ERROR_TOO_MANY_SECRETS
const STATUS_SECRET_TOO_LONG                                ERROR_SECRET_TOO_LONG
const STATUS_INTERNAL_DB_ERROR                              ERROR_INTERNAL_DB_ERROR
const STATUS_TOO_MANY_CONTEXT_IDS                           ERROR_TOO_MANY_CONTEXT_IDS
const STATUS_LOGON_TYPE_NOT_GRANTED                         ERROR_LOGON_TYPE_NOT_GRANTED
const STATUS_NT_CROSS_ENCRYPTION_REQUIRED                   ERROR_NT_CROSS_ENCRYPTION_REQUIRED
const STATUS_NO_SUCH_MEMBER                                 ERROR_NO_SUCH_MEMBER
const STATUS_INVALID_MEMBER                                 ERROR_INVALID_MEMBER
const STATUS_TOO_MANY_SIDS                                  ERROR_TOO_MANY_SIDS
const STATUS_LM_CROSS_ENCRYPTION_REQUIRED                   ERROR_LM_CROSS_ENCRYPTION_REQUIRED
const STATUS_MESSAGE_NOT_FOUND                              ERROR_MR_MID_NOT_FOUND

const STATUS_LOCAL_DISCONNECT                               ERROR_NETNAME_DELETED
const STATUS_REMOTE_DISCONNECT                              ERROR_NETNAME_DELETED

const STATUS_REMOTE_RESOURCES                               ERROR_REM_NOT_LIST

const STATUS_LINK_FAILED                                    ERROR_UNEXP_NET_ERR
const STATUS_LINK_TIMEOUT                                   ERROR_UNEXP_NET_ERR
const STATUS_INVALID_CONNECTION                             ERROR_UNEXP_NET_ERR
const STATUS_INVALID_ADDRESS                                ERROR_UNEXP_NET_ERR

const STATUS_IO_DEVICE_ERROR                                ERROR_IO_DEVICE
const STATUS_DEVICE_PROTOCOL_ERROR                          ERROR_IO_DEVICE
const STATUS_DRIVER_INTERNAL_ERROR                          ERROR_IO_DEVICE

const STATUS_INVALID_DEVICE_STATE                           ERROR_BAD_COMMAND
const STATUS_DEVICE_CONFIGURATION_ERROR                     ERROR_INVALID_PARAMETER
const STATUS_SOURCE_ELEMENT_EMPTY                           ERROR_SOURCE_ELEMENT_EMPTY
const STATUS_DESTINATION_ELEMENT_FULL                       ERROR_DESTINATION_ELEMENT_FULL
const STATUS_ILLEGAL_ELEMENT_ADDRESS                        ERROR_ILLEGAL_ELEMENT_ADDRESS
const STATUS_MAGAZINE_NOT_PRESENT                           ERROR_MAGAZINE_NOT_PRESENT

const STATUS_REINITIALIZATION_NEEDED                        ERROR_DEVICE_REINITIALIZATION_NEEDED
const STATUS_DEVICE_REQUIRES_CLEANING                       ERROR_DEVICE_REQUIRES_CLEANING
const STATUS_DEVICE_DOOR_OPEN                               ERROR_DEVICE_DOOR_OPEN

const STATUS_TRANSPORT_FULL                                 ERROR_TRANSPORT_FULL
const STATUS_CLEANER_CARTRIDGE_INSTALLED                    ERROR_CLEANER_CARTRIDGE_INSTALLED
const STATUS_REG_NAT_CONSUMPTION                            ERROR_REG_NAT_CONSUMPTION

const STATUS_ENCRYPTION_FAILED                              ERROR_ACCESS_DENIED
const STATUS_DECRYPTION_FAILED                              ERROR_ACCESS_DENIED
const STATUS_NO_RECOVERY_POLICY                             ERROR_ACCESS_DENIED
const STATUS_NO_EFS                                         ERROR_ACCESS_DENIED
const STATUS_WRONG_EFS                                      ERROR_ACCESS_DENIED
const STATUS_NO_USER_KEYS                                   ERROR_ACCESS_DENIED

const STATUS_FILE_NOT_ENCRYPTED                             ERROR_FILE_NOT_ENCRYPTED
const STATUS_NOT_EXPORT_FORMAT                              ERROR_NOT_EXPORT_FORMAT
const STATUS_FILE_ENCRYPTED                                 ERROR_FILE_ENCRYPTED
const STATUS_EFS_ALG_BLOB_TOO_BIG                           ERROR_EFS_ALG_BLOB_TOO_BIG
const STATUS_INVALID_USER_BUFFER                            ERROR_INVALID_USER_BUFFER
const STATUS_SERIAL_NO_DEVICE_INITED                        ERROR_SERIAL_NO_DEVICE
const STATUS_SHARED_IRQ_BUSY                                ERROR_IRQ_BUSY
const STATUS_SERIAL_MORE_WRITES                             ERROR_MORE_WRITES
const STATUS_SERIAL_COUNTER_TIMEOUT                         ERROR_COUNTER_TIMEOUT

const STATUS_FLOPPY_ID_MARK_NOT_FOUND                       ERROR_FLOPPY_ID_MARK_NOT_FOUND
const STATUS_FLOPPY_WRONG_CYLINDER                          ERROR_FLOPPY_WRONG_CYLINDER
const STATUS_FLOPPY_UNKNOWN_ERROR                           ERROR_FLOPPY_UNKNOWN_ERROR
const STATUS_FLOPPY_BAD_REGISTERS                           ERROR_FLOPPY_BAD_REGISTERS

const STATUS_DISK_RECALIBRATE_FAILED                        ERROR_DISK_RECALIBRATE_FAILED
const STATUS_DISK_OPERATION_FAILED                          ERROR_DISK_OPERATION_FAILED
const STATUS_DISK_RESET_FAILED                              ERROR_DISK_RESET_FAILED

const STATUS_EVENTLOG_FILE_CORRUPT                          ERROR_EVENTLOG_FILE_CORRUPT
const STATUS_EVENTLOG_CANT_START                            ERROR_EVENTLOG_CANT_START

const STATUS_NETLOGON_NOT_STARTED                           ERROR_NETLOGON_NOT_STARTED
const STATUS_ACCOUNT_EXPIRED                                ERROR_ACCOUNT_EXPIRED
const STATUS_NETWORK_CREDENTIAL_CONFLICT                    ERROR_SESSION_CREDENTIAL_CONFLICT
const STATUS_REMOTE_SESSION_LIMIT                           ERROR_REMOTE_SESSION_LIMIT_EXCEEDED

const STATUS_INVALID_BUFFER_SIZE                            ERROR_INVALID_USER_BUFFER
const STATUS_INVALID_ADDRESS_COMPONENT                      ERROR_INVALID_NETNAME
const STATUS_INVALID_ADDRESS_WILDCARD                       ERROR_INVALID_NETNAME

const STATUS_ADDRESS_ALREADY_EXISTS                         ERROR_DUP_NAME

const STATUS_ADDRESS_CLOSED                                 ERROR_NETNAME_DELETED   
const STATUS_CONNECTION_DISCONNECTED                        ERROR_NETNAME_DELETED   
const STATUS_CONNECTION_RESET                               ERROR_NETNAME_DELETED   

const STATUS_TRANSACTION_ABORTED                            ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_TIMED_OUT                          ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_NO_RELEASE                         ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_NO_MATCH                           ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_RESPONDED                          ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_INVALID_ID                         ERROR_UNEXP_NET_ERR   
const STATUS_TRANSACTION_INVALID_TYPE                       ERROR_UNEXP_NET_ERR   

const STATUS_NOT_SERVER_SESSION                             ERROR_NOT_SUPPORTED   
const STATUS_NOT_CLIENT_SESSION                             ERROR_NOT_SUPPORTED   

const STATUS_USER_MAPPED_FILE                               ERROR_USER_MAPPED_FILE   
const STATUS_PLUGPLAY_NO_DEVICE                             ERROR_SERVICE_DISABLED   
const STATUS_WMI_GUID_NOT_FOUND                             ERROR_WMI_GUID_NOT_FOUND   
const STATUS_WMI_INSTANCE_NOT_FOUND                         ERROR_WMI_INSTANCE_NOT_FOUND   
const STATUS_WMI_ITEMID_NOT_FOUND                           ERROR_WMI_ITEMID_NOT_FOUND   
const STATUS_WMI_TRY_AGAIN                                  ERROR_WMI_TRY_AGAIN   
const STATUS_WMI_READ_ONLY                                  ERROR_WMI_READ_ONLY   
const STATUS_WMI_SET_FAILURE                                ERROR_WMI_SET_FAILURE   
const STATUS_WMI_NOT_SUPPORTED                              ERROR_NOT_SUPPORTED   
const STATUS_WMI_GUID_DISCONNECTED                          ERROR_WMI_GUID_DISCONNECTED   
const STATUS_WMI_ALREADY_DISABLED                           ERROR_WMI_ALREADY_DISABLED   
const STATUS_WMI_ALREADY_ENABLED                            ERROR_WMI_ALREADY_ENABLED   

const STATUS_COPY_PROTECTION_FAILURE                        STG_E_STATUS_COPY_PROTECTION_FAILURE 
const STATUS_CSS_AUTHENTICATION_FAILURE                     STG_E_CSS_AUTHENTICATION_FAILURE   
const STATUS_CSS_KEY_NOT_PRESENT                            STG_E_CSS_KEY_NOT_PRESENT   
const STATUS_CSS_KEY_NOT_ESTABLISHED                        STG_E_CSS_KEY_NOT_ESTABLISHED   
const STATUS_CSS_SCRAMBLED_SECTOR                           STG_E_CSS_SCRAMBLED_SECTOR   
const STATUS_CSS_REGION_MISMATCH                            STG_E_CSS_REGION_MISMATCH   
const STATUS_CSS_RESETS_EXHAUSTED                           STG_E_RESETS_EXHAUSTED   

const RPC_NT_SERVER_UNAVAILABLE                             RPC_S_SERVER_UNAVAILABLE   
const RPC_NT_INVALID_STRING_BINDING                         RPC_S_INVALID_STRING_BINDING   
const RPC_NT_WRONG_KIND_OF_BINDING                          RPC_S_WRONG_KIND_OF_BINDING   
const RPC_NT_PROTSEQ_NOT_SUPPORTED                          RPC_S_PROTSEQ_NOT_SUPPORTED   
const RPC_NT_INVALID_RPC_PROTSEQ                            RPC_S_INVALID_RPC_PROTSEQ   
const RPC_NT_INVALID_STRING_UUID                            RPC_S_INVALID_STRING_UUID   
const RPC_NT_INVALID_ENDPOINT_FORMAT                        RPC_S_INVALID_ENDPOINT_FORMAT   
const RPC_NT_INVALID_NET_ADDR                               RPC_S_INVALID_NET_ADDR   
const RPC_NT_NO_ENDPOINT_FOUND                              RPC_S_NO_ENDPOINT_FOUND   
const RPC_NT_INVALID_TIMEOUT                                RPC_S_INVALID_TIMEOUT   
const RPC_NT_OBJECT_NOT_FOUND                               RPC_S_OBJECT_NOT_FOUND   
const RPC_NT_ALREADY_REGISTERED                             RPC_S_ALREADY_REGISTERED   
const RPC_NT_TYPE_ALREADY_REGISTERED                        RPC_S_TYPE_ALREADY_REGISTERED   
const RPC_NT_ALREADY_LISTENING                              RPC_S_ALREADY_LISTENING   
const RPC_NT_NO_PROTSEQS_REGISTERED                         RPC_S_NO_PROTSEQS_REGISTERED   
const RPC_NT_NOT_LISTENING                                  RPC_S_NOT_LISTENING   
const RPC_NT_UNKNOWN_MGR_TYPE                               RPC_S_UNKNOWN_MGR_TYPE   
const RPC_NT_UNKNOWN_IF                                     RPC_S_UNKNOWN_IF   
const RPC_NT_NO_BINDINGS                                    RPC_S_NO_BINDINGS   
const RPC_NT_NO_MORE_BINDINGS                               RPC_S_NO_MORE_BINDINGS   
const RPC_NT_NO_PROTSEQS                                    RPC_S_NO_PROTSEQS   
const RPC_NT_CANT_CREATE_ENDPOINT                           RPC_S_CANT_CREATE_ENDPOINT   
const RPC_NT_OUT_OF_RESOURCES                               RPC_S_OUT_OF_RESOURCES   
const RPC_NT_SERVER_TOO_BUSY                                RPC_S_SERVER_TOO_BUSY   
const RPC_NT_INVALID_NETWORK_OPTIONS                        RPC_S_INVALID_NETWORK_OPTIONS   
const RPC_NT_NO_CALL_ACTIVE                                 RPC_S_NO_CALL_ACTIVE   
const RPC_NT_CALL_FAILED                                    RPC_S_CALL_FAILED   
const RPC_NT_CALL_FAILED_DNE                                RPC_S_CALL_FAILED_DNE   
const RPC_NT_PROTOCOL_ERROR                                 RPC_S_PROTOCOL_ERROR   
const RPC_NT_UNSUPPORTED_TRANS_SYN                          RPC_S_UNSUPPORTED_TRANS_SYN   
const RPC_NT_UNSUPPORTED_TYPE                               RPC_S_UNSUPPORTED_TYPE   
const RPC_NT_INVALID_TAG                                    RPC_S_INVALID_TAG   
const RPC_NT_INVALID_BOUND                                  RPC_S_INVALID_BOUND   
const RPC_NT_NO_ENTRY_NAME                                  RPC_S_NO_ENTRY_NAME   
const RPC_NT_INVALID_NAME_SYNTAX                            RPC_S_INVALID_NAME_SYNTAX   
const RPC_NT_UNSUPPORTED_NAME_SYNTAX                        RPC_S_UNSUPPORTED_NAME_SYNTAX   
const RPC_NT_UUID_NO_ADDRESS                                RPC_S_UUID_NO_ADDRESS   
const RPC_NT_DUPLICATE_ENDPOINT                             RPC_S_DUPLICATE_ENDPOINT   
const RPC_NT_UNKNOWN_AUTHN_TYPE                             RPC_S_UNKNOWN_AUTHN_TYPE   
const RPC_NT_MAX_CALLS_TOO_SMALL                            RPC_S_MAX_CALLS_TOO_SMALL   
const RPC_NT_STRING_TOO_LONG                                RPC_S_STRING_TOO_LONG   
const RPC_NT_PROTSEQ_NOT_FOUND                              RPC_S_PROTSEQ_NOT_FOUND   
const RPC_NT_PROCNUM_OUT_OF_RANGE                           RPC_S_PROCNUM_OUT_OF_RANGE   
const RPC_NT_BINDING_HAS_NO_AUTH                            RPC_S_BINDING_HAS_NO_AUTH   
const RPC_NT_UNKNOWN_AUTHN_SERVICE                          RPC_S_UNKNOWN_AUTHN_SERVICE   
const RPC_NT_UNKNOWN_AUTHN_LEVEL                            RPC_S_UNKNOWN_AUTHN_LEVEL   
const RPC_NT_INVALID_AUTH_IDENTITY                          RPC_S_INVALID_AUTH_IDENTITY   
const RPC_NT_UNKNOWN_AUTHZ_SERVICE                          RPC_S_UNKNOWN_AUTHZ_SERVICE   

const EPT_NT_INVALID_ENTRY                                  EPT_S_INVALID_ENTRY   
const EPT_NT_CANT_PERFORM_OP                                EPT_S_CANT_PERFORM_OP   
const EPT_NT_NOT_REGISTERED                                 EPT_S_NOT_REGISTERED   

const RPC_NT_NOTHING_TO_EXPORT                              RPC_S_NOTHING_TO_EXPORT   
const RPC_NT_INCOMPLETE_NAME                                RPC_S_INCOMPLETE_NAME   
const RPC_NT_INVALID_VERS_OPTION                            RPC_S_INVALID_VERS_OPTION   
const RPC_NT_NO_MORE_MEMBERS                                RPC_S_NO_MORE_MEMBERS   
const RPC_NT_NOT_ALL_OBJS_UNEXPORTED                        RPC_S_NOT_ALL_OBJS_UNEXPORTED   
const RPC_NT_INTERFACE_NOT_FOUND                            RPC_S_INTERFACE_NOT_FOUND   
const RPC_NT_ENTRY_ALREADY_EXISTS                           RPC_S_ENTRY_ALREADY_EXISTS   
const RPC_NT_ENTRY_NOT_FOUND                                RPC_S_ENTRY_NOT_FOUND   
const RPC_NT_NAME_SERVICE_UNAVAILABLE                       RPC_S_NAME_SERVICE_UNAVAILABLE   
const RPC_NT_INVALID_NAF_ID                                 RPC_S_INVALID_NAF_ID   
const RPC_NT_CANNOT_SUPPORT                                 RPC_S_CANNOT_SUPPORT   
const RPC_NT_NO_CONTEXT_AVAILABLE                           RPC_S_NO_CONTEXT_AVAILABLE   
const RPC_NT_INTERNAL_ERROR                                 RPC_S_INTERNAL_ERROR   
const RPC_NT_ZERO_DIVIDE                                    RPC_S_ZERO_DIVIDE   
const RPC_NT_ADDRESS_ERROR                                  RPC_S_ADDRESS_ERROR   
const RPC_NT_FP_DIV_ZERO                                    RPC_S_FP_DIV_ZERO   
const RPC_NT_FP_UNDERFLOW                                   RPC_S_FP_UNDERFLOW   
const RPC_NT_FP_OVERFLOW                                    RPC_S_FP_OVERFLOW   
const RPC_NT_NO_MORE_ENTRIES                                RPC_X_NO_MORE_ENTRIES   
const RPC_NT_SS_CHAR_TRANS_OPEN_FAIL                        RPC_X_SS_CHAR_TRANS_OPEN_FAIL   
const RPC_NT_SS_CHAR_TRANS_SHORT_FILE                       RPC_X_SS_CHAR_TRANS_SHORT_FILE   

const RPC_NT_SS_CONTEXT_MISMATCH                            ERROR_INVALID_HANDLE   

const RPC_NT_SS_CONTEXT_DAMAGED                             RPC_X_SS_CONTEXT_DAMAGED   
const RPC_NT_SS_HANDLES_MISMATCH                            RPC_X_SS_HANDLES_MISMATCH   
const RPC_NT_SS_CANNOT_GET_CALL_HANDLE                      RPC_X_SS_CANNOT_GET_CALL_HANDLE   
const RPC_NT_NULL_REF_POINTER                               RPC_X_NULL_REF_POINTER   
const RPC_NT_ENUM_VALUE_OUT_OF_RANGE                        RPC_X_ENUM_VALUE_OUT_OF_RANGE   
const RPC_NT_BYTE_COUNT_TOO_SMALL                           RPC_X_BYTE_COUNT_TOO_SMALL   
const RPC_NT_BAD_STUB_DATA                                  RPC_X_BAD_STUB_DATA   

const RPC_NT_INVALID_OBJECT                                 RPC_S_INVALID_OBJECT   

const STATUS_NO_TRUST_LSA_SECRET                            ERROR_NO_TRUST_LSA_SECRET   
const STATUS_NO_TRUST_SAM_ACCOUNT                           ERROR_NO_TRUST_SAM_ACCOUNT   

const STATUS_TRUSTED_DOMAIN_FAILURE                         ERROR_TRUSTED_DOMAIN_FAILURE   
const STATUS_TRUSTED_RELATIONSHIP_FAILURE                   ERROR_TRUSTED_RELATIONSHIP_FAILURE  

const STATUS_TRUST_FAILURE                                  ERROR_TRUST_FAILURE   

const RPC_NT_CALL_IN_PROGRESS                               RPC_S_CALL_IN_PROGRESS   

const STATUS_LOG_FILE_FULL                                  ERROR_LOG_FILE_FULL   
const STATUS_EVENTLOG_FILE_CHANGED                          ERROR_EVENTLOG_FILE_CHANGED   
const STATUS_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT              ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT  
const STATUS_NOLOGON_WORKSTATION_TRUST_ACCOUNT              ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT 
const STATUS_NOLOGON_SERVER_TRUST_ACCOUNT                   ERROR_NOLOGON_SERVER_TRUST_ACCOUNT  
const STATUS_DOMAIN_TRUST_INCONSISTENT                      ERROR_DOMAIN_TRUST_INCONSISTENT   
const STATUS_NO_USER_SESSION_KEY                            ERROR_NO_USER_SESSION_KEY   
const STATUS_POSSIBLE_DEADLOCK                              ERROR_POSSIBLE_DEADLOCK   
const STATUS_IMAGE_ALREADY_LOADED                           ERROR_SERVICE_ALREADY_RUNNING   

const RPC_NT_GROUP_MEMBER_NOT_FOUND                         RPC_S_GROUP_MEMBER_NOT_FOUND   
const RPC_NT_NO_INTERFACES                                  RPC_S_NO_INTERFACES   
const RPC_NT_CALL_CANCELLED                                 RPC_S_CALL_CANCELLED   
const RPC_NT_BINDING_INCOMPLETE                             RPC_S_BINDING_INCOMPLETE   
const RPC_NT_COMM_FAILURE                                   RPC_S_COMM_FAILURE   
const RPC_NT_UNSUPPORTED_AUTHN_LEVEL                        RPC_S_UNSUPPORTED_AUTHN_LEVEL   
const RPC_NT_NO_PRINC_NAME                                  RPC_S_NO_PRINC_NAME   
const RPC_NT_NOT_RPC_ERROR                                  RPC_S_NOT_RPC_ERROR   
const RPC_NT_UUID_LOCAL_ONLY                                RPC_S_UUID_LOCAL_ONLY   
const RPC_NT_SEC_PKG_ERROR                                  RPC_S_SEC_PKG_ERROR   
const RPC_NT_NOT_CANCELLED                                  RPC_S_NOT_CANCELLED   

const RPC_NT_INVALID_ES_ACTION                              RPC_X_INVALID_ES_ACTION   
const RPC_NT_WRONG_ES_VERSION                               RPC_X_WRONG_ES_VERSION   
const RPC_NT_WRONG_STUB_VERSION                             RPC_X_WRONG_STUB_VERSION   
const RPC_NT_INVALID_PIPE_OBJECT                            RPC_X_INVALID_PIPE_OBJECT   
const RPC_NT_INVALID_PIPE_OPERATION                         RPC_X_INVALID_PIPE_OPERATION   
const RPC_NT_WRONG_PIPE_VERSION                             RPC_X_WRONG_PIPE_VERSION   

const EPT_NT_CANT_CREATE                                    EPT_S_CANT_CREATE   
const RPC_NT_SEND_INCOMPLETE                                RPC_S_SEND_INCOMPLETE   
const RPC_NT_INVALID_ASYNC_HANDLE                           RPC_S_INVALID_ASYNC_HANDLE   
const RPC_NT_INVALID_ASYNC_CALL                             RPC_S_INVALID_ASYNC_CALL   

const RPC_NT_PIPE_CLOSED                                    RPC_X_PIPE_CLOSED   
const RPC_NT_PIPE_EMPTY                                     RPC_X_PIPE_EMPTY   
const RPC_NT_PIPE_DISCIPLINE_ERROR                          RPC_X_PIPE_DISCIPLINE_ERROR

const STATUS_NO_BROWSER_SERVERS_FOUND                       ERROR_NO_BROWSER_SERVERS_FOUND   
const STATUS_MAPPED_ALIGNMENT                               ERROR_MAPPED_ALIGNMENT   
const STATUS_CONNECTION_IN_USE                              ERROR_DEVICE_IN_USE   
const STATUS_VERIFY_REQUIRED                                ERROR_MEDIA_CHANGED   
const STATUS_ALREADY_DISCONNECTED                           ERROR_ACTIVE_CONNECTIONS   
const STATUS_CONNECTION_REFUSED                             ERROR_CONNECTION_REFUSED   
const STATUS_GRACEFUL_DISCONNECT                            ERROR_GRACEFUL_DISCONNECT   
const STATUS_ADDRESS_ALREADY_ASSOCIATED                     ERROR_ADDRESS_ALREADY_ASSOCIATED   
const STATUS_ADDRESS_NOT_ASSOCIATED                         ERROR_ADDRESS_NOT_ASSOCIATED   
const STATUS_CONNECTION_INVALID                             ERROR_CONNECTION_INVALID   
const STATUS_CONNECTION_ACTIVE                              ERROR_CONNECTION_ACTIVE   
const STATUS_NETWORK_UNREACHABLE                            ERROR_NETWORK_UNREACHABLE   
const STATUS_HOST_UNREACHABLE                               ERROR_HOST_UNREACHABLE   
const STATUS_HOST_DOWN                                      ERROR_HOST_DOWN   
const STATUS_PROTOCOL_UNREACHABLE                           ERROR_PROTOCOL_UNREACHABLE   
const STATUS_PORT_UNREACHABLE                               ERROR_PORT_UNREACHABLE   
const STATUS_REQUEST_ABORTED                                ERROR_REQUEST_ABORTED   
const STATUS_CONNECTION_ABORTED                             ERROR_CONNECTION_ABORTED   
const STATUS_CONNECTION_COUNT_LIMIT                         ERROR_CONNECTION_COUNT_LIMIT   
const STATUS_PATH_NOT_COVERED                               ERROR_HOST_UNREACHABLE   
const STATUS_LOGIN_TIME_RESTRICTION                         ERROR_LOGIN_TIME_RESTRICTION   
const STATUS_LOGIN_WKSTA_RESTRICTION                        ERROR_LOGIN_WKSTA_RESTRICTION   
const STATUS_LICENSE_QUOTA_EXCEEDED                         ERROR_LICENSE_QUOTA_EXCEEDED   
const STATUS_RESOURCE_NOT_OWNED                             ERROR_NOT_OWNER   

const STATUS_DUPLICATE_OBJECTID                             STATUS_DUPLICATE_OBJECTID   
const STATUS_OBJECTID_EXISTS                                STATUS_OBJECTID_EXISTS   

const STATUS_OBJECTID_NOT_FOUND                             ERROR_FILE_NOT_FOUND   
const STATUS_MFT_TOO_FRAGMENTED                             ERROR_DISK_TOO_FRAGMENTED   

const SEC_E_INSUFFICIENT_MEMORY                             ERROR_NO_SYSTEM_RESOURCES   
const SEC_E_INVALID_HANDLE                                  ERROR_INVALID_HANDLE   
const SEC_E_UNSUPPORTED_FUNCTION                            ERROR_INVALID_FUNCTION   
const SEC_E_TARGET_UNKNOWN                                  ERROR_BAD_NETPATH   
const SEC_E_INTERNAL_ERROR                                  ERROR_INTERNAL_ERROR   
const SEC_E_SECPKG_NOT_FOUND                                ERROR_NO_SUCH_PACKAGE   
const SEC_E_NOT_OWNER                                       ERROR_NOT_OWNER   
const SEC_E_CANNOT_INSTALL                                  ERROR_NO_SUCH_PACKAGE   
const SEC_E_INVALID_TOKEN                                   ERROR_INVALID_PARAMETER   
const SEC_E_CANNOT_PACK                                     ERROR_INVALID_PARAMETER   
const SEC_E_QOP_NOT_SUPPORTED                               ERROR_NOT_SUPPORTED   
const SEC_E_NO_IMPERSONATION                                ERROR_CANNOT_IMPERSONATE   
const SEC_E_MULTIPLE_ACCOUNTS                               ERROR_CANNOT_IMPERSONATE   
const SEC_E_LOGON_DENIED                                    ERROR_LOGON_FAILURE   
const SEC_E_UNKNOWN_CREDENTIALS                             ERROR_INVALID_PARAMETER   
const SEC_E_INCOMPLETE_CREDENTIALS                          ERROR_INVALID_PARAMETER   
const SEC_E_NO_CREDENTIALS                                  ERROR_NO_SUCH_LOGON_SESSION   
const SEC_E_MESSAGE_ALTERED                                 ERROR_ACCESS_DENIED   
const SEC_E_OUT_OF_SEQUENCE                                 ERROR_ACCESS_DENIED   
const SEC_E_NO_AUTHENTICATING_AUTHORITY                     ERROR_NO_LOGON_SERVERS   
const SEC_E_BAD_PKGID                                       ERROR_NO_SUCH_PACKAGE   
const SEC_E_WRONG_PRINCIPAL                                 ERROR_WRONG_TARGET_NAME   
const SEC_E_INCOMPLETE_MESSAGE                              ERROR_INVALID_USER_BUFFER   
const SEC_E_BUFFER_TOO_SMALL                                ERROR_INSUFFICIENT_BUFFER   
const SEC_E_UNTRUSTED_ROOT                                  ERROR_TRUST_FAILURE   
const SEC_E_ILLEGAL_MESSAGE                                 ERROR_INVALID_PARAMETER   
const SEC_E_CERT_UNKNOWN                                    ERROR_INVALID_PARAMETER   
const SEC_E_CERT_EXPIRED                                    ERROR_PASSWORD_EXPIRED   
const SEC_E_ENCRYPT_FAILURE                                 ERROR_ENCRYPTION_FAILED   
const SEC_E_DECRYPT_FAILURE                                 ERROR_DECRYPTION_FAILED   
const SEC_E_ALGORITHM_MISMATCH                              ERROR_INVALID_FUNCTION   
const SEC_E_CONTEXT_EXPIRED                                 ERROR_CONTEXT_EXPIRED   

const STATUS_BAD_BINDINGS                                   SEC_E_BAD_BINDINGS   

const TRUST_E_CERT_SIGNATURE                                ERROR_MUTUAL_AUTH_FAILED   
const CRYPT_E_REVOKED                                       ERROR_MUTUAL_AUTH_FAILED   
const CRYPT_E_NO_REVOCATION_CHECK                           ERROR_MUTUAL_AUTH_FAILED   
const CRYPT_E_REVOCATION_OFFLINE                            ERROR_MUTUAL_AUTH_FAILED   

const STATUS_SHUTDOWN_IN_PROGRESS                           ERROR_SHUTDOWN_IN_PROGRESS   
const STATUS_SERVER_SHUTDOWN_IN_PROGRESS                    ERROR_SERVER_SHUTDOWN_IN_PROGRESS   

const STATUS_DS_MEMBERSHIP_EVALUATED_LOCALLY                ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY
const STATUS_DS_NO_ATTRIBUTE_OR_VALUE                       ERROR_DS_NO_ATTRIBUTE_OR_VALUE   
const STATUS_DS_INVALID_ATTRIBUTE_SYNTAX                    ERROR_DS_INVALID_ATTRIBUTE_SYNTAX   
const STATUS_DS_ATTRIBUTE_TYPE_UNDEFINED                    ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED   
const STATUS_DS_ATTRIBUTE_OR_VALUE_EXISTS                   ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS  
const STATUS_DS_BUSY                                        ERROR_DS_BUSY   
const STATUS_DS_UNAVAILABLE                                 ERROR_DS_UNAVAILABLE   
const STATUS_DS_NO_RIDS_ALLOCATED                           ERROR_DS_NO_RIDS_ALLOCATED   
const STATUS_DS_NO_MORE_RIDS                                ERROR_DS_NO_MORE_RIDS   
const STATUS_DS_INCORRECT_ROLE_OWNER                        ERROR_DS_INCORRECT_ROLE_OWNER   
const STATUS_DS_RIDMGR_INIT_ERROR                           ERROR_DS_RIDMGR_INIT_ERROR   
const STATUS_DS_OBJ_CLASS_VIOLATION                         ERROR_DS_OBJ_CLASS_VIOLATION   
const STATUS_DS_CANT_ON_NON_LEAF                            ERROR_DS_CANT_ON_NON_LEAF   
const STATUS_DS_CANT_ON_RDN                                 ERROR_DS_CANT_ON_RDN   
const STATUS_DS_CROSS_DOM_MOVE_FAILED                       ERROR_DS_CROSS_DOM_MOVE_ERROR   
const STATUS_DS_GC_NOT_AVAILABLE                            ERROR_DS_GC_NOT_AVAILABLE   
const STATUS_DS_CANT_MOD_OBJ_CLASS                          ERROR_DS_CANT_MOD_OBJ_CLASS   
const STATUS_DS_ADMIN_LIMIT_EXCEEDED                        ERROR_DS_ADMIN_LIMIT_EXCEEDED   

const STATUS_DIRECTORY_SERVICE_REQUIRED                     ERROR_DS_DS_REQUIRED   
const STATUS_DS_SAM_INIT_FAILURE                            ERROR_DS_SAM_INIT_FAILURE   
const STATUS_DS_CANT_START                                  ERROR_DS_CANT_START   
const STATUS_DS_INIT_FAILURE                                ERROR_DS_INIT_FAILURE   

const STATUS_SAM_INIT_FAILURE                               ERROR_SAM_INIT_FAILURE   

const STATUS_DS_SENSITIVE_GROUP_VIOLATION                   ERROR_DS_SENSITIVE_GROUP_VIOLATION  
const STATUS_DS_CANT_MOD_PRIMARYGROUPID                     ERROR_DS_CANT_MOD_PRIMARYGROUPID   
const STATUS_DS_INVALID_GROUP_TYPE                          ERROR_DS_INVALID_GROUP_TYPE   
const STATUS_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN          ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN
const STATUS_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN           ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN
const STATUS_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER               ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER   
const STATUS_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER           ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER
const STATUS_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER            ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER
const STATUS_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER         ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER
const STATUS_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER    ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER
const STATUS_DS_HAVE_PRIMARY_MEMBERS                        ERROR_DS_HAVE_PRIMARY_MEMBERS   
const STATUS_DS_GC_REQUIRED                                 ERROR_DS_GC_REQUIRED   
const STATUS_DS_LOCAL_MEMBER_OF_LOCAL_ONLY                  ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY 
const STATUS_DS_NO_FPO_IN_UNIVERSAL_GROUPS                  ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS 
const STATUS_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED              ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED   

const STATUS_SAM_NEED_BOOTKEY_PASSWORD                      ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD  
const STATUS_SAM_NEED_BOOTKEY_FLOPPY                        ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY   

const STATUS_DS_INIT_FAILURE_CONSOLE                        ERROR_DS_INIT_FAILURE_CONSOLE   
const STATUS_DS_SAM_INIT_FAILURE_CONSOLE                    ERROR_DS_SAM_INIT_FAILURE_CONSOLE   

const STATUS_UNFINISHED_CONTEXT_DELETED                     SEC_E_UNFINISHED_CONTEXT_DELETED   
const STATUS_NO_TGT_REPLY                                   SEC_E_NO_TGT_REPLY   
const STATUS_NO_IP_ADDRESSES                                SEC_E_NO_IP_ADDRESSES   
const STATUS_WRONG_CREDENTIAL_HANDLE                        SEC_E_WRONG_CREDENTIAL_HANDLE   
const STATUS_CRYPTO_SYSTEM_INVALID                          SEC_E_CRYPTO_SYSTEM_INVALID   
const STATUS_MAX_REFERRALS_EXCEEDED                         SEC_E_MAX_REFERRALS_EXCEEDED   
const STATUS_MUST_BE_KDC                                    SEC_E_MUST_BE_KDC   
const STATUS_STRONG_CRYPTO_NOT_SUPPORTED                    SEC_E_STRONG_CRYPTO_NOT_SUPPORTED   
const STATUS_TOO_MANY_PRINCIPALS                            SEC_E_TOO_MANY_PRINCIPALS   
const STATUS_NO_PA_DATA                                     SEC_E_NO_PA_DATA   
const STATUS_PKINIT_NAME_MISMATCH                           SEC_E_PKINIT_NAME_MISMATCH   
const STATUS_SMARTCARD_LOGON_REQUIRED                       SEC_E_SMARTCARD_LOGON_REQUIRED   

const STATUS_KDC_INVALID_REQUEST                            SEC_E_KDC_INVALID_REQUEST   
const STATUS_KDC_UNABLE_TO_REFER                            SEC_E_KDC_UNABLE_TO_REFER   
const STATUS_KDC_UNKNOWN_ETYPE                              SEC_E_KDC_UNKNOWN_ETYPE   

const STATUS_UNSUPPORTED_PREAUTH                            SEC_E_UNSUPPORTED_PREAUTH   

const STATUS_SHARED_POLICY                                  ERROR_SHARED_POLICY   

const STATUS_POLICY_OBJECT_NOT_FOUND                        ERROR_POLICY_OBJECT_NOT_FOUND   
const STATUS_POLICY_ONLY_IN_DS                              ERROR_POLICY_ONLY_IN_DS   

const STATUS_DEVICE_REMOVED                                 ERROR_DEVICE_REMOVED   
const STATUS_RETRY                                          ERROR_RETRY   
const STATUS_NOT_SUPPORTED_ON_SBS                           ERROR_NOT_SUPPORTED_ON_SBS   

const STATUS_DRIVER_BLOCKED_CRITICAL                        ERROR_DRIVER_BLOCKED   
const STATUS_DRIVER_BLOCKED                                 ERROR_DRIVER_BLOCKED   

const STATUS_PRENT4_MACHINE_ACCOUNT                         ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4   

const STATUS_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER               ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER   
const STATUS_DS_SHUTTING_DOWN                               ERROR_DS_SHUTTING_DOWN   

const STATUS_ACCESS_DISABLED_BY_POLICY_DEFAULT              ERROR_ACCESS_DISABLED_BY_POLICY   

const STATUS_ACCESS_DISABLED_BY_POLICY_PATH                 ERROR_ACCESS_DISABLED_BY_POLICY   
const STATUS_ACCESS_DISABLED_BY_POLICY_PUBLISHER            ERROR_ACCESS_DISABLED_BY_POLICY   
const STATUS_ACCESS_DISABLED_BY_POLICY_OTHER                ERROR_ACCESS_DISABLED_BY_POLICY   

const STATUS_FAIL_CHECK                                     ERROR_INVALID_PARAMETER   

const STATUS_CTX_CLOSE_PENDING                              ERROR_CTX_CLOSE_PENDING   
const STATUS_CTX_NO_OUTBUF                                  ERROR_CTX_NO_OUTBUF   
const STATUS_CTX_MODEM_INF_NOT_FOUND                        ERROR_CTX_MODEM_INF_NOT_FOUND   
const STATUS_CTX_INVALID_MODEMNAME                          ERROR_CTX_INVALID_MODEMNAME   
const STATUS_CTX_RESPONSE_ERROR                             ERROR_CTX_MODEM_RESPONSE_ERROR   
const STATUS_CTX_MODEM_RESPONSE_TIMEOUT                     ERROR_CTX_MODEM_RESPONSE_TIMEOUT   
const STATUS_CTX_MODEM_RESPONSE_NO_CARRIER                  ERROR_CTX_MODEM_RESPONSE_NO_CARRIER 
const STATUS_CTX_MODEM_RESPONSE_NO_DIALTONE                 ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE   
const STATUS_CTX_MODEM_RESPONSE_BUSY                        ERROR_CTX_MODEM_RESPONSE_BUSY   
const STATUS_CTX_MODEM_RESPONSE_VOICE                       ERROR_CTX_MODEM_RESPONSE_VOICE   
const STATUS_CTX_TD_ERROR                                   ERROR_CTX_TD_ERROR   

const STATUS_LPC_REPLY_LOST                                 ERROR_CONNECTION_ABORTED   

const STATUS_CTX_WINSTATION_NAME_INVALID                    ERROR_CTX_WINSTATION_NAME_INVALID   
const STATUS_CTX_WINSTATION_NOT_FOUND                       ERROR_CTX_WINSTATION_NOT_FOUND   
const STATUS_CTX_WINSTATION_NAME_COLLISION                  ERROR_CTX_WINSTATION_ALREADY_EXISTS 
const STATUS_CTX_WINSTATION_BUSY                            ERROR_CTX_WINSTATION_BUSY   
const STATUS_CTX_GRAPHICS_INVALID                           ERROR_CTX_GRAPHICS_INVALID   
const STATUS_CTX_BAD_VIDEO_MODE                             ERROR_CTX_BAD_VIDEO_MODE   
const STATUS_CTX_NOT_CONSOLE                                ERROR_CTX_NOT_CONSOLE   
const STATUS_CTX_CLIENT_QUERY_TIMEOUT                       ERROR_CTX_CLIENT_QUERY_TIMEOUT   
const STATUS_CTX_CONSOLE_DISCONNECT                         ERROR_CTX_CONSOLE_DISCONNECT   
const STATUS_CTX_CONSOLE_CONNECT                            ERROR_CTX_CONSOLE_CONNECT   
const STATUS_CTX_SHADOW_DENIED                              ERROR_CTX_SHADOW_DENIED   
const STATUS_CTX_SHADOW_INVALID                             ERROR_CTX_SHADOW_INVALID   
const STATUS_CTX_SHADOW_DISABLED                            ERROR_CTX_SHADOW_DISABLED   
const STATUS_CTX_WINSTATION_ACCESS_DENIED                   ERROR_CTX_WINSTATION_ACCESS_DENIED  
const STATUS_CTX_INVALID_PD                                 ERROR_CTX_INVALID_PD   
const STATUS_CTX_PD_NOT_FOUND                               ERROR_CTX_PD_NOT_FOUND   
const STATUS_CTX_INVALID_WD                                 ERROR_CTX_INVALID_WD   
const STATUS_CTX_WD_NOT_FOUND                               ERROR_CTX_WD_NOT_FOUND   
const STATUS_CTX_CLIENT_LICENSE_IN_USE                      ERROR_CTX_CLIENT_LICENSE_IN_USE   
const STATUS_CTX_CLIENT_LICENSE_NOT_SET                     ERROR_CTX_CLIENT_LICENSE_NOT_SET   
const STATUS_CTX_LICENSE_NOT_AVAILABLE                      ERROR_CTX_LICENSE_NOT_AVAILABLE   
const STATUS_CTX_LICENSE_CLIENT_INVALID                     ERROR_CTX_LICENSE_CLIENT_INVALID   
const STATUS_CTX_LICENSE_EXPIRED                            ERROR_CTX_LICENSE_EXPIRED   
const STATUS_CTX_SHADOW_ENDED_BY_MODE_CHANGE                ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE   
const STATUS_CTX_SHADOW_NOT_RUNNING                         ERROR_CTX_SHADOW_NOT_RUNNING   

const STATUS_LICENSE_VIOLATION                              ERROR_CTX_LICENSE_NOT_AVAILABLE   

const STATUS_ENDPOINT_CLOSED                                ERROR_DEV_NOT_EXIST   
const STATUS_DISCONNECTED                                   ERROR_DEV_NOT_EXIST   
const STATUS_NONEXISTENT_NET_NAME                           ERROR_DEV_NOT_EXIST   
const STATUS_NETWORK_SESSION_EXPIRED                        ERROR_NO_USER_SESSION_KEY   

const STATUS_FILES_OPEN                                     ERROR_OPEN_FILES   

const STATUS_SXS_SECTION_NOT_FOUND                          ERROR_SXS_SECTION_NOT_FOUND   
const STATUS_SXS_CANT_GEN_ACTCTX                            ERROR_SXS_CANT_GEN_ACTCTX   
const STATUS_SXS_INVALID_ACTCTXDATA_FORMAT                  ERROR_SXS_INVALID_ACTCTXDATA_FORMAT 
const STATUS_SXS_ASSEMBLY_NOT_FOUND                         ERROR_SXS_ASSEMBLY_NOT_FOUND   
const STATUS_SXS_MANIFEST_FORMAT_ERROR                      ERROR_SXS_MANIFEST_FORMAT_ERROR   
const STATUS_SXS_MANIFEST_PARSE_ERROR                       ERROR_SXS_MANIFEST_PARSE_ERROR   
const STATUS_SXS_ACTIVATION_CONTEXT_DISABLED                ERROR_SXS_ACTIVATION_CONTEXT_DISABLED   
const STATUS_SXS_KEY_NOT_FOUND                              ERROR_SXS_KEY_NOT_FOUND   
const STATUS_SXS_WRONG_SECTION_TYPE                         ERROR_SXS_WRONG_SECTION_TYPE   
const STATUS_SXS_THREAD_QUERIES_DISABLED                    ERROR_SXS_THREAD_QUERIES_DISABLED   
const STATUS_SXS_PROCESS_DEFAULT_ALREADY_SET                ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET   

const STATUS_REDIRECTOR_STARTED                             ERROR_SERVICE_ALREADY_RUNNING   
const STATUS_AUDITING_DISABLED                              ERROR_AUDITING_DISABLED   

const STATUS_CLUSTER_NODE_ALREADY_UP                        ERROR_CLUSTER_NODE_ALREADY_UP   
const STATUS_CLUSTER_NODE_ALREADY_DOWN                      ERROR_CLUSTER_NODE_ALREADY_DOWN   
const STATUS_CLUSTER_NETWORK_ALREADY_ONLINE                 ERROR_CLUSTER_NETWORK_ALREADY_ONLINE   
const STATUS_CLUSTER_NETWORK_ALREADY_OFFLINE                ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE   
const STATUS_CLUSTER_NODE_ALREADY_MEMBER                    ERROR_CLUSTER_NODE_ALREADY_MEMBER   
const STATUS_CLUSTER_INVALID_NODE                           ERROR_CLUSTER_INVALID_NODE   
const STATUS_CLUSTER_NODE_EXISTS                            ERROR_CLUSTER_NODE_EXISTS   
const STATUS_CLUSTER_JOIN_IN_PROGRESS                       ERROR_CLUSTER_JOIN_IN_PROGRESS   
const STATUS_CLUSTER_NODE_NOT_FOUND                         ERROR_CLUSTER_NODE_NOT_FOUND   
const STATUS_CLUSTER_LOCAL_NODE_NOT_FOUND                   ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND  
const STATUS_CLUSTER_NETWORK_EXISTS                         ERROR_CLUSTER_NETWORK_EXISTS   
const STATUS_CLUSTER_NETWORK_NOT_FOUND                      ERROR_CLUSTER_NETWORK_NOT_FOUND   
const STATUS_CLUSTER_NETINTERFACE_EXISTS                    ERROR_CLUSTER_NETINTERFACE_EXISTS   
const STATUS_CLUSTER_NETINTERFACE_NOT_FOUND                 ERROR_CLUSTER_NETINTERFACE_NOT_FOUND   
const STATUS_CLUSTER_INVALID_REQUEST                        ERROR_CLUSTER_INVALID_REQUEST   
const STATUS_CLUSTER_INVALID_NETWORK_PROVIDER               ERROR_CLUSTER_INVALID_NETWORK_PROVIDER   
const STATUS_CLUSTER_NODE_DOWN                              ERROR_CLUSTER_NODE_DOWN   
const STATUS_CLUSTER_NODE_UNREACHABLE                       ERROR_CLUSTER_NODE_UNREACHABLE   
const STATUS_CLUSTER_NODE_NOT_MEMBER                        ERROR_CLUSTER_NODE_NOT_MEMBER   
const STATUS_CLUSTER_JOIN_NOT_IN_PROGRESS                   ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS  
const STATUS_CLUSTER_INVALID_NETWORK                        ERROR_CLUSTER_INVALID_NETWORK   
const STATUS_CLUSTER_NODE_UP                                ERROR_CLUSTER_NODE_UP   
const STATUS_CLUSTER_NODE_PAUSED                            ERROR_CLUSTER_NODE_PAUSED   
const STATUS_CLUSTER_NODE_NOT_PAUSED                        ERROR_CLUSTER_NODE_NOT_PAUSED   
const STATUS_CLUSTER_NO_SECURITY_CONTEXT                    ERROR_CLUSTER_NO_SECURITY_CONTEXT   
const STATUS_CLUSTER_NETWORK_NOT_INTERNAL                   ERROR_CLUSTER_NETWORK_NOT_INTERNAL
