	.text
	.intel_syntax noprefix
	.file	"ispc-u32.ispc"
	.globl	sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu # -- Begin function sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu
	.p2align	4, 0x90
	.type	sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu,@function
sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu: # @sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
	dec	ecx
	shr	ecx, 4
	lea	r8d, [rcx + 1]
	mov	r9d, r8d
	and	r9d, -8
	xor	r10d, r10d
	xor	eax, eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mov	r11d, r10d
	and	r11d, -512
	vmovdqa64	zmm0, zmmword ptr [rsi + r11]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11]
	vmovdqa64	zmmword ptr [rdx + r11], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 64]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 64]
	vmovdqa64	zmmword ptr [rdx + r11 + 64], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 128]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 128]
	vmovdqa64	zmmword ptr [rdx + r11 + 128], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 192]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 192]
	vmovdqa64	zmmword ptr [rdx + r11 + 192], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 256]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 256]
	vmovdqa64	zmmword ptr [rdx + r11 + 256], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 320]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 320]
	vmovdqa64	zmmword ptr [rdx + r11 + 320], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 384]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 384]
	vmovdqa64	zmmword ptr [rdx + r11 + 384], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 448]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 448]
	vmovdqa64	zmmword ptr [rdx + r11 + 448], zmm0
	add	eax, 8
	add	r10, 512
	cmp	r9d, eax
	jne	.LBB0_1
# %bb.2:
	test	r8b, 7
	je	.LBB0_5
# %bb.3:
	and	eax, 67108863
	shl	rax, 6
	add	rdi, rax
	add	rsi, rax
	add	rdx, rax
	inc	cl
	movzx	eax, cl
	and	eax, 7
	shl	rax, 6
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	vmovdqa64	zmm0, zmmword ptr [rsi + rcx]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + rcx]
	vmovdqa64	zmmword ptr [rdx + rcx], zmm0
	add	rcx, 64
	cmp	eax, ecx
	jne	.LBB0_4
.LBB0_5:
	vzeroupper
	ret
.Lfunc_end0:
	.size	sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu, .Lfunc_end0-sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu
                                        # -- End function
	.globl	sum_ispc                        # -- Begin function sum_ispc
	.p2align	4, 0x90
	.type	sum_ispc,@function
sum_ispc:                               # @sum_ispc
# %bb.0:
                                        # kill: def $ecx killed $ecx def $rcx
	dec	ecx
	shr	ecx, 4
	lea	r8d, [rcx + 1]
	mov	r9d, r8d
	and	r9d, -8
	xor	r10d, r10d
	xor	eax, eax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mov	r11d, r10d
	and	r11d, -512
	vmovdqa64	zmm0, zmmword ptr [rsi + r11]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11]
	vmovdqa64	zmmword ptr [rdx + r11], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 64]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 64]
	vmovdqa64	zmmword ptr [rdx + r11 + 64], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 128]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 128]
	vmovdqa64	zmmword ptr [rdx + r11 + 128], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 192]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 192]
	vmovdqa64	zmmword ptr [rdx + r11 + 192], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 256]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 256]
	vmovdqa64	zmmword ptr [rdx + r11 + 256], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 320]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 320]
	vmovdqa64	zmmword ptr [rdx + r11 + 320], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 384]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 384]
	vmovdqa64	zmmword ptr [rdx + r11 + 384], zmm0
	vmovdqa64	zmm0, zmmword ptr [rsi + r11 + 448]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + r11 + 448]
	vmovdqa64	zmmword ptr [rdx + r11 + 448], zmm0
	add	eax, 8
	add	r10, 512
	cmp	r9d, eax
	jne	.LBB1_1
# %bb.2:
	test	r8b, 7
	je	.LBB1_5
# %bb.3:
	and	eax, 67108863
	shl	rax, 6
	add	rdi, rax
	add	rsi, rax
	add	rdx, rax
	inc	cl
	movzx	eax, cl
	and	eax, 7
	shl	rax, 6
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vmovdqa64	zmm0, zmmword ptr [rsi + rcx]
	vpaddd	zmm0, zmm0, zmmword ptr [rdi + rcx]
	vmovdqa64	zmmword ptr [rdx + rcx], zmm0
	add	rcx, 64
	cmp	eax, ecx
	jne	.LBB1_4
.LBB1_5:
	vzeroupper
	ret
.Lfunc_end1:
	.size	sum_ispc, .Lfunc_end1-sum_ispc
                                        # -- End function
	.ident	"Intel(r) Implicit SPMD Program Compiler (Intel(r) ISPC), 1.23.0 (build commit bcb2cf896c00f9a8 @ 20240216, LLVM 16.0.6)"
	.ident	"LLVM version 16.0.6 (/usr/local/src/ispc/build/llvm-source/clang 7cbf1a2591520c2491aa35339f227775f4d3adf6)"
	.section	".note.GNU-stack","",@progbits
