; ModuleID = 'ispc-u32.ispc'
source_filename = "ispc-u32.ispc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind
declare void @llvm.x86.avx512.mask.scatter.dpi.512(i8*, <16 x i1>, <16 x i32>, <16 x i32>, i32 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, i8*, <16 x i32>, <16 x i1>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nounwind
define void @sum_ispc___un_3C_Cunu_3E_un_3C_Cunu_3E_un_3C_unu_3E_Cunu(i32* noalias %a, i32* noalias %b, i32* noalias %o, i32 %n, <16 x i1> %__mask) #0 {
allocas:
  %internal_mask_memory.i170 = alloca <16 x i1>, align 2
  %full_mask_memory.i171 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i172 = alloca <16 x i1>, align 2
  %launch_group_handle.i173 = alloca i8*, align 8
  %test1.i174 = alloca i8, align 1
  %internal_mask_memory.i160 = alloca <16 x i1>, align 2
  %full_mask_memory.i161 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i162 = alloca <16 x i1>, align 2
  %launch_group_handle.i163 = alloca i8*, align 8
  %test1.i164 = alloca i8, align 1
  %internal_mask_memory.i150 = alloca <16 x i1>, align 2
  %full_mask_memory.i151 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i152 = alloca <16 x i1>, align 2
  %launch_group_handle.i153 = alloca i8*, align 8
  %test1.i154 = alloca i8, align 1
  %internal_mask_memory.i140 = alloca <16 x i1>, align 2
  %full_mask_memory.i141 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i142 = alloca <16 x i1>, align 2
  %launch_group_handle.i143 = alloca i8*, align 8
  %test1.i144 = alloca i8, align 1
  %internal_mask_memory.i130 = alloca <16 x i1>, align 2
  %full_mask_memory.i131 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i132 = alloca <16 x i1>, align 2
  %launch_group_handle.i133 = alloca i8*, align 8
  %test1.i134 = alloca i8, align 1
  %internal_mask_memory.i = alloca <16 x i1>, align 2
  %full_mask_memory.i = alloca <16 x i1>, align 2
  %returned_lanes_memory.i = alloca <16 x i1>, align 2
  %launch_group_handle.i = alloca i8*, align 8
  %test1.i = alloca i8, align 1
  %internal_mask_memory = alloca <16 x i1>, align 2
  %full_mask_memory = alloca <16 x i1>, align 2
  %returned_lanes_memory = alloca <16 x i1>, align 2
  %launch_group_handle = alloca i8*, align 8
  %a1 = alloca i32*, align 8
  %b2 = alloca i32*, align 8
  %o3 = alloca i32*, align 8
  %n4 = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca <16 x i32>, align 64
  %"extras mask" = alloca <16 x i1>, align 2
  %foreach_continue_lanes = alloca <16 x i1>, align 2
  %step_index = alloca i1, align 1
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory, align 2
  store i8* null, i8** %launch_group_handle, align 8
  store i32* %a, i32** %a1, align 8
  store i32* %b, i32** %b2, align 8
  store i32* %o, i32** %o3, align 8
  store i32 %n, i32* %n4, align 4
  %load_mask = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask" = and <16 x i1> %load_mask, %__mask
  store <16 x i1> %"internal_mask&function_mask", <16 x i1>* %full_mask_memory, align 2
  %a_load = load i32*, i32** %a1, align 8
  %ptr_typecast = ptrtoint i32* %a_load to i64
  %mod_ptr_typecast_ = urem i64 %ptr_typecast, 4096
  %mod_ptr_typecast__to_bool = icmp ne i64 %mod_ptr_typecast_, 0
  %mod_ptr_typecast__to_bool_logicalnot = xor i1 %mod_ptr_typecast__to_bool, true
  %load_mask5 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask6" = and <16 x i1> %load_mask5, %__mask
  %0 = bitcast <16 x i1>* %internal_mask_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0)
  %1 = bitcast <16 x i1>* %full_mask_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1)
  %2 = bitcast <16 x i1>* %returned_lanes_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2)
  %3 = bitcast i8** %launch_group_handle.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i, align 2
  store i8* null, i8** %launch_group_handle.i, align 8
  %test_toStorageBool.i = zext i1 %mod_ptr_typecast__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i, i8* %test1.i, align 1
  %load_mask.i = load <16 x i1>, <16 x i1>* %internal_mask_memory.i, align 2
  %"internal_mask&function_mask.i" = and <16 x i1> %load_mask.i, %"internal_mask&function_mask6"
  store <16 x i1> %"internal_mask&function_mask.i", <16 x i1>* %full_mask_memory.i, align 2
  %test_load.i = load i8, i8* %test1.i, align 1
  %test_load_toi1.i = trunc i8 %test_load.i to i1
  call void @llvm.assume(i1 %test_load_toi1.i)
  %4 = bitcast <16 x i1>* %internal_mask_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4)
  %5 = bitcast <16 x i1>* %full_mask_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5)
  %6 = bitcast <16 x i1>* %returned_lanes_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6)
  %7 = bitcast i8** %launch_group_handle.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i)
  %b_load = load i32*, i32** %b2, align 8
  %ptr_typecast7 = ptrtoint i32* %b_load to i64
  %mod_ptr_typecast7_ = urem i64 %ptr_typecast7, 4096
  %mod_ptr_typecast7__to_bool = icmp ne i64 %mod_ptr_typecast7_, 0
  %mod_ptr_typecast7__to_bool_logicalnot = xor i1 %mod_ptr_typecast7__to_bool, true
  %load_mask8 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask9" = and <16 x i1> %load_mask8, %__mask
  %8 = bitcast <16 x i1>* %internal_mask_memory.i130 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %8)
  %9 = bitcast <16 x i1>* %full_mask_memory.i131 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %9)
  %10 = bitcast <16 x i1>* %returned_lanes_memory.i132 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %10)
  %11 = bitcast i8** %launch_group_handle.i133 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i134)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i130, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i131, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i132, align 2
  store i8* null, i8** %launch_group_handle.i133, align 8
  %test_toStorageBool.i135 = zext i1 %mod_ptr_typecast7__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i135, i8* %test1.i134, align 1
  %load_mask.i136 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i130, align 2
  %"internal_mask&function_mask.i137" = and <16 x i1> %load_mask.i136, %"internal_mask&function_mask9"
  store <16 x i1> %"internal_mask&function_mask.i137", <16 x i1>* %full_mask_memory.i131, align 2
  %test_load.i138 = load i8, i8* %test1.i134, align 1
  %test_load_toi1.i139 = trunc i8 %test_load.i138 to i1
  call void @llvm.assume(i1 %test_load_toi1.i139)
  %12 = bitcast <16 x i1>* %internal_mask_memory.i130 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %12)
  %13 = bitcast <16 x i1>* %full_mask_memory.i131 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %13)
  %14 = bitcast <16 x i1>* %returned_lanes_memory.i132 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %14)
  %15 = bitcast i8** %launch_group_handle.i133 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i134)
  %o_load = load i32*, i32** %o3, align 8
  %ptr_typecast10 = ptrtoint i32* %o_load to i64
  %mod_ptr_typecast10_ = urem i64 %ptr_typecast10, 4096
  %mod_ptr_typecast10__to_bool = icmp ne i64 %mod_ptr_typecast10_, 0
  %mod_ptr_typecast10__to_bool_logicalnot = xor i1 %mod_ptr_typecast10__to_bool, true
  %load_mask11 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask12" = and <16 x i1> %load_mask11, %__mask
  %16 = bitcast <16 x i1>* %internal_mask_memory.i140 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %16)
  %17 = bitcast <16 x i1>* %full_mask_memory.i141 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %17)
  %18 = bitcast <16 x i1>* %returned_lanes_memory.i142 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %18)
  %19 = bitcast i8** %launch_group_handle.i143 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i144)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i140, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i141, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i142, align 2
  store i8* null, i8** %launch_group_handle.i143, align 8
  %test_toStorageBool.i145 = zext i1 %mod_ptr_typecast10__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i145, i8* %test1.i144, align 1
  %load_mask.i146 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i140, align 2
  %"internal_mask&function_mask.i147" = and <16 x i1> %load_mask.i146, %"internal_mask&function_mask12"
  store <16 x i1> %"internal_mask&function_mask.i147", <16 x i1>* %full_mask_memory.i141, align 2
  %test_load.i148 = load i8, i8* %test1.i144, align 1
  %test_load_toi1.i149 = trunc i8 %test_load.i148 to i1
  call void @llvm.assume(i1 %test_load_toi1.i149)
  %20 = bitcast <16 x i1>* %internal_mask_memory.i140 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %20)
  %21 = bitcast <16 x i1>* %full_mask_memory.i141 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %21)
  %22 = bitcast <16 x i1>* %returned_lanes_memory.i142 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %22)
  %23 = bitcast i8** %launch_group_handle.i143 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i144)
  %n_load = load i32, i32* %n4, align 4
  %mod_n_load_ = urem i32 %n_load, 4096
  %mod_n_load__to_bool = icmp ne i32 %mod_n_load_, 0
  %mod_n_load__to_bool_logicalnot = xor i1 %mod_n_load__to_bool, true
  %load_mask13 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask14" = and <16 x i1> %load_mask13, %__mask
  %24 = bitcast <16 x i1>* %internal_mask_memory.i150 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %24)
  %25 = bitcast <16 x i1>* %full_mask_memory.i151 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25)
  %26 = bitcast <16 x i1>* %returned_lanes_memory.i152 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %26)
  %27 = bitcast i8** %launch_group_handle.i153 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i154)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i150, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i151, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i152, align 2
  store i8* null, i8** %launch_group_handle.i153, align 8
  %test_toStorageBool.i155 = zext i1 %mod_n_load__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i155, i8* %test1.i154, align 1
  %load_mask.i156 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i150, align 2
  %"internal_mask&function_mask.i157" = and <16 x i1> %load_mask.i156, %"internal_mask&function_mask14"
  store <16 x i1> %"internal_mask&function_mask.i157", <16 x i1>* %full_mask_memory.i151, align 2
  %test_load.i158 = load i8, i8* %test1.i154, align 1
  %test_load_toi1.i159 = trunc i8 %test_load.i158 to i1
  call void @llvm.assume(i1 %test_load_toi1.i159)
  %28 = bitcast <16 x i1>* %internal_mask_memory.i150 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %28)
  %29 = bitcast <16 x i1>* %full_mask_memory.i151 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %29)
  %30 = bitcast <16 x i1>* %returned_lanes_memory.i152 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %30)
  %31 = bitcast i8** %launch_group_handle.i153 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i154)
  %n_load15 = load i32, i32* %n4, align 4
  %greaterequal_n_load15_ = icmp uge i32 %n_load15, 4096
  %load_mask16 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask17" = and <16 x i1> %load_mask16, %__mask
  %32 = bitcast <16 x i1>* %internal_mask_memory.i160 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %32)
  %33 = bitcast <16 x i1>* %full_mask_memory.i161 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %33)
  %34 = bitcast <16 x i1>* %returned_lanes_memory.i162 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %34)
  %35 = bitcast i8** %launch_group_handle.i163 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i164)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i160, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i161, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i162, align 2
  store i8* null, i8** %launch_group_handle.i163, align 8
  %test_toStorageBool.i165 = zext i1 %greaterequal_n_load15_ to i8
  store i8 %test_toStorageBool.i165, i8* %test1.i164, align 1
  %load_mask.i166 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i160, align 2
  %"internal_mask&function_mask.i167" = and <16 x i1> %load_mask.i166, %"internal_mask&function_mask17"
  store <16 x i1> %"internal_mask&function_mask.i167", <16 x i1>* %full_mask_memory.i161, align 2
  %test_load.i168 = load i8, i8* %test1.i164, align 1
  %test_load_toi1.i169 = trunc i8 %test_load.i168 to i1
  call void @llvm.assume(i1 %test_load_toi1.i169)
  %36 = bitcast <16 x i1>* %internal_mask_memory.i160 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %36)
  %37 = bitcast <16 x i1>* %full_mask_memory.i161 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %37)
  %38 = bitcast <16 x i1>* %returned_lanes_memory.i162 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %38)
  %39 = bitcast i8** %launch_group_handle.i163 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i164)
  %n_load18 = load i32, i32* %n4, align 4
  %lessequal_n_load18_ = icmp ule i32 %n_load18, 1073741823
  %load_mask19 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask20" = and <16 x i1> %load_mask19, %__mask
  %40 = bitcast <16 x i1>* %internal_mask_memory.i170 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %40)
  %41 = bitcast <16 x i1>* %full_mask_memory.i171 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %41)
  %42 = bitcast <16 x i1>* %returned_lanes_memory.i172 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %42)
  %43 = bitcast i8** %launch_group_handle.i173 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i174)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i170, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i171, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i172, align 2
  store i8* null, i8** %launch_group_handle.i173, align 8
  %test_toStorageBool.i175 = zext i1 %lessequal_n_load18_ to i8
  store i8 %test_toStorageBool.i175, i8* %test1.i174, align 1
  %load_mask.i176 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i170, align 2
  %"internal_mask&function_mask.i177" = and <16 x i1> %load_mask.i176, %"internal_mask&function_mask20"
  store <16 x i1> %"internal_mask&function_mask.i177", <16 x i1>* %full_mask_memory.i171, align 2
  %test_load.i178 = load i8, i8* %test1.i174, align 1
  %test_load_toi1.i179 = trunc i8 %test_load.i178 to i1
  call void @llvm.assume(i1 %test_load_toi1.i179)
  %44 = bitcast <16 x i1>* %internal_mask_memory.i170 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %44)
  %45 = bitcast <16 x i1>* %full_mask_memory.i171 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %45)
  %46 = bitcast <16 x i1>* %returned_lanes_memory.i172 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %46)
  %47 = bitcast i8** %launch_group_handle.i173 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i174)
  %load_mask21 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask22 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask23" = and <16 x i1> %load_mask22, %__mask
  store <16 x i1> %"internal_mask&function_mask23", <16 x i1>* %full_mask_memory, align 2
  %load_mask24 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask25" = and <16 x i1> %load_mask24, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask25", <16 x i1>* %full_mask_memory, align 2
  %n_load26 = load i32, i32* %n4, align 4
  %nitems = sub nsw i32 %n_load26, 0
  %nextras = srem i32 %nitems, 16
  %aligned_end = sub nsw i32 %n_load26, %nextras
  store i32 0, i32* %counter, align 4
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %"extras mask", align 2
  %load_mask27 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  br label %outer_not_in_extras

foreach_full_body:                                ; preds = %outer_not_in_extras
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask36 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask37" = and <16 x i1> %load_mask36, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask37", <16 x i1>* %full_mask_memory, align 2
  %counter_load38 = load i32, i32* %counter, align 4
  %smear_counter_init39 = insertelement <16 x i32> undef, i32 %counter_load38, i32 0
  %smear_counter40 = shufflevector <16 x i32> %smear_counter_init39, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val41 = add nsw <16 x i32> %smear_counter40, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val41, <16 x i32>* %i, align 64
  %i_load42 = load <16 x i32>, <16 x i32>* %i, align 64
  %o_load43 = load i32*, i32** %o3, align 8
  %mul__i_load42 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load42
  %offset_cast117 = sext <16 x i32> %i_load42 to <16 x i64>
  %mul__i_load42_to_64 = sext <16 x i32> %mul__i_load42 to <16 x i64>
  %o_load43_ptr2int = ptrtoint i32* %o_load43 to i64
  %o_load43_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %o_load43_ptr2int, i32 0
  %o_load43_ptr2int_broadcast44 = shufflevector <16 x i64> %o_load43_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %o_load43_offset = add <16 x i64> %o_load43_ptr2int_broadcast44, %mul__i_load42_to_64
  %i_load45 = load <16 x i32>, <16 x i32>* %i, align 64
  %a_load46 = load i32*, i32** %a1, align 8
  %mul__i_load45 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load45
  %offset_cast = sext <16 x i32> %i_load45 to <16 x i64>
  %mul__i_load45_to_64 = sext <16 x i32> %mul__i_load45 to <16 x i64>
  %a_load46_ptr2int = ptrtoint i32* %a_load46 to i64
  %a_load46_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %a_load46_ptr2int, i32 0
  %a_load46_ptr2int_broadcast47 = shufflevector <16 x i64> %a_load46_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %a_load46_offset = add <16 x i64> %a_load46_ptr2int_broadcast47, %mul__i_load45_to_64
  %load_mask48 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask49" = and <16 x i1> %load_mask48, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask50 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask51" = and <16 x i1> %load_mask50, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets = add <16 x i64> zeroinitializer, %mul__i_load45_to_64
  %a_load46_ptr2int_2void = inttoptr i64 %a_load46_ptr2int to i8*, !filename !6, !first_line !7, !first_column !8, !last_line !7, !last_column !9
  %scaled_offsets = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load45
  %res_4.i = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %a_load46_ptr2int_2void, <16 x i32> %i_load45, <16 x i1> %"internal_mask&function_mask51", i32 4)
  %i_load52 = load <16 x i32>, <16 x i32>* %i, align 64
  %b_load53 = load i32*, i32** %b2, align 8
  %mul__i_load52 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load52
  %offset_cast113 = sext <16 x i32> %i_load52 to <16 x i64>
  %mul__i_load52_to_64 = sext <16 x i32> %mul__i_load52 to <16 x i64>
  %b_load53_ptr2int = ptrtoint i32* %b_load53 to i64
  %b_load53_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %b_load53_ptr2int, i32 0
  %b_load53_ptr2int_broadcast54 = shufflevector <16 x i64> %b_load53_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %b_load53_offset = add <16 x i64> %b_load53_ptr2int_broadcast54, %mul__i_load52_to_64
  %load_mask55 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask56" = and <16 x i1> %load_mask55, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask57 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask58" = and <16 x i1> %load_mask57, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets112 = add <16 x i64> zeroinitializer, %mul__i_load52_to_64
  %b_load53_ptr2int_2void = inttoptr i64 %b_load53_ptr2int to i8*, !filename !6, !first_line !7, !first_column !10, !last_line !7, !last_column !11
  %scaled_offsets115 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load52
  %res_4.i180 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %b_load53_ptr2int_2void, <16 x i32> %i_load52, <16 x i1> %"internal_mask&function_mask58", i32 4)
  %add_a_load46_offset_load_b_load53_offset_load = add <16 x i32> %res_4.i, %res_4.i180
  %load_mask59 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask60" = and <16 x i1> %load_mask59, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask61 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask62" = and <16 x i1> %load_mask61, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets116 = add <16 x i64> zeroinitializer, %mul__i_load42_to_64
  %o_load43_ptr2int_2void = inttoptr i64 %o_load43_ptr2int to i8*, !filename !6, !first_line !7, !first_column !12, !last_line !7, !last_column !13
  %scaled_offsets118 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load42
  call void @llvm.x86.avx512.mask.scatter.dpi.512(i8* %o_load43_ptr2int_2void, <16 x i1> %"internal_mask&function_mask62", <16 x i32> %i_load42, <16 x i32> %add_a_load46_offset_load_b_load53_offset_load, i32 4)
  %load_mask63 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %continue_mask = load <16 x i1>, <16 x i1>* %foreach_continue_lanes, align 2
  %"mask|continue_mask" = or <16 x i1> %load_mask63, %continue_mask
  store <16 x i1> %"mask|continue_mask", <16 x i1>* %internal_mask_memory, align 2
  %load_mask64 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask65" = and <16 x i1> %load_mask64, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask65", <16 x i1>* %full_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  %counter_load66 = load i32, i32* %counter, align 4
  %new_counter = add nsw i32 %counter_load66, 16
  store i32 %new_counter, i32* %counter, align 4
  br label %outer_not_in_extras

foreach_masked_body:                              ; preds = %foreach_masked_body.backedge, %partial_inner_only
  %load_mask77 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask78" = and <16 x i1> %load_mask77, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %i_load79 = load <16 x i32>, <16 x i32>* %i, align 64
  %o_load80 = load i32*, i32** %o3, align 8
  %mul__i_load79 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load79
  %offset_cast128 = sext <16 x i32> %i_load79 to <16 x i64>
  %mul__i_load79_to_64 = sext <16 x i32> %mul__i_load79 to <16 x i64>
  %o_load80_ptr2int = ptrtoint i32* %o_load80 to i64
  %o_load80_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %o_load80_ptr2int, i32 0
  %o_load80_ptr2int_broadcast81 = shufflevector <16 x i64> %o_load80_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %o_load80_offset = add <16 x i64> %o_load80_ptr2int_broadcast81, %mul__i_load79_to_64
  %i_load82 = load <16 x i32>, <16 x i32>* %i, align 64
  %a_load83 = load i32*, i32** %a1, align 8
  %mul__i_load82 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load82
  %offset_cast120 = sext <16 x i32> %i_load82 to <16 x i64>
  %mul__i_load82_to_64 = sext <16 x i32> %mul__i_load82 to <16 x i64>
  %a_load83_ptr2int = ptrtoint i32* %a_load83 to i64
  %a_load83_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %a_load83_ptr2int, i32 0
  %a_load83_ptr2int_broadcast84 = shufflevector <16 x i64> %a_load83_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %a_load83_offset = add <16 x i64> %a_load83_ptr2int_broadcast84, %mul__i_load82_to_64
  %load_mask85 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask86" = and <16 x i1> %load_mask85, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask87 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask88" = and <16 x i1> %load_mask87, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets119 = add <16 x i64> zeroinitializer, %mul__i_load82_to_64
  %a_load83_ptr2int_2void = inttoptr i64 %a_load83_ptr2int to i8*
  %scaled_offsets122 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load82
  %res_4.i181 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %a_load83_ptr2int_2void, <16 x i32> %i_load82, <16 x i1> %"internal_mask&function_mask88", i32 4)
  %i_load89 = load <16 x i32>, <16 x i32>* %i, align 64
  %b_load90 = load i32*, i32** %b2, align 8
  %mul__i_load89 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load89
  %offset_cast124 = sext <16 x i32> %i_load89 to <16 x i64>
  %mul__i_load89_to_64 = sext <16 x i32> %mul__i_load89 to <16 x i64>
  %b_load90_ptr2int = ptrtoint i32* %b_load90 to i64
  %b_load90_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %b_load90_ptr2int, i32 0
  %b_load90_ptr2int_broadcast91 = shufflevector <16 x i64> %b_load90_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %b_load90_offset = add <16 x i64> %b_load90_ptr2int_broadcast91, %mul__i_load89_to_64
  %load_mask92 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask93" = and <16 x i1> %load_mask92, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask94 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask95" = and <16 x i1> %load_mask94, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets123 = add <16 x i64> zeroinitializer, %mul__i_load89_to_64
  %b_load90_ptr2int_2void = inttoptr i64 %b_load90_ptr2int to i8*
  %scaled_offsets126 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load89
  %res_4.i182 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %b_load90_ptr2int_2void, <16 x i32> %i_load89, <16 x i1> %"internal_mask&function_mask95", i32 4)
  %add_a_load83_offset_load_b_load90_offset_load = add <16 x i32> %res_4.i181, %res_4.i182
  %load_mask96 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask97" = and <16 x i1> %load_mask96, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %load_mask98 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask99" = and <16 x i1> %load_mask98, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  %new_offsets127 = add <16 x i64> zeroinitializer, %mul__i_load79_to_64
  %o_load80_ptr2int_2void = inttoptr i64 %o_load80_ptr2int to i8*
  %scaled_offsets129 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load79
  call void @llvm.x86.avx512.mask.scatter.dpi.512(i8* %o_load80_ptr2int_2void, <16 x i1> %"internal_mask&function_mask99", <16 x i32> %i_load79, <16 x i32> %add_a_load83_offset_load_b_load90_offset_load, i32 4)
  %load_mask100 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %continue_mask101 = load <16 x i1>, <16 x i1>* %foreach_continue_lanes, align 2
  %"mask|continue_mask102" = or <16 x i1> %load_mask100, %continue_mask101
  store <16 x i1> %"mask|continue_mask102", <16 x i1>* %internal_mask_memory, align 2
  %load_mask103 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask104" = and <16 x i1> %load_mask103, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask104", <16 x i1>* %full_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  %step_index_load = load i1, i1* %step_index, align 1
  br i1 %step_index_load, label %step_inner_index, label %foreach_reset

foreach_reset:                                    ; preds = %foreach_masked_body, %both_partial, %partial_inner_all_outer
  store <16 x i1> %load_mask21, <16 x i1>* %internal_mask_memory, align 2
  %load_mask107 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask108" = and <16 x i1> %load_mask107, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask108", <16 x i1>* %full_mask_memory, align 2
  %load_mask109 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask110" = and <16 x i1> %load_mask109, %__mask
  store <16 x i1> %"internal_mask&function_mask110", <16 x i1>* %full_mask_memory, align 2
  ret void

outer_not_in_extras:                              ; preds = %foreach_full_body, %allocas
  %counter34 = load i32, i32* %counter, align 4
  %before_aligned_end35 = icmp slt i32 %counter34, %aligned_end
  br i1 %before_aligned_end35, label %foreach_full_body, label %partial_inner_all_outer

all_inner_partial_outer:                          ; preds = %step_inner_index
  store <16 x i1> zeroinitializer, <16 x i1>* %internal_mask_memory, align 2
  %load_mask29 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask30" = and <16 x i1> %load_mask29, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask30", <16 x i1>* %full_mask_memory, align 2
  store i1 true, i1* %step_index, align 1
  br label %foreach_masked_body.backedge

foreach_masked_body.backedge:                     ; preds = %all_inner_partial_outer, %both_partial
  br label %foreach_masked_body

both_partial:                                     ; preds = %step_inner_index
  %i_load = load <16 x i32>, <16 x i32>* %i, align 64
  %smear_end_init = insertelement <16 x i32> undef, i32 %n_load26, i32 0
  %smear_end = shufflevector <16 x i32> %smear_end_init, <16 x i32> undef, <16 x i32> zeroinitializer
  %cmp = icmp slt <16 x i32> %i_load, %smear_end
  store <16 x i1> %cmp, <16 x i1>* %internal_mask_memory, align 2
  %load_mask31 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask32" = and <16 x i1> %load_mask31, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask32", <16 x i1>* %full_mask_memory, align 2
  store i1 false, i1* %step_index, align 1
  %counter33 = load i32, i32* %counter, align 4
  %at_end = icmp ne i32 %counter33, %n_load26
  br i1 %at_end, label %foreach_masked_body.backedge, label %foreach_reset

partial_inner_all_outer:                          ; preds = %outer_not_in_extras
  %counter67 = load i32, i32* %counter, align 4
  %before_full_end = icmp slt i32 %counter67, %n_load26
  br i1 %before_full_end, label %partial_inner_only, label %foreach_reset

partial_inner_only:                               ; preds = %partial_inner_all_outer
  %counter_load68 = load i32, i32* %counter, align 4
  %smear_counter_init69 = insertelement <16 x i32> undef, i32 %counter_load68, i32 0
  %smear_counter70 = shufflevector <16 x i32> %smear_counter_init69, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val71 = add nsw <16 x i32> %smear_counter70, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val71, <16 x i32>* %i, align 64
  %smear_end_init72 = insertelement <16 x i32> undef, i32 %n_load26, i32 0
  %smear_end73 = shufflevector <16 x i32> %smear_end_init72, <16 x i32> undef, <16 x i32> zeroinitializer
  %cmp74 = icmp slt <16 x i32> %iter_val71, %smear_end73
  store <16 x i1> %cmp74, <16 x i1>* %internal_mask_memory, align 2
  %load_mask75 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %"internal_mask&function_mask76" = and <16 x i1> %load_mask75, <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>
  store <16 x i1> %"internal_mask&function_mask76", <16 x i1>* %full_mask_memory, align 2
  store i1 false, i1* %step_index, align 1
  br label %foreach_masked_body

step_inner_index:                                 ; preds = %foreach_masked_body
  %counter_load105 = load i32, i32* %counter, align 4
  %new_counter106 = add nsw i32 %counter_load105, 16
  store i32 %new_counter106, i32* %counter, align 4
  %counter_load = load i32, i32* %counter, align 4
  %smear_counter_init = insertelement <16 x i32> undef, i32 %counter_load, i32 0
  %smear_counter = shufflevector <16 x i32> %smear_counter_init, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val = add nsw <16 x i32> %smear_counter, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val, <16 x i32>* %i, align 64
  %counter28 = load i32, i32* %counter, align 4
  %before_aligned_end = icmp slt i32 %counter28, %aligned_end
  br i1 %before_aligned_end, label %all_inner_partial_outer, label %both_partial
}

; Function Attrs: nounwind
define void @sum_ispc(i32* noalias %a, i32* noalias %b, i32* noalias %o, i32 %n) #0 {
allocas:
  %internal_mask_memory.i130 = alloca <16 x i1>, align 2
  %full_mask_memory.i131 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i132 = alloca <16 x i1>, align 2
  %launch_group_handle.i133 = alloca i8*, align 8
  %test1.i134 = alloca i8, align 1
  %internal_mask_memory.i120 = alloca <16 x i1>, align 2
  %full_mask_memory.i121 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i122 = alloca <16 x i1>, align 2
  %launch_group_handle.i123 = alloca i8*, align 8
  %test1.i124 = alloca i8, align 1
  %internal_mask_memory.i110 = alloca <16 x i1>, align 2
  %full_mask_memory.i111 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i112 = alloca <16 x i1>, align 2
  %launch_group_handle.i113 = alloca i8*, align 8
  %test1.i114 = alloca i8, align 1
  %internal_mask_memory.i100 = alloca <16 x i1>, align 2
  %full_mask_memory.i101 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i102 = alloca <16 x i1>, align 2
  %launch_group_handle.i103 = alloca i8*, align 8
  %test1.i104 = alloca i8, align 1
  %internal_mask_memory.i90 = alloca <16 x i1>, align 2
  %full_mask_memory.i91 = alloca <16 x i1>, align 2
  %returned_lanes_memory.i92 = alloca <16 x i1>, align 2
  %launch_group_handle.i93 = alloca i8*, align 8
  %test1.i94 = alloca i8, align 1
  %internal_mask_memory.i = alloca <16 x i1>, align 2
  %full_mask_memory.i = alloca <16 x i1>, align 2
  %returned_lanes_memory.i = alloca <16 x i1>, align 2
  %launch_group_handle.i = alloca i8*, align 8
  %test1.i = alloca i8, align 1
  %internal_mask_memory = alloca <16 x i1>, align 2
  %returned_lanes_memory = alloca <16 x i1>, align 2
  %launch_group_handle = alloca i8*, align 8
  %a1 = alloca i32*, align 8
  %b2 = alloca i32*, align 8
  %o3 = alloca i32*, align 8
  %n4 = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca <16 x i32>, align 64
  %"extras mask" = alloca <16 x i1>, align 2
  %foreach_continue_lanes = alloca <16 x i1>, align 2
  %step_index = alloca i1, align 1
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory, align 2
  store i8* null, i8** %launch_group_handle, align 8
  store i32* %a, i32** %a1, align 8
  store i32* %b, i32** %b2, align 8
  store i32* %o, i32** %o3, align 8
  store i32 %n, i32* %n4, align 4
  %a_load = load i32*, i32** %a1, align 8
  %ptr_typecast = ptrtoint i32* %a_load to i64
  %mod_ptr_typecast_ = urem i64 %ptr_typecast, 4096
  %mod_ptr_typecast__to_bool = icmp ne i64 %mod_ptr_typecast_, 0
  %mod_ptr_typecast__to_bool_logicalnot = xor i1 %mod_ptr_typecast__to_bool, true
  %load_mask = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %0 = bitcast <16 x i1>* %internal_mask_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0)
  %1 = bitcast <16 x i1>* %full_mask_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %1)
  %2 = bitcast <16 x i1>* %returned_lanes_memory.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %2)
  %3 = bitcast i8** %launch_group_handle.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i, align 2
  store i8* null, i8** %launch_group_handle.i, align 8
  %test_toStorageBool.i = zext i1 %mod_ptr_typecast__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i, i8* %test1.i, align 1
  %load_mask.i = load <16 x i1>, <16 x i1>* %internal_mask_memory.i, align 2
  %"internal_mask&function_mask.i" = and <16 x i1> %load_mask.i, %load_mask
  store <16 x i1> %"internal_mask&function_mask.i", <16 x i1>* %full_mask_memory.i, align 2
  %test_load.i = load i8, i8* %test1.i, align 1
  %test_load_toi1.i = trunc i8 %test_load.i to i1
  call void @llvm.assume(i1 %test_load_toi1.i)
  %4 = bitcast <16 x i1>* %internal_mask_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %4)
  %5 = bitcast <16 x i1>* %full_mask_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %5)
  %6 = bitcast <16 x i1>* %returned_lanes_memory.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %6)
  %7 = bitcast i8** %launch_group_handle.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i)
  %b_load = load i32*, i32** %b2, align 8
  %ptr_typecast5 = ptrtoint i32* %b_load to i64
  %mod_ptr_typecast5_ = urem i64 %ptr_typecast5, 4096
  %mod_ptr_typecast5__to_bool = icmp ne i64 %mod_ptr_typecast5_, 0
  %mod_ptr_typecast5__to_bool_logicalnot = xor i1 %mod_ptr_typecast5__to_bool, true
  %load_mask6 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %8 = bitcast <16 x i1>* %internal_mask_memory.i90 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %8)
  %9 = bitcast <16 x i1>* %full_mask_memory.i91 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %9)
  %10 = bitcast <16 x i1>* %returned_lanes_memory.i92 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %10)
  %11 = bitcast i8** %launch_group_handle.i93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i94)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i90, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i91, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i92, align 2
  store i8* null, i8** %launch_group_handle.i93, align 8
  %test_toStorageBool.i95 = zext i1 %mod_ptr_typecast5__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i95, i8* %test1.i94, align 1
  %load_mask.i96 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i90, align 2
  %"internal_mask&function_mask.i97" = and <16 x i1> %load_mask.i96, %load_mask6
  store <16 x i1> %"internal_mask&function_mask.i97", <16 x i1>* %full_mask_memory.i91, align 2
  %test_load.i98 = load i8, i8* %test1.i94, align 1
  %test_load_toi1.i99 = trunc i8 %test_load.i98 to i1
  call void @llvm.assume(i1 %test_load_toi1.i99)
  %12 = bitcast <16 x i1>* %internal_mask_memory.i90 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %12)
  %13 = bitcast <16 x i1>* %full_mask_memory.i91 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %13)
  %14 = bitcast <16 x i1>* %returned_lanes_memory.i92 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %14)
  %15 = bitcast i8** %launch_group_handle.i93 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i94)
  %o_load = load i32*, i32** %o3, align 8
  %ptr_typecast7 = ptrtoint i32* %o_load to i64
  %mod_ptr_typecast7_ = urem i64 %ptr_typecast7, 4096
  %mod_ptr_typecast7__to_bool = icmp ne i64 %mod_ptr_typecast7_, 0
  %mod_ptr_typecast7__to_bool_logicalnot = xor i1 %mod_ptr_typecast7__to_bool, true
  %load_mask8 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %16 = bitcast <16 x i1>* %internal_mask_memory.i100 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %16)
  %17 = bitcast <16 x i1>* %full_mask_memory.i101 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %17)
  %18 = bitcast <16 x i1>* %returned_lanes_memory.i102 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %18)
  %19 = bitcast i8** %launch_group_handle.i103 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i104)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i100, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i101, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i102, align 2
  store i8* null, i8** %launch_group_handle.i103, align 8
  %test_toStorageBool.i105 = zext i1 %mod_ptr_typecast7__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i105, i8* %test1.i104, align 1
  %load_mask.i106 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i100, align 2
  %"internal_mask&function_mask.i107" = and <16 x i1> %load_mask.i106, %load_mask8
  store <16 x i1> %"internal_mask&function_mask.i107", <16 x i1>* %full_mask_memory.i101, align 2
  %test_load.i108 = load i8, i8* %test1.i104, align 1
  %test_load_toi1.i109 = trunc i8 %test_load.i108 to i1
  call void @llvm.assume(i1 %test_load_toi1.i109)
  %20 = bitcast <16 x i1>* %internal_mask_memory.i100 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %20)
  %21 = bitcast <16 x i1>* %full_mask_memory.i101 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %21)
  %22 = bitcast <16 x i1>* %returned_lanes_memory.i102 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %22)
  %23 = bitcast i8** %launch_group_handle.i103 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i104)
  %n_load = load i32, i32* %n4, align 4
  %mod_n_load_ = urem i32 %n_load, 4096
  %mod_n_load__to_bool = icmp ne i32 %mod_n_load_, 0
  %mod_n_load__to_bool_logicalnot = xor i1 %mod_n_load__to_bool, true
  %load_mask9 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %24 = bitcast <16 x i1>* %internal_mask_memory.i110 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %24)
  %25 = bitcast <16 x i1>* %full_mask_memory.i111 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %25)
  %26 = bitcast <16 x i1>* %returned_lanes_memory.i112 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %26)
  %27 = bitcast i8** %launch_group_handle.i113 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i114)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i110, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i111, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i112, align 2
  store i8* null, i8** %launch_group_handle.i113, align 8
  %test_toStorageBool.i115 = zext i1 %mod_n_load__to_bool_logicalnot to i8
  store i8 %test_toStorageBool.i115, i8* %test1.i114, align 1
  %load_mask.i116 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i110, align 2
  %"internal_mask&function_mask.i117" = and <16 x i1> %load_mask.i116, %load_mask9
  store <16 x i1> %"internal_mask&function_mask.i117", <16 x i1>* %full_mask_memory.i111, align 2
  %test_load.i118 = load i8, i8* %test1.i114, align 1
  %test_load_toi1.i119 = trunc i8 %test_load.i118 to i1
  call void @llvm.assume(i1 %test_load_toi1.i119)
  %28 = bitcast <16 x i1>* %internal_mask_memory.i110 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %28)
  %29 = bitcast <16 x i1>* %full_mask_memory.i111 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %29)
  %30 = bitcast <16 x i1>* %returned_lanes_memory.i112 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %30)
  %31 = bitcast i8** %launch_group_handle.i113 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i114)
  %n_load10 = load i32, i32* %n4, align 4
  %greaterequal_n_load10_ = icmp uge i32 %n_load10, 4096
  %load_mask11 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %32 = bitcast <16 x i1>* %internal_mask_memory.i120 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %32)
  %33 = bitcast <16 x i1>* %full_mask_memory.i121 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %33)
  %34 = bitcast <16 x i1>* %returned_lanes_memory.i122 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %34)
  %35 = bitcast i8** %launch_group_handle.i123 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %35)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i124)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i120, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i121, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i122, align 2
  store i8* null, i8** %launch_group_handle.i123, align 8
  %test_toStorageBool.i125 = zext i1 %greaterequal_n_load10_ to i8
  store i8 %test_toStorageBool.i125, i8* %test1.i124, align 1
  %load_mask.i126 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i120, align 2
  %"internal_mask&function_mask.i127" = and <16 x i1> %load_mask.i126, %load_mask11
  store <16 x i1> %"internal_mask&function_mask.i127", <16 x i1>* %full_mask_memory.i121, align 2
  %test_load.i128 = load i8, i8* %test1.i124, align 1
  %test_load_toi1.i129 = trunc i8 %test_load.i128 to i1
  call void @llvm.assume(i1 %test_load_toi1.i129)
  %36 = bitcast <16 x i1>* %internal_mask_memory.i120 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %36)
  %37 = bitcast <16 x i1>* %full_mask_memory.i121 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %37)
  %38 = bitcast <16 x i1>* %returned_lanes_memory.i122 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %38)
  %39 = bitcast i8** %launch_group_handle.i123 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i124)
  %n_load12 = load i32, i32* %n4, align 4
  %lessequal_n_load12_ = icmp ule i32 %n_load12, 1073741823
  %load_mask13 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %40 = bitcast <16 x i1>* %internal_mask_memory.i130 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %40)
  %41 = bitcast <16 x i1>* %full_mask_memory.i131 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %41)
  %42 = bitcast <16 x i1>* %returned_lanes_memory.i132 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %42)
  %43 = bitcast i8** %launch_group_handle.i133 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %test1.i134)
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory.i130, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %full_mask_memory.i131, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %returned_lanes_memory.i132, align 2
  store i8* null, i8** %launch_group_handle.i133, align 8
  %test_toStorageBool.i135 = zext i1 %lessequal_n_load12_ to i8
  store i8 %test_toStorageBool.i135, i8* %test1.i134, align 1
  %load_mask.i136 = load <16 x i1>, <16 x i1>* %internal_mask_memory.i130, align 2
  %"internal_mask&function_mask.i137" = and <16 x i1> %load_mask.i136, %load_mask13
  store <16 x i1> %"internal_mask&function_mask.i137", <16 x i1>* %full_mask_memory.i131, align 2
  %test_load.i138 = load i8, i8* %test1.i134, align 1
  %test_load_toi1.i139 = trunc i8 %test_load.i138 to i1
  call void @llvm.assume(i1 %test_load_toi1.i139)
  %44 = bitcast <16 x i1>* %internal_mask_memory.i130 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %44)
  %45 = bitcast <16 x i1>* %full_mask_memory.i131 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %45)
  %46 = bitcast <16 x i1>* %returned_lanes_memory.i132 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %46)
  %47 = bitcast i8** %launch_group_handle.i133 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %test1.i134)
  %load_mask14 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  %n_load15 = load i32, i32* %n4, align 4
  %nitems = sub nsw i32 %n_load15, 0
  %nextras = srem i32 %nitems, 16
  %aligned_end = sub nsw i32 %n_load15, %nextras
  store i32 0, i32* %counter, align 4
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %"extras mask", align 2
  %load_mask16 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  br label %outer_not_in_extras

foreach_full_body:                                ; preds = %outer_not_in_extras
  store <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x i1>* %internal_mask_memory, align 2
  %counter_load21 = load i32, i32* %counter, align 4
  %smear_counter_init22 = insertelement <16 x i32> undef, i32 %counter_load21, i32 0
  %smear_counter23 = shufflevector <16 x i32> %smear_counter_init22, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val24 = add nsw <16 x i32> %smear_counter23, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val24, <16 x i32>* %i, align 64
  %i_load25 = load <16 x i32>, <16 x i32>* %i, align 64
  %o_load26 = load i32*, i32** %o3, align 8
  %mul__i_load25 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load25
  %offset_cast77 = sext <16 x i32> %i_load25 to <16 x i64>
  %mul__i_load25_to_64 = sext <16 x i32> %mul__i_load25 to <16 x i64>
  %o_load26_ptr2int = ptrtoint i32* %o_load26 to i64
  %o_load26_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %o_load26_ptr2int, i32 0
  %o_load26_ptr2int_broadcast27 = shufflevector <16 x i64> %o_load26_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %o_load26_offset = add <16 x i64> %o_load26_ptr2int_broadcast27, %mul__i_load25_to_64
  %i_load28 = load <16 x i32>, <16 x i32>* %i, align 64
  %a_load29 = load i32*, i32** %a1, align 8
  %mul__i_load28 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load28
  %offset_cast = sext <16 x i32> %i_load28 to <16 x i64>
  %mul__i_load28_to_64 = sext <16 x i32> %mul__i_load28 to <16 x i64>
  %a_load29_ptr2int = ptrtoint i32* %a_load29 to i64
  %a_load29_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %a_load29_ptr2int, i32 0
  %a_load29_ptr2int_broadcast30 = shufflevector <16 x i64> %a_load29_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %a_load29_offset = add <16 x i64> %a_load29_ptr2int_broadcast30, %mul__i_load28_to_64
  %load_mask31 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask32 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets = add <16 x i64> zeroinitializer, %mul__i_load28_to_64
  %a_load29_ptr2int_2void = inttoptr i64 %a_load29_ptr2int to i8*, !filename !6, !first_line !7, !first_column !8, !last_line !7, !last_column !9
  %scaled_offsets = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load28
  %res_4.i = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %a_load29_ptr2int_2void, <16 x i32> %i_load28, <16 x i1> %load_mask32, i32 4)
  %i_load33 = load <16 x i32>, <16 x i32>* %i, align 64
  %b_load34 = load i32*, i32** %b2, align 8
  %mul__i_load33 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load33
  %offset_cast73 = sext <16 x i32> %i_load33 to <16 x i64>
  %mul__i_load33_to_64 = sext <16 x i32> %mul__i_load33 to <16 x i64>
  %b_load34_ptr2int = ptrtoint i32* %b_load34 to i64
  %b_load34_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %b_load34_ptr2int, i32 0
  %b_load34_ptr2int_broadcast35 = shufflevector <16 x i64> %b_load34_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %b_load34_offset = add <16 x i64> %b_load34_ptr2int_broadcast35, %mul__i_load33_to_64
  %load_mask36 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask37 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets72 = add <16 x i64> zeroinitializer, %mul__i_load33_to_64
  %b_load34_ptr2int_2void = inttoptr i64 %b_load34_ptr2int to i8*, !filename !6, !first_line !7, !first_column !10, !last_line !7, !last_column !11
  %scaled_offsets75 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load33
  %res_4.i140 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %b_load34_ptr2int_2void, <16 x i32> %i_load33, <16 x i1> %load_mask37, i32 4)
  %add_a_load29_offset_load_b_load34_offset_load = add <16 x i32> %res_4.i, %res_4.i140
  %load_mask38 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask39 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets76 = add <16 x i64> zeroinitializer, %mul__i_load25_to_64
  %o_load26_ptr2int_2void = inttoptr i64 %o_load26_ptr2int to i8*, !filename !6, !first_line !7, !first_column !12, !last_line !7, !last_column !13
  %scaled_offsets78 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load25
  call void @llvm.x86.avx512.mask.scatter.dpi.512(i8* %o_load26_ptr2int_2void, <16 x i1> %load_mask39, <16 x i32> %i_load25, <16 x i32> %add_a_load29_offset_load_b_load34_offset_load, i32 4)
  %load_mask40 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %continue_mask = load <16 x i1>, <16 x i1>* %foreach_continue_lanes, align 2
  %"mask|continue_mask" = or <16 x i1> %load_mask40, %continue_mask
  store <16 x i1> %"mask|continue_mask", <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  %counter_load41 = load i32, i32* %counter, align 4
  %new_counter = add nsw i32 %counter_load41, 16
  store i32 %new_counter, i32* %counter, align 4
  br label %outer_not_in_extras

foreach_masked_body:                              ; preds = %foreach_masked_body.backedge, %partial_inner_only
  %load_mask50 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %i_load51 = load <16 x i32>, <16 x i32>* %i, align 64
  %o_load52 = load i32*, i32** %o3, align 8
  %mul__i_load51 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load51
  %offset_cast88 = sext <16 x i32> %i_load51 to <16 x i64>
  %mul__i_load51_to_64 = sext <16 x i32> %mul__i_load51 to <16 x i64>
  %o_load52_ptr2int = ptrtoint i32* %o_load52 to i64
  %o_load52_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %o_load52_ptr2int, i32 0
  %o_load52_ptr2int_broadcast53 = shufflevector <16 x i64> %o_load52_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %o_load52_offset = add <16 x i64> %o_load52_ptr2int_broadcast53, %mul__i_load51_to_64
  %i_load54 = load <16 x i32>, <16 x i32>* %i, align 64
  %a_load55 = load i32*, i32** %a1, align 8
  %mul__i_load54 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load54
  %offset_cast80 = sext <16 x i32> %i_load54 to <16 x i64>
  %mul__i_load54_to_64 = sext <16 x i32> %mul__i_load54 to <16 x i64>
  %a_load55_ptr2int = ptrtoint i32* %a_load55 to i64
  %a_load55_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %a_load55_ptr2int, i32 0
  %a_load55_ptr2int_broadcast56 = shufflevector <16 x i64> %a_load55_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %a_load55_offset = add <16 x i64> %a_load55_ptr2int_broadcast56, %mul__i_load54_to_64
  %load_mask57 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask58 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets79 = add <16 x i64> zeroinitializer, %mul__i_load54_to_64
  %a_load55_ptr2int_2void = inttoptr i64 %a_load55_ptr2int to i8*
  %scaled_offsets82 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load54
  %res_4.i141 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %a_load55_ptr2int_2void, <16 x i32> %i_load54, <16 x i1> %load_mask58, i32 4)
  %i_load59 = load <16 x i32>, <16 x i32>* %i, align 64
  %b_load60 = load i32*, i32** %b2, align 8
  %mul__i_load59 = mul nsw <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load59
  %offset_cast84 = sext <16 x i32> %i_load59 to <16 x i64>
  %mul__i_load59_to_64 = sext <16 x i32> %mul__i_load59 to <16 x i64>
  %b_load60_ptr2int = ptrtoint i32* %b_load60 to i64
  %b_load60_ptr2int_broadcast = insertelement <16 x i64> undef, i64 %b_load60_ptr2int, i32 0
  %b_load60_ptr2int_broadcast61 = shufflevector <16 x i64> %b_load60_ptr2int_broadcast, <16 x i64> undef, <16 x i32> zeroinitializer
  %b_load60_offset = add <16 x i64> %b_load60_ptr2int_broadcast61, %mul__i_load59_to_64
  %load_mask62 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask63 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets83 = add <16 x i64> zeroinitializer, %mul__i_load59_to_64
  %b_load60_ptr2int_2void = inttoptr i64 %b_load60_ptr2int to i8*
  %scaled_offsets86 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load59
  %res_4.i142 = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> undef, i8* %b_load60_ptr2int_2void, <16 x i32> %i_load59, <16 x i1> %load_mask63, i32 4)
  %add_a_load55_offset_load_b_load60_offset_load = add <16 x i32> %res_4.i141, %res_4.i142
  %load_mask64 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %load_mask65 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %new_offsets87 = add <16 x i64> zeroinitializer, %mul__i_load51_to_64
  %o_load52_ptr2int_2void = inttoptr i64 %o_load52_ptr2int to i8*
  %scaled_offsets89 = mul <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>, %i_load51
  call void @llvm.x86.avx512.mask.scatter.dpi.512(i8* %o_load52_ptr2int_2void, <16 x i1> %load_mask65, <16 x i32> %i_load51, <16 x i32> %add_a_load55_offset_load_b_load60_offset_load, i32 4)
  %load_mask66 = load <16 x i1>, <16 x i1>* %internal_mask_memory, align 2
  %continue_mask67 = load <16 x i1>, <16 x i1>* %foreach_continue_lanes, align 2
  %"mask|continue_mask68" = or <16 x i1> %load_mask66, %continue_mask67
  store <16 x i1> %"mask|continue_mask68", <16 x i1>* %internal_mask_memory, align 2
  store <16 x i1> zeroinitializer, <16 x i1>* %foreach_continue_lanes, align 2
  %step_index_load = load i1, i1* %step_index, align 1
  br i1 %step_index_load, label %step_inner_index, label %foreach_reset

foreach_reset:                                    ; preds = %foreach_masked_body, %both_partial, %partial_inner_all_outer
  store <16 x i1> %load_mask14, <16 x i1>* %internal_mask_memory, align 2
  ret void

outer_not_in_extras:                              ; preds = %foreach_full_body, %allocas
  %counter19 = load i32, i32* %counter, align 4
  %before_aligned_end20 = icmp slt i32 %counter19, %aligned_end
  br i1 %before_aligned_end20, label %foreach_full_body, label %partial_inner_all_outer

all_inner_partial_outer:                          ; preds = %step_inner_index
  store <16 x i1> zeroinitializer, <16 x i1>* %internal_mask_memory, align 2
  store i1 true, i1* %step_index, align 1
  br label %foreach_masked_body.backedge

foreach_masked_body.backedge:                     ; preds = %all_inner_partial_outer, %both_partial
  br label %foreach_masked_body

both_partial:                                     ; preds = %step_inner_index
  %i_load = load <16 x i32>, <16 x i32>* %i, align 64
  %smear_end_init = insertelement <16 x i32> undef, i32 %n_load15, i32 0
  %smear_end = shufflevector <16 x i32> %smear_end_init, <16 x i32> undef, <16 x i32> zeroinitializer
  %cmp = icmp slt <16 x i32> %i_load, %smear_end
  store <16 x i1> %cmp, <16 x i1>* %internal_mask_memory, align 2
  store i1 false, i1* %step_index, align 1
  %counter18 = load i32, i32* %counter, align 4
  %at_end = icmp ne i32 %counter18, %n_load15
  br i1 %at_end, label %foreach_masked_body.backedge, label %foreach_reset

partial_inner_all_outer:                          ; preds = %outer_not_in_extras
  %counter42 = load i32, i32* %counter, align 4
  %before_full_end = icmp slt i32 %counter42, %n_load15
  br i1 %before_full_end, label %partial_inner_only, label %foreach_reset

partial_inner_only:                               ; preds = %partial_inner_all_outer
  %counter_load43 = load i32, i32* %counter, align 4
  %smear_counter_init44 = insertelement <16 x i32> undef, i32 %counter_load43, i32 0
  %smear_counter45 = shufflevector <16 x i32> %smear_counter_init44, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val46 = add nsw <16 x i32> %smear_counter45, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val46, <16 x i32>* %i, align 64
  %smear_end_init47 = insertelement <16 x i32> undef, i32 %n_load15, i32 0
  %smear_end48 = shufflevector <16 x i32> %smear_end_init47, <16 x i32> undef, <16 x i32> zeroinitializer
  %cmp49 = icmp slt <16 x i32> %iter_val46, %smear_end48
  store <16 x i1> %cmp49, <16 x i1>* %internal_mask_memory, align 2
  store i1 false, i1* %step_index, align 1
  br label %foreach_masked_body

step_inner_index:                                 ; preds = %foreach_masked_body
  %counter_load69 = load i32, i32* %counter, align 4
  %new_counter70 = add nsw i32 %counter_load69, 16
  store i32 %new_counter70, i32* %counter, align 4
  %counter_load = load i32, i32* %counter, align 4
  %smear_counter_init = insertelement <16 x i32> undef, i32 %counter_load, i32 0
  %smear_counter = shufflevector <16 x i32> %smear_counter_init, <16 x i32> undef, <16 x i32> zeroinitializer
  %iter_val = add nsw <16 x i32> %smear_counter, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i32> %iter_val, <16 x i32>* %i, align 64
  %counter17 = load i32, i32* %counter, align 4
  %before_aligned_end = icmp slt i32 %counter17, %aligned_end
  br i1 %before_aligned_end, label %all_inner_partial_outer, label %both_partial
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind "min-legal-vector-width"="512" "prefer-vector-width"="512" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) "min-legal-vector-width"="512" "prefer-vector-width"="512" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) "min-legal-vector-width"="512" "prefer-vector-width"="512" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.ident = !{!0, !1}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = !{!"Intel(r) Implicit SPMD Program Compiler (Intel(r) ISPC), 1.23.0 (build commit bcb2cf896c00f9a8 @ 20240216, LLVM 16.0.6)"}
!1 = !{!"LLVM version 16.0.6 (/usr/local/src/ispc/build/llvm-source/clang 7cbf1a2591520c2491aa35339f227775f4d3adf6)"}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"ispc-u32.ispc"}
!7 = !{i32 11}
!8 = !{i32 16}
!9 = !{i32 20}
!10 = !{i32 23}
!11 = !{i32 27}
!12 = !{i32 9}
!13 = !{i32 13}
