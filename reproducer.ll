; ModuleID = 'reproducer.df2a69a0-cgu.0'
source_filename = "reproducer.df2a69a0-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"core::sync::atomic::AtomicPtr<()>" = type { i8* }

@_ZN10reproducer7memrchr2FN17hba5c5df7f9a4f66bE = internal unnamed_addr global <{ i8*, [0 x i8] }> <{ i8* bitcast (void ()* @_ZN10reproducer7memrchr6detect17h5b815d1bba61949dE to i8*), [0 x i8] zeroinitializer }>, align 8, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @mainCRTStartup() unnamed_addr #0 !dbg !181 {
start:
  call void @llvm.dbg.value(metadata %"core::sync::atomic::AtomicPtr<()>"* undef, metadata !187, metadata !DIExpression()) #4, !dbg !201
  call void @llvm.dbg.value(metadata i8 4, metadata !200, metadata !DIExpression()) #4, !dbg !201
  call void @llvm.dbg.value(metadata i8 4, metadata !211, metadata !DIExpression()) #4, !dbg !218
  call void @llvm.dbg.value(metadata {}** undef, metadata !217, metadata !DIExpression()) #4, !dbg !218
  %0 = load atomic i64, i64* bitcast (<{ i8*, [0 x i8] }>* @_ZN10reproducer7memrchr2FN17hba5c5df7f9a4f66bE to i64*) seq_cst, align 8, !dbg !220
  call void @llvm.dbg.value(metadata i64 %0, metadata !208, metadata !DIExpression()) #4, !dbg !221
  %1 = inttoptr i64 %0 to void ()*, !dbg !222
  %2 = icmp ne i64 %0, 0
  tail call void @llvm.assume(i1 %2) #4
  tail call void %1() #4, !dbg !222
  ret i32 0, !dbg !223
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; reproducer::memrchr::detect
; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal void @_ZN10reproducer7memrchr6detect17h5b815d1bba61949dE() unnamed_addr #3 !dbg !224 {
  ret void, !dbg !225
}

attributes #0 = { nounwind uwtable "target-cpu"="x86-64" }
attributes #1 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "target-cpu"="x86-64" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.dbg.cu = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FN", linkageName: "_ZN10reproducer7memrchr2FN17hba5c5df7f9a4f66bE", scope: !2, file: !4, line: 8, type: !5, isLocal: false, isDefinition: true, align: 8)
!2 = !DINamespace(name: "memrchr", scope: !3)
!3 = !DINamespace(name: "reproducer", scope: null)
!4 = !DIFile(filename: "src/lib.rs", directory: "/home/roblabla/Documents/foss/reproduce-81408", checksumkind: CSK_SHA1, checksum: "3e015c8111516fe363dadf2da17a8035234493b9")
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "AtomicPtr<tuple$<> >", scope: !7, file: !6, size: 64, align: 64, elements: !10, templateParams: !20, identifier: "c6c95e813fe1c4cb583197d0b110bd7f")
!6 = !DIFile(filename: "<unknown>", directory: "")
!7 = !DINamespace(name: "atomic", scope: !8)
!8 = !DINamespace(name: "sync", scope: !9)
!9 = !DINamespace(name: "core", scope: null)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5, file: !6, baseType: !12, size: 64, align: 64)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<ptr_mut$<tuple$<> > >", scope: !13, file: !6, size: 64, align: 64, elements: !14, templateParams: !18, identifier: "88e41f0dbef727391f0631473bf18be3")
!13 = !DINamespace(name: "cell", scope: !9)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !12, file: !6, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_mut$<tuple$<> >", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!18 = !{!19}
!19 = !DITemplateTypeParameter(name: "T", type: !16)
!20 = !{!21}
!21 = !DITemplateTypeParameter(name: "T", type: !17)
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 2, !"CodeView", i32 1}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !27, producer: "clang LLVM (rustc version 1.57.0 (f1edd0429 2021-11-29))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28)
!27 = !DIFile(filename: "src/main.rs", directory: "/home/roblabla/Documents/foss/reproduce-81408")
!28 = !{!29, !38, !43, !125, !90, !113, !142, !165}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !7, file: !6, baseType: !30, size: 8, align: 8, flags: DIFlagEnumClass, elements: !32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, baseType: !31)
!31 = !DIBasicType(name: "unsigned __int8", size: 8, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "Relaxed", value: 0)
!34 = !DIEnumerator(name: "Release", value: 1)
!35 = !DIEnumerator(name: "Acquire", value: 2)
!36 = !DIEnumerator(name: "AcqRel", value: 3)
!37 = !DIEnumerator(name: "SeqCst", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !39, file: !6, baseType: !16, size: 64, align: 64, flags: DIFlagEnumClass, elements: !40)
!39 = !DINamespace(name: "option", scope: !9)
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "None", value: 0)
!42 = !DIEnumerator(name: "Some", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Discriminant$", scope: !44, file: !6, baseType: !64, size: 64, align: 64, flags: DIFlagEnumClass, elements: !126)
!44 = !DICompositeType(tag: DW_TAG_union_type, name: "enum$<core::option::Option<ref$<core::fmt::Arguments> >, 1, 18446744073709551615, Some>", file: !6, size: 64, align: 64, elements: !45, templateParams: !178, identifier: "5b5e4285eabc605054447601b1961547")
!45 = !{!46, !180}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "dataful_variant", scope: !44, file: !6, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !44, file: !6, size: 64, align: 64, elements: !48, templateParams: !178, identifier: "5b5e4285eabc605054447601b1961547::Some")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !47, file: !6, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ref$<Arguments>", baseType: !51, size: 64, align: 64, dwarfAddressSpace: 0)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !52, file: !6, size: 384, align: 64, elements: !53, templateParams: !66, identifier: "7e38858026fda4b120e6e229c6a6a76e")
!52 = !DINamespace(name: "fmt", scope: !9)
!53 = !{!54, !68, !128}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !51, file: !6, baseType: !55, size: 128, align: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "slice$<str>", file: !6, size: 128, align: 64, elements: !56, templateParams: !66, identifier: "e5181a2ba73cefd2b9372dc5646453a9")
!56 = !{!57, !67}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !55, file: !6, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_const$<str>", baseType: !59, size: 64, align: 64, dwarfAddressSpace: 0)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "str", file: !6, size: 128, align: 64, elements: !60, templateParams: !66, identifier: "7ef2a91eecc7bcf4b4aaea2dbce79437")
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !59, file: !6, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_const$<u8>", baseType: !30, size: 64, align: 64, dwarfAddressSpace: 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !59, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "usize", file: !6, baseType: !65)
!65 = !DIBasicType(name: "size_t", size: 64, encoding: DW_ATE_unsigned)
!66 = !{}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !55, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !51, file: !6, baseType: !69, size: 128, align: 64, offset: 128)
!69 = !DICompositeType(tag: DW_TAG_union_type, name: "enum$<core::option::Option<slice$<core::fmt::rt::v1::Argument> >, 1, 18446744073709551615, Some>", file: !6, size: 128, align: 64, elements: !70, templateParams: !122, identifier: "9f12058bb667a24b38934f7caa658ba4")
!70 = !{!71, !124}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dataful_variant", scope: !69, file: !6, baseType: !72, size: 128, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !69, file: !6, size: 128, align: 64, elements: !73, templateParams: !122, identifier: "9f12058bb667a24b38934f7caa658ba4::Some")
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !72, file: !6, baseType: !75, size: 128, align: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "slice$<core::fmt::rt::v1::Argument>", file: !6, size: 128, align: 64, elements: !76, templateParams: !66, identifier: "51a3f8d51de3c140666a7f399cafd84")
!76 = !{!77, !121}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !75, file: !6, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_const$<Argument>", baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !80, file: !6, size: 448, align: 64, elements: !82, templateParams: !66, identifier: "5cedcac9814cbf911535f483b20c17c7")
!80 = !DINamespace(name: "v1", scope: !81)
!81 = !DINamespace(name: "rt", scope: !52)
!82 = !{!83, !84}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !79, file: !6, baseType: !64, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !79, file: !6, baseType: !85, size: 384, align: 64, offset: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormatSpec", scope: !80, file: !6, size: 384, align: 64, elements: !86, templateParams: !66, identifier: "2fa51ffafee008ca951439ebb20b70cf")
!86 = !{!87, !89, !96, !99, !120}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !85, file: !6, baseType: !88, size: 32, align: 32, offset: 256)
!88 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !85, file: !6, baseType: !90, size: 8, align: 8, offset: 320)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !80, file: !6, baseType: !30, size: 8, align: 8, flags: DIFlagEnumClass, elements: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "Left", value: 0)
!93 = !DIEnumerator(name: "Right", value: 1)
!94 = !DIEnumerator(name: "Center", value: 2)
!95 = !DIEnumerator(name: "Unknown", value: 3)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !6, baseType: !97, size: 32, align: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, baseType: !98)
!98 = !DIBasicType(name: "unsigned __int32", size: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !85, file: !6, baseType: !100, size: 128, align: 64)
!100 = !DICompositeType(tag: DW_TAG_union_type, name: "enum$<core::fmt::rt::v1::Count>", file: !6, size: 128, align: 64, elements: !101, templateParams: !66, identifier: "ccce56050c87953c6357a40ad22ff917")
!101 = !{!102, !106, !110, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "variant0", scope: !100, file: !6, baseType: !103, size: 128, align: 64, extraData: i64 0)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !100, file: !6, size: 128, align: 64, elements: !104, templateParams: !66, identifier: "ccce56050c87953c6357a40ad22ff917::Is")
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !103, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "variant1", scope: !100, file: !6, baseType: !107, size: 128, align: 64, extraData: i64 1)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !100, file: !6, size: 128, align: 64, elements: !108, templateParams: !66, identifier: "ccce56050c87953c6357a40ad22ff917::Param")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !107, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "variant2", scope: !100, file: !6, baseType: !111, size: 128, align: 64, extraData: i64 2)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !100, file: !6, size: 128, align: 64, elements: !66, templateParams: !66, identifier: "ccce56050c87953c6357a40ad22ff917::Implied")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "discriminant", scope: !100, file: !6, baseType: !113, size: 64, align: 64)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Count", scope: !80, file: !6, baseType: !114, size: 64, align: 64, flags: DIFlagEnumClass, elements: !116)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, baseType: !115)
!115 = !DIBasicType(name: "unsigned __int64", size: 64, encoding: DW_ATE_unsigned)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "Is", value: 0)
!118 = !DIEnumerator(name: "Param", value: 1)
!119 = !DIEnumerator(name: "Implied", value: 2)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !85, file: !6, baseType: !100, size: 128, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!122 = !{!123}
!123 = !DITemplateTypeParameter(name: "T", type: !75)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "discriminant", scope: !69, file: !6, baseType: !125, size: 128, align: 64)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Discriminant$", scope: !69, file: !6, baseType: !64, size: 64, align: 64, flags: DIFlagEnumClass, elements: !126)
!126 = !{!127}
!127 = !DIEnumerator(name: "None", value: 0, isUnsigned: true)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !51, file: !6, baseType: !129, size: 128, align: 64, offset: 256)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "slice$<core::fmt::ArgumentV1>", file: !6, size: 128, align: 64, elements: !130, templateParams: !66, identifier: "4ae4d5fabc328466c2dfc592dc22530c")
!130 = !{!131, !177}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !129, file: !6, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_const$<ArgumentV1>", baseType: !133, size: 64, align: 64, dwarfAddressSpace: 0)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentV1", scope: !52, file: !6, size: 128, align: 64, elements: !134, templateParams: !66, identifier: "91360fa37a32cbf4b86ecc09678a3da8")
!134 = !{!135, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !133, file: !6, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ref$<Opaque>", baseType: !137, size: 64, align: 64, dwarfAddressSpace: 0)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", file: !6, align: 8, elements: !66, identifier: "5dda6ffecdd070bdf504faeb28a11ae8")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !133, file: !6, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "enum$<core::result::Result<tuple$<>,core::fmt::Error> > (*)(ref$<core::fmt::::Opaque>,ref_mut$<core::fmt::Formatter>)", baseType: !140, size: 64, align: 64, dwarfAddressSpace: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !136, !147}
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !143, file: !6, baseType: !30, size: 8, align: 8, flags: DIFlagEnumClass, elements: !144)
!143 = !DINamespace(name: "result", scope: !9)
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "Ok", value: 0)
!146 = !DIEnumerator(name: "Err", value: 1)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ref_mut$<Formatter>", baseType: !148, size: 64, align: 64, dwarfAddressSpace: 0)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !52, file: !6, size: 512, align: 64, elements: !149, templateParams: !66, identifier: "fb98afdf1edc202faa2bef7389a2e91c")
!149 = !{!150, !151, !152, !153, !166, !167}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !6, baseType: !97, size: 32, align: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !148, file: !6, baseType: !88, size: 32, align: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !148, file: !6, baseType: !90, size: 8, align: 8, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !148, file: !6, baseType: !154, size: 128, align: 64)
!154 = !DICompositeType(tag: DW_TAG_union_type, name: "enum$<core::option::Option<usize> >", file: !6, size: 128, align: 64, elements: !155, templateParams: !158, identifier: "f19787a163da56c09a842fffdb11add7")
!155 = !{!156, !160, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "variant0", scope: !154, file: !6, baseType: !157, size: 128, align: 64, extraData: i64 0)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !154, file: !6, size: 128, align: 64, elements: !66, templateParams: !158, identifier: "f19787a163da56c09a842fffdb11add7::None")
!158 = !{!159}
!159 = !DITemplateTypeParameter(name: "T", type: !64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "variant1", scope: !154, file: !6, baseType: !161, size: 128, align: 64, extraData: i64 1)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !154, file: !6, size: 128, align: 64, elements: !162, templateParams: !158, identifier: "f19787a163da56c09a842fffdb11add7::Some")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !161, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "discriminant", scope: !154, file: !6, baseType: !165, size: 64, align: 64)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !39, file: !6, baseType: !114, size: 64, align: 64, flags: DIFlagEnumClass, elements: !40)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !148, file: !6, baseType: !154, size: 128, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !148, file: !6, baseType: !168, size: 128, align: 64, offset: 256)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "ref_mut$<dyn$<core::fmt::Write> >", file: !6, size: 128, align: 64, elements: !169, templateParams: !66, identifier: "db21c4820ab588111e9b639306cc8f97")
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !168, file: !6, baseType: !171, size: 64, align: 64, flags: DIFlagArtificial)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_mut$<u8>", baseType: !30, size: 64, align: 64, dwarfAddressSpace: 0)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !168, file: !6, baseType: !173, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ref$<array$<usize,3> >", baseType: !174, size: 64, align: 64, dwarfAddressSpace: 0)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, align: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 3, lowerBound: 0)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !6, baseType: !64, size: 64, align: 64, offset: 64)
!178 = !{!179}
!179 = !DITemplateTypeParameter(name: "T", type: !50)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "discriminant", scope: !44, file: !6, baseType: !43, size: 64, align: 64)
!181 = distinct !DISubprogram(name: "mainCRTStartup", scope: !3, file: !182, line: 9, type: !183, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, templateParams: !66, retainedNodes: !66)
!182 = !DIFile(filename: "src/main.rs", directory: "/home/roblabla/Documents/foss/reproduce-81408", checksumkind: CSK_SHA1, checksum: "3e50338b21138e96e1ae4fc3dd18077559be9681")
!183 = !DISubroutineType(types: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "i32", file: !6, baseType: !186)
!186 = !DIBasicType(name: "__int32", size: 32, encoding: DW_ATE_signed)
!187 = !DILocalVariable(name: "self", arg: 1, scope: !188, file: !189, line: 989, type: !198)
!188 = distinct !DISubprogram(name: "load<tuple$<> >", linkageName: "_ZN4core4sync6atomic18AtomicPtr$LT$T$GT$4load17hce748dd9ace3e4f0E", scope: !190, file: !189, line: 989, type: !196, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, templateParams: !20, retainedNodes: !199)
!189 = !DIFile(filename: "/rustc/f1edd0429582dd29cccacaf50fd134b05593bd9c\\library\\core\\src\\sync\\atomic.rs", directory: "", checksumkind: CSK_SHA1, checksum: "255b5d58d9dc6eaadb171c715478ad8582fa51f1")
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "AtomicPtr<tuple$<> >", scope: !7, file: !6, size: 64, align: 64, elements: !191, templateParams: !20, identifier: "c6c95e813fe1c4cb583197d0b110bd7f")
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !190, file: !6, baseType: !193, size: 64, align: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<ptr_mut$<tuple$<> > >", scope: !13, file: !6, size: 64, align: 64, elements: !194, templateParams: !18, identifier: "88e41f0dbef727391f0631473bf18be3")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !6, baseType: !16, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!16, !198, !29}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ref$<AtomicPtr<tuple$<> > >", baseType: !190, size: 64, align: 64, dwarfAddressSpace: 0)
!199 = !{!187, !200}
!200 = !DILocalVariable(name: "order", arg: 2, scope: !188, file: !189, line: 989, type: !29)
!201 = !DILocation(line: 0, scope: !188, inlinedAt: !202)
!202 = distinct !DILocation(line: 11, scope: !203, inlinedAt: !210)
!203 = distinct !DISubprogram(name: "memrchr", linkageName: "_ZN10reproducer7memrchr17h8fd4412fa7029021E", scope: !3, file: !204, line: 5, type: !205, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, templateParams: !66, retainedNodes: !207)
!204 = !DIFile(filename: "/home/roblabla/Documents/foss/reproduce-81408/src/lib.rs", directory: "", checksumkind: CSK_SHA1, checksum: "3e015c8111516fe363dadf2da17a8035234493b9")
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DILocalVariable(name: "fun", scope: !209, file: !204, line: 11, type: !16, align: 8)
!209 = distinct !DILexicalBlock(scope: !203, file: !204, line: 11)
!210 = distinct !DILocation(line: 10, scope: !181)
!211 = !DILocalVariable(name: "order", arg: 2, scope: !212, file: !189, line: 2356, type: !29)
!212 = distinct !DISubprogram(name: "atomic_load<ptr_mut$<tuple$<> > >", linkageName: "_ZN4core4sync6atomic11atomic_load17he8948dea673a208dE", scope: !7, file: !189, line: 2356, type: !213, scopeLine: 2356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, templateParams: !18, retainedNodes: !216)
!213 = !DISubroutineType(types: !214)
!214 = !{!16, !215, !29}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr_const$<ptr_mut$<tuple$<> > >", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!216 = !{!217, !211}
!217 = !DILocalVariable(name: "dst", arg: 1, scope: !212, file: !189, line: 2356, type: !215)
!218 = !DILocation(line: 0, scope: !212, inlinedAt: !219)
!219 = distinct !DILocation(line: 991, scope: !188, inlinedAt: !202)
!220 = !DILocation(line: 2362, scope: !212, inlinedAt: !219)
!221 = !DILocation(line: 0, scope: !209, inlinedAt: !210)
!222 = !DILocation(line: 12, scope: !209, inlinedAt: !210)
!223 = !DILocation(line: 12, scope: !181)
!224 = distinct !DISubprogram(name: "detect", linkageName: "_ZN10reproducer7memrchr6detect17h5b815d1bba61949dE", scope: !2, file: !4, line: 6, type: !205, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, templateParams: !66, retainedNodes: !66)
!225 = !DILocation(line: 6, scope: !224)
