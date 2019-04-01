#!/usr/bin/env bash

set -eu

if [ ! -f SRTM_NE_250m_TIF.rar ]; then
  aria2c -x 5 -c http://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_NE_250m_TIF.rar
fi
if [ ! -f SRTM_SE_250m_TIF.rar ]; then
  aria2c -x 5 -c http://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_SE_250m_TIF.rar
fi
if [ ! -f SRTM_W_250m_TIF.rar ]; then
  aria2c -x 5 -c http://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_W_250m_TIF.rar
fi

unar srtm_ne_250m_tif.rar SRTM_NE_250m.tif
unar srtm_se_250m_tif.rar SRTM_SE_250m.tif
unar srtm_w_250m_tif.rar SRTM_W_250m.tif
mv srtm_ne_250m_tif/SRTM_NE_250m.tif .
mv srtm_se_250m_tif/SRTM_SE_250m.tif .
mv srtm_w_250m_tif/SRTM_W_250m.tif .

