#!/bin/sh

./cos_loader \
"c0.o, ;llboot.o, ;*fprr.o, ;mm.o, ;print.o, ;boot.o, ;\
\
!l.o,a1;!mpool.o,a3;!te.o,a3;!e.o,a4;!cbuf.o,a5;!va.o,a2;!vm.o,a1;!cbboot.o,a6;!ucbuf1.o,a10;!ucbuf2.o, ;!ucbufp.o,a9;!stat.o,a25:\
\
c0.o-llboot.o;\
fprr.o-print.o|[parent_]mm.o|[faulthndlr_]llboot.o;\
mm.o-[parent_]llboot.o|print.o;\
boot.o-print.o|fprr.o|mm.o|llboot.o;\
l.o-fprr.o|mm.o|print.o;\
te.o-cbuf.o|print.o|fprr.o|mm.o|va.o;\
e.o-cbuf.o|fprr.o|print.o|mm.o|l.o|va.o;\
stat.o-cbuf.o|te.o|fprr.o|l.o|print.o|e.o;\
\
cbuf.o-boot.o|fprr.o|print.o|l.o|mm.o|va.o|mpool.o;\
mpool.o-print.o|fprr.o|mm.o|boot.o|va.o|l.o;\
cbboot.o-print.o|fprr.o|mm.o|boot.o|cbuf.o;\
vm.o-fprr.o|print.o|mm.o|l.o|boot.o;\
va.o-fprr.o|print.o|mm.o|l.o|boot.o|vm.o;\
ucbuf1.o-fprr.o|ucbuf2.o|ucbufp.o|print.o|mm.o|va.o|cbuf.o|l.o;\
ucbuf2.o-print.o|mm.o|va.o|cbuf.o|l.o;\
ucbufp.o-fprr.o|print.o|mm.o|va.o|cbuf.o|l.o\
" ./gen_client_stub

#mpd.o-cbuf.o|cg.o|fprr.o|print.o|te.o|mm.o|va.o;\
#!mpd.o,a5;
#[print_]trans.o
