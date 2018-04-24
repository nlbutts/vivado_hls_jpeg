############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sjpeg_hls
set_top SjpegFdctC_simple
add_files sjpeg_hls/src/fdct_simple.cc
add_files -tb sjpeg_hls/src/bit_writer.cc
add_files -tb sjpeg_hls/src/bit_writer.h
add_files -tb sjpeg_hls/src/colors_rgb.cc
add_files -tb sjpeg_hls/src/dichotomy.cc
add_files -tb sjpeg_hls/src/enc.cc
add_files -tb sjpeg_hls/src/fdct.cc
add_files -tb sjpeg_hls/src/headers.cc
add_files -tb sjpeg_hls/src/jpeg_tools.cc
add_files -tb sjpeg_hls/src/score_7.cc
add_files -tb sjpeg_hls/examples/sjpeg.cc -cflags "-I../src"
add_files -tb sjpeg_hls/src/sjpeg.h
add_files -tb sjpeg_hls/src/sjpegi.h
add_files -tb sjpeg_hls/examples/utils.cc
add_files -tb sjpeg_hls/examples/utils.h
add_files -tb sjpeg_hls/src/yuv_convert.cc
add_files -tb sjpeg_hls/examples
add_files -tb sjpeg_hls/src
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
source "./sjpeg_hls/solution1/directives.tcl"
csim_design -argv {C:/projects/jpeg_hw/sjpeg_hls/color_bar.ppm -q 50 -o color_bar.jpg -no_optim -no_adapt -420} -O
csynth_design
cosim_design
export_design -format ip_catalog
