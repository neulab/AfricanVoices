# AfricanVoices
AfricanVoices is a project that aims to increase the research in speech synthesis for African languages by creating and collecting high quality speech datasets for African Languages. We also avail the synthesizers that we have built for others to use. 
AfricanVoices is a collaborative project, where we welcome anyone (see the contribution section) to contribute in advancing this project.  
To learn more about the project, you can read the [AfricanVoices paper]().

The project is currently in its early stages. We have worked on the following languages:

| Language         | Langcode | Source        | No. utterances | Hrs   |
|------------------|----------|---------------|----------------|-------|
| Luo              | luo      | Open.Bible    |          11263 | 15.92 |
| Lingala          | lin      | Open.Bible    |          12957 | 27.52 |
| Kikuyu           | kik      | Open.Bible    |          10877 | 17.72 |
| Yoruba           | yor      | Open.Bible    |          10978 | 18.04 |
| Hausa-M          | hau      | CommonVoice   |            518 |  0.62 |
| Hausa-F          | hau      | CommonVoice   |           1938 |   2.3 |
| Luganda          | lug      | CommonVoice   |           2942 |  4.52 |
| Ibibio           | ibb      | LLSTI         |            125 |  0.32 |
| Kiswahili        | swa      | LLSTI         |            426 |  0.53 |
| Wolof            | wol      | ALFFA         |           1000 |   1.2 |
| Fongbe           | fon      | ALFFA         |            542 |  0.33 |
| Suba             | sxb      | Bible.is      |          11971 | 24.82 |
| Suba             | sxb      | AfricanVoices |           1178 |   1.7 |
| Luo              | luo      | AfricanVoices |           1516 |  1.79 |
| English (Kenyan) | en-ke    | AfricanVoices |            596 | ~     |

Find the data and synthesizers  [on the AfricanVoices website]().
## Data Sources

Besides creating the data, we also use available data from other sources so that we can have a wide coverage. We have used the following resources so far :

* [Open.Bible](https://open.bible/resources/): Avails Bible recordings in form of audiobooks. We used the methodology in CMU-wilderness to align the corpus. The code for aligning can be found in [Aligning AudioBooks](code/README.md)
* [Faith comes by hearing](https://www.faithcomesbyhearing.com/audio-bible-resources/bible-is): Also known as Bible.is.They avail Bible recordings in the form of audiobooks. Used the same procedure as Open.Bible. We do used this for Suba but we cannot release the data as the license doesn't allow. You are encouraged to use them for your personal experimenrts.
* [LLSTI](http://www.llsti.org/): The Local Language Speech Technology Initiative
project developed TTS datasets for localization of speech technology. We obtained Ibibio  and Kiswahili by converting the publicly distributed lpc and res files to wav using  Festvox tools.
* [Mozilla CommonVoice](https://commonvoice.mozilla.org/en/datasets) : We selected data from a single speaker with the most utterances for Luganda and Hausa.
* [ALFFA](https://github.com/besacier/ALFFA_PUBLIC): ALFFA project [1] developed TTS and ASR technologies and data for Kiswahili, Fongbe, Wolof and Amharic.
We selected a single speaker subset of the data for each language.

We appreciate all the creators of the above resources.

## Number dictionaries
This is a resource we created to be used in normalizing numbers, an important step in both aligning and building TTS systems. Find it [here](number_dictionaries/).

## Developing your own dataset

### Aligning audiobooks
To align audiobooks/long audio files, follow the guidelines in the [Aligning AudioBooks](code/alignment/README.md) section.

### Recording
There are guidelines in the [Creating Data](https://github.com/neulab/newlang-tech/tree/main/speech-synthesis#2-creating-data) section of NewLangTech.


## Building a speech synthesizer
We have developed for building s speech synthesizer [here](https://github.com/neulab/newlang-tech/tree/main/speech-synthesis#3-training-a-speech-synthesizer).

## Contributing

We highly welcome contributions through issues or pull requests.
Here are some contribution ideas:
- Provide a dataset for a language; either you recorded yourself or from other sources(as long as the license allows).
- Provide a synthesizer that you have trained.
- Provide a number dictionary for a language.
- Correct a mistake in the current number dictionaries or add alternatives. 
- Help in improving the documentation or code
- Evaluate output of a synthesizer.

# References
[1] E. Gauthier, L. Besacier, S. Voisin, M. Melese, and U. P.
Elingui, “Collecting resources in sub-Saharan African languages
for automatic speech recognition: a case study of Wolof,” in
Proceedings of the Tenth International Conference on Language
Resources and Evaluation (LREC’16). Portorož, Slovenia:
European Language Resources Association (ELRA), May 2016,
pp. 3863–3867. [Online]. Available: https://aclanthology.org/
L16-1611

