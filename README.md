# ATEPP: A Dataset of Automatically Transcribed Expressive Piano Performances
ATEPP is a dataset of expressive piano performances by virtuoso pianists. The dataset contains ~~11742~~ 11677 performances (~1000 hours) by 49 pianists and covers 1580 movements by 25 composers. All of the MIDI files in the dataset come from the piano transcription of existing audio recordings of piano performances. Scores in MusicXML format are also available for around half of the tracks. The dataset is organized and aligned by compositions and movements for comparative studies. More details are presented in the [paper](https://archives.ismir.net/ismir2022/paper/000053.pdf). 

# Downloade the ATEPP dataset
Please follow [disclaimer.md](https://github.com/BetsyTang/ATEPP/blob/master/disclaimer.md) to agree a disclaimer and download a latest version of ATEPP (~212MB).

# Inference 
You can inference your own track with the modified code and new checkpoint in ```piano_transcription-master```. The env and setup are the same as [https://github.com/bytedance/piano_transcription](https://github.com/bytedance/piano_transcription)

```
python3 pytorch/inference.py --model_type=Regress_onset_offset_frame_velocity_CRNN --checkpoint_path=300000_iterations.pth --audio_path="resources/schumann_romanzen.mp3" --cuda
```

# Statistics
## Version-1.0
- 11742 performances (in midi format)
- 1007 hours
- 1580 movements
- 25 composers
- 49 performers
- 43% with scores
## Version-1.1
!Updates: 65 Pieces Removed

When creating ATEPP version-1.0, we only applied movement-wise matching to remove erroneously downloaded audio. Now, we finished detecting repeated audios by audio-wise fingerprint matching. Only 65 audios were detected repeated, and the corresponding transcribed midi files were removed. The `repeats.csv` lists the repeated transcribed files that have been removed.

Changed Statistics:
- 11677 performances
- 1002 hours

## Version-1.2 (Under Construction)
There are several issues found with the ATEPP Version-1.1:
1. **Corrupted transcription results** were found because of errors made by the transcription model when dealing with low-quality recordings. To detect the corrupted pieces, we compare the total note number and the duration of a performance with the medians of all the performances for the same composition. We filter out those which have similar duration to the midian but have much more/less notes with thresholds. Now ~60 pieces are confirmed to be corrupted and ~500 pieces are waiting for mannually checking. For thoes confirmed/suspected to be corrupted, we would not suggest to use them in the experiments.

2. **Combined movements** (the performance plays two or more movements) were found through a similar detection process of comparing the the total note number and the duration with the medians. ~170 pieces are suspected to have this issue.

3. **Error labels** of composition were found when we manually verify the suspected pieces.

Three csv files (`combined_suspect.csv`, `corrupted_suspect.csv`, `corrupted_confirmed,csv`) were uploaded. When using the dataset, you could exclude all pieces contained in these csv files. We will try to release a cleaner version soon. If you find any more issues or any errorous pieces that are not included in the above files, feel free to contact us.

# Related Works
## [Composition Entity Linker](https://github.com/anusfoil/Composition-Entity-Linker)
We've released a Python package developed for linking classical music recording & track to the corresponding composition / movement, useful in cleaning up metadata in classical music datasets.

Package on PyPI: https://pypi.org/project/composition-entity-linker/

# Contact
- Huan Zhang @github/anusfoil, huan.zhang@qmul.ac.uk, 
- Jingjing Tang @github/BetsyTang, jingjing.tang@qmul.ac.uk
- Syed Rafee, @github/syedrafee s.rafee@qmul.ac.uk

# Citation
```
@inproceedings{zhang2022atepp,
  title={ATEPP: A Dataset of Automatically Transcribed Expressive Piano Performance},
  author={Zhang, Huan and Tang, Jingjing and Rafee, Syed Rifat Mahmud and Fazekas, Simon Dixon Gy{\"o}rgy},
  booktitle={ISMIR 2022 Hybrid Conference},
  year={2022}
}
```

# License
CC BY 4.0
