//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·_flatten_bits(SB), $0-32

    MOVQ base_ptr+0(FP), DI
    MOVQ pbase+8(FP), SI
    MOVQ idx+16(FP), DX
    MOVQ bits+24(FP), CX

    POPCNTQ CX, R8               // popcnt    r8, rcx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   AX, R8                // add    r8d, eax
    TESTQ  CX, CX                // test    rcx, rcx
	JE     LBB0_3
    ADDL   $-64, DX              // add    edx, -64
LBB0_2:
    TZCNTQ CX, R9                // tzcnt    r9, rcx
    ADDL   DX, R9                // add    r9d, edx
    MOVL   AX, AX                // mov    eax, eax
    MOVL   R9, (DI)(AX*4)        // mov    dword [rdi + 4*rax], r9d
    BLSRQ  CX, R9                // blsr    r9, rcx
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    INCL   AX                    // inc    eax
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $2, AX                // add    eax, 2
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $3, AX                // add    eax, 3
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $4, AX                // add    eax, 4
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $5, AX                // add    eax, 5
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, CX                // tzcnt    rcx, r9
    ADDL   DX, CX                // add    ecx, edx
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $6, AX                // add    eax, 6
    MOVL   CX, (DI)(AX*4)        // mov    dword [rdi + 4*rax], ecx
    BLSRQ  R9, R9                // blsr    r9, r9
    TZCNTQ R9, AX                // tzcnt    rax, r9
    ADDL   DX, AX                // add    eax, edx
    MOVL   (SI), CX              // mov    ecx, dword [rsi]
    ADDL   $7, CX                // add    ecx, 7
    MOVL   AX, (DI)(CX*4)        // mov    dword [rdi + 4*rcx], eax
    LEAQ   -1(R9), CX            // lea    rcx, [r9 - 1]
    MOVL   (SI), AX              // mov    eax, dword [rsi]
    ADDL   $8, AX                // add    eax, 8
    MOVL   AX, (SI)              // mov    dword [rsi], eax
    ANDQ   R9, CX                // and    rcx, r9
	JNE    LBB0_2
LBB0_3:
    MOVL   R8, (SI)              // mov    dword [rsi], r8d
    RET
