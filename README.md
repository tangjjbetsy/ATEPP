# ATEPP
ATEPP is a dataset of expressive piano performances by virtuoso pianists. The dataset contains 11742 performances (~1000 hours) by 49 pianists and covers 1580 movements by 25 composers. All of the MIDI files in the dataset come from the piano transcription of existing audio recordings of piano performances. Scores in MusicXML format are also available for around half of the tracks. The dataset is organized and aligned by compositions and movements for comparative studies.
# Downloade the ATEPP dataset
Please follow [disclaimer.md](https://github.com/BetsyTang/ATEPP/blob/master/disclaimer.md) to agree a disclaimer and download a latest version of ATEPP (~212MB).
# Statistics
## Version-1.0
- 11742 performances (in midi format)
- 1007 hours
- 1580 movements
- 25 composers
- 49 performers
- 43% with scores
## Version-1.1
Updates: When creating ATEPP version-1.0, we only applied movement-wise matching to remove errorously downloaded audios. Now, we finished detecting repeated audios (exactly same audio) by applying audio-wise fingerprints matching. Only 65 auidos were found repeated, and the corresponding transcribed midi files were removed. The `repeats.csv` lists the repeated transcribed files that have been removed.
- 11677 performances
- 1002 hours

# Related Works
## Composition Entity Linker
We've released a Python package developed for linking classical music recording & track to the corresponding composition / movement, useful in cleaning up metadata in classical music datasets. Check here["https://github.com/anusfoil/Composition-Entity-Linker"] for more details.

# Contact
- Huan Zhang @github/anusfoil, huan.zhang@qmul.ac.uk, 
- Jingjing Tang @github/BetsyTang, jingjing.tang@qmul.ac.uk
- Syed Rafee, @github/syedrafee s.rafee@qmul.ac.uk
# Cite
# License
CC BY 4.0
