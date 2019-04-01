#!/usr/bin/env bash

OUTDIR="/code/data"
if [ ! -e $OUTDIR ] ; then
    echo $OUTDIR does not exist!
fi

CUR_DIR=$(pwd)

set -eu

cd $OUTDIR
../download-srtm-data.sh
echo "Data downloaded, creating tiles"
../create-tiles.sh SRTM_NE_250m.tif 10 10
../create-tiles.sh SRTM_SE_250m.tif 10 10
../create-tiles.sh SRTM_W_250m.tif 10 20
rm -rf SRTM_NE_250m.tif SRTM_SE_250m.tif SRTM_W_250m.tif srtm_ne_250m_tif/ srtm_se_250m_tif/ srtm_w_250m_tif/*.rar

cd $CUR_DIR
