cd lpc
for i in *.res; do bname=`basename $i .res`; $ESTDIR/bin/ch_wave $i -otype riff -o $bname.rres; $FLITEDIR/testsuite/lpc_resynth -res $bname.rres $bname.lpc ../wav/$bname.wav; done
cd ..
