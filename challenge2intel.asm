
challenge2:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f9b]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fad]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001050 <puts@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f75]        # 3fd0 <puts@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	31 ed                	xor    ebp,ebp
    1066:	49 89 d1             	mov    r9,rdx
    1069:	5e                   	pop    rsi
    106a:	48 89 e2             	mov    rdx,rsp
    106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1071:	50                   	push   rax
    1072:	54                   	push   rsp
    1073:	45 31 c0             	xor    r8d,r8d
    1076:	31 c9                	xor    ecx,ecx
    1078:	48 8d 3d d1 01 00 00 	lea    rdi,[rip+0x1d1]        # 1250 <main>
    107f:	ff 15 53 2f 00 00    	call   QWORD PTR [rip+0x2f53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt
    1086:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    rax,rdi
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f36]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   rax,rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    rax
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    rsi,rdi
    10d1:	48 89 f0             	mov    rax,rsi
    10d4:	48 c1 ee 3f          	shr    rsi,0x3f
    10d8:	48 c1 f8 03          	sar    rax,0x3
    10dc:	48 01 c6             	add    rsi,rax
    10df:	48 d1 fe             	sar    rsi,1
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f05]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   rax,rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    rax
    10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   rbp
    110e:	48 83 3d e2 2e 00 00 	cmp    QWORD PTR [rip+0x2ee2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    rbp,rsp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4010 <__TMC_END__>
    1133:	5d                   	pop    rbp
    1134:	c3                   	ret
    1135:	0f 1f 00             	nop    DWORD PTR [rax]
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <f>:
    1149:	f3 0f 1e fa          	endbr64
    114d:	55                   	push   rbp
    114e:	48 89 e5             	mov    rbp,rsp
    1151:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1155:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    115c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    1163:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    116a:	e9 b7 00 00 00       	jmp    1226 <f+0xdd>
    116f:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    1172:	48 63 c2             	movsxd rax,edx
    1175:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
    117c:	48 c1 e8 20          	shr    rax,0x20
    1180:	d1 f8                	sar    eax,1
    1182:	89 d1                	mov    ecx,edx
    1184:	c1 f9 1f             	sar    ecx,0x1f
    1187:	29 c8                	sub    eax,ecx
    1189:	89 c1                	mov    ecx,eax
    118b:	c1 e1 02             	shl    ecx,0x2
    118e:	01 c1                	add    ecx,eax
    1190:	89 d0                	mov    eax,edx
    1192:	29 c8                	sub    eax,ecx
    1194:	83 f8 04             	cmp    eax,0x4
    1197:	75 14                	jne    11ad <f+0x64>
    1199:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    119c:	48 63 d0             	movsxd rdx,eax
    119f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11a3:	48 01 d0             	add    rax,rdx
    11a6:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    11a9:	3c 2d                	cmp    al,0x2d
    11ab:	75 3e                	jne    11eb <f+0xa2>
    11ad:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    11b0:	48 63 c2             	movsxd rax,edx
    11b3:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
    11ba:	48 c1 e8 20          	shr    rax,0x20
    11be:	d1 f8                	sar    eax,1
    11c0:	89 d1                	mov    ecx,edx
    11c2:	c1 f9 1f             	sar    ecx,0x1f
    11c5:	29 c8                	sub    eax,ecx
    11c7:	89 c1                	mov    ecx,eax
    11c9:	c1 e1 02             	shl    ecx,0x2
    11cc:	01 c1                	add    ecx,eax
    11ce:	89 d0                	mov    eax,edx
    11d0:	29 c8                	sub    eax,ecx
    11d2:	83 f8 04             	cmp    eax,0x4
    11d5:	74 1b                	je     11f2 <f+0xa9>
    11d7:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11da:	48 63 d0             	movsxd rdx,eax
    11dd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11e1:	48 01 d0             	add    rax,rdx
    11e4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    11e7:	3c 2d                	cmp    al,0x2d
    11e9:	75 07                	jne    11f2 <f+0xa9>
    11eb:	b8 ff ff ff ff       	mov    eax,0xffffffff
    11f0:	eb 5c                	jmp    124e <f+0x105>
    11f2:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11f5:	48 63 d0             	movsxd rdx,eax
    11f8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11fc:	48 01 d0             	add    rax,rdx
    11ff:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1202:	3c 2d                	cmp    al,0x2d
    1204:	74 18                	je     121e <f+0xd5>
    1206:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1209:	48 63 d0             	movsxd rdx,eax
    120c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1210:	48 01 d0             	add    rax,rdx
    1213:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1216:	0f be c0             	movsx  eax,al
    1219:	01 45 f4             	add    DWORD PTR [rbp-0xc],eax
    121c:	eb 04                	jmp    1222 <f+0xd9>
    121e:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    1222:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    1226:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1229:	48 63 d0             	movsxd rdx,eax
    122c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1230:	48 01 d0             	add    rax,rdx
    1233:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1236:	84 c0                	test   al,al
    1238:	0f 85 31 ff ff ff    	jne    116f <f+0x26>
    123e:	83 7d fc 04          	cmp    DWORD PTR [rbp-0x4],0x4
    1242:	75 05                	jne    1249 <f+0x100>
    1244:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1247:	eb 05                	jmp    124e <f+0x105>
    1249:	b8 ff ff ff ff       	mov    eax,0xffffffff
    124e:	5d                   	pop    rbp
    124f:	c3                   	ret

0000000000001250 <main>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	55                   	push   rbp
    1255:	48 89 e5             	mov    rbp,rsp
    1258:	48 83 ec 20          	sub    rsp,0x20
    125c:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    125f:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    1263:	83 7d ec 01          	cmp    DWORD PTR [rbp-0x14],0x1
    1267:	7f 0a                	jg     1273 <main+0x23>
    1269:	b8 00 00 00 00       	mov    eax,0x0
    126e:	e9 9e 00 00 00       	jmp    1311 <main+0xc1>
    1273:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1277:	48 83 c0 08          	add    rax,0x8
    127b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    127e:	48 89 c7             	mov    rdi,rax
    1281:	e8 c3 fe ff ff       	call   1149 <f>
    1286:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    1289:	81 7d fc 32 05 00 00 	cmp    DWORD PTR [rbp-0x4],0x532
    1290:	75 6b                	jne    12fd <main+0xad>
    1292:	48 8d 05 6f 0d 00 00 	lea    rax,[rip+0xd6f]        # 2008 <_IO_stdin_used+0x8>
    1299:	48 89 c7             	mov    rdi,rax
    129c:	e8 af fd ff ff       	call   1050 <puts@plt>
    12a1:	48 8d 05 78 0d 00 00 	lea    rax,[rip+0xd78]        # 2020 <_IO_stdin_used+0x20>
    12a8:	48 89 c7             	mov    rdi,rax
    12ab:	e8 a0 fd ff ff       	call   1050 <puts@plt>
    12b0:	48 8d 05 b1 0d 00 00 	lea    rax,[rip+0xdb1]        # 2068 <_IO_stdin_used+0x68>
    12b7:	48 89 c7             	mov    rdi,rax
    12ba:	e8 91 fd ff ff       	call   1050 <puts@plt>
    12bf:	48 8d 05 ea 0d 00 00 	lea    rax,[rip+0xdea]        # 20b0 <_IO_stdin_used+0xb0>
    12c6:	48 89 c7             	mov    rdi,rax
    12c9:	e8 82 fd ff ff       	call   1050 <puts@plt>
    12ce:	48 8d 05 1b 0e 00 00 	lea    rax,[rip+0xe1b]        # 20f0 <_IO_stdin_used+0xf0>
    12d5:	48 89 c7             	mov    rdi,rax
    12d8:	e8 73 fd ff ff       	call   1050 <puts@plt>
    12dd:	48 8d 05 4c 0e 00 00 	lea    rax,[rip+0xe4c]        # 2130 <_IO_stdin_used+0x130>
    12e4:	48 89 c7             	mov    rdi,rax
    12e7:	e8 64 fd ff ff       	call   1050 <puts@plt>
    12ec:	48 8d 05 8d 0e 00 00 	lea    rax,[rip+0xe8d]        # 2180 <_IO_stdin_used+0x180>
    12f3:	48 89 c7             	mov    rdi,rax
    12f6:	e8 55 fd ff ff       	call   1050 <puts@plt>
    12fb:	eb 0f                	jmp    130c <main+0xbc>
    12fd:	48 8d 05 bd 0e 00 00 	lea    rax,[rip+0xebd]        # 21c1 <_IO_stdin_used+0x1c1>
    1304:	48 89 c7             	mov    rdi,rax
    1307:	e8 44 fd ff ff       	call   1050 <puts@plt>
    130c:	b8 00 00 00 00       	mov    eax,0x0
    1311:	c9                   	leave
    1312:	c3                   	ret

Disassembly of section .fini:

0000000000001314 <_fini>:
    1314:	f3 0f 1e fa          	endbr64
    1318:	48 83 ec 08          	sub    rsp,0x8
    131c:	48 83 c4 08          	add    rsp,0x8
    1320:	c3                   	ret
