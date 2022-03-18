## Aligning Audiobooks
Audiobooks are large speech files that usually contain a lot of "sentences". 
Speech recognition and synthesis training systems require well aligned, relatively short examples of audio and text [1]. To segment them into smaller chunks. Follow the instructions below to align your text:

## Setup and installation
1. Clone and install [CMU_Wilderness](https://github.com/festvox/datasets-CMU_Wilderness). You should stop at the make dependencies section.
2. Set the environment variables in  `[cmu_wilderness_directory]/festvox_env_settings`
3. `cd path/to/cmu_wilderness`
4. Make a directory called txt inside cmu_wilderness and copy your transcriptions files in txt format there.
5. Create directory called `download` inside cmu_wilderness and inside it create a file called `flist`. In flist list all the file names (without extensions) separated by a new line eg if you were aligning Mathew you will have :
```
MAT_001
MAT_025
MAT_026
```
The names of your audio and transcription files should be matching.
6. Copy [align.sh](align.sh) to your `cmu_wilderness` directory.

## Preprocessing

### Text normalization
1. You might want to normalize the transcriptions first so that you have good alignments. Some of the things to look for are:
   * numbers
   * digits
   * money
   * dates and times
   * Acronyms and abbreviations
   * loan words
   
 The Bible has a lot of numbers which might be written in  digits. We created [number-dictionaries]() for the data from Open.Bible. If you make a number dictionary for your language,please consider contributing.

2. If you have an idea of the utterance/sentence boundaries that you want/want to enforce, you should add an empty line to enforce that. 
Eg for the Bible, you can separate by verses or for other datasets by a period.

*Before*
```
Audiobooks are large speech files that usually contain a lot of "sentences". To segment them into smaller chunks for use in TTS and ASR applications, follow the instructions below.
```
*After*
```
Audiobooks are large speech files that usually contain a lot of "sentences".


To segment them into smaller chunks for use in TTS and ASR applications, follow the instructions below.
```
3. Create txt.done.data files. Do 
```
bin/do_found txt_to_ttd txt/*
```
### Audio preprocessing
1. Convert the audio to wav : If the audio is in mp3 format, use the following command:
```
for i in [audio_path]*.mp3; do fname2=`basename $i .mp3`; ffmpeg -i $i $fname2.wav; done
```
2. Converting the .wav files to 16K 16bit with:
```
sox orig/MAT_010.wav -r 16k -b 16 wav/MAT_010.wav
```
or to convert many files:
```
for f in orig/*.wav; do sox $f -r 16k -b 16 ../wav/$f;done
```
After this step, your audio files should be in wav folder inside cmu_wilderness.

## Alignment
1. Check that your directory has the following required structure:
``` 
   cmu_wilderness/
    align.sh
    bin/do_found
    build
        ...
    download/
        flist
    wav/
        MAT_001.wav
        MAT_002.wav
        MAT_003.wav
        ...
    txt/
        MAT_001.txt
        MAT_002.txt
        MAT_003.txt
        ...
    data/
        MAT_001.data
        MAT_002.data
        MAT_003.data
        ... 
    ... 
   ```

2. Run ```nohup bash align.sh &``` . This will run the alignment in the background. Check `nohup.out` file for progress. It can take upto 6 days depending on your compute power to fully align a 27hr audiobook(s).
3. When the alignment is done, you will have the aligned files in the `aligned` folder.

## Post-processing
1. You can order your alignments and pick the best n alignments.
[TO DO]


## References
[1]: Alan W Black "CMU Wilderness Multilingual Speech Dataset" ICASSP 2019, Brighton, UK.

