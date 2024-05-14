# ATEPP: A Dataset of Automatically Transcribed Expressive Piano Performances
ATEPP is a dataset of expressive piano performances by virtuoso pianists. The dataset contains ~~11742~~ 11674 performances (~1000 hours) by 49 pianists and covers ~~1580~~ 1595 movements by 25 composers. All of the MIDI files in the dataset come from the piano transcription of existing audio recordings of piano performances. Scores in MusicXML format are also available for around half of the tracks. The dataset is organized and aligned by compositions and movements for comparative studies. More details are presented in the [paper](https://archives.ismir.net/ismir2022/paper/000053.pdf). 

## Downloade the ATEPP dataset
Please follow [disclaimer.md](https://github.com/BetsyTang/ATEPP/blob/master/disclaimer.md) to agree a disclaimer and download a latest version of ATEPP (~212MB).

## Inference 
You can inference your own track with the modified code and new checkpoint in ```piano_transcription-master```. The env and setup are the same as [https://github.com/bytedance/piano_transcription](https://github.com/bytedance/piano_transcription)

```
python3 pytorch/inference.py --model_type=Regress_onset_offset_frame_velocity_CRNN --checkpoint_path=300000_iterations.pth --audio_path="resources/schumann_romanzen.mp3" --cuda
```

## Released Versions
### Version-1.2 (Latest Release!)
There are several issues found with the ATEPP Version-1.1:
1. **Corrupted Transcriptions (CTs)** were found because of errors made by the transcription model when dealing with low-quality recordings (usually the live performances or old recordings). To detect the CTs, we compared the total note number and the duration of a performance with the medians for the same composition. We filtered out those which have similar duration to the midian but have much more/less notes with thresholds. We also mannually filtered out low-quality (annotated as `low quality`) audios by listening to them. 
    - In total, 1264 audios were categorised as low-quality, having **high possibility** to lead to CTs. The `corrupted` refers to those confirmed corrupted with midi file. 
    - In addition to low-quality audios, we annotated 1436 audios with `background noise`. These audios differ from low-quality audios in the way that they were transcribed with higher accuracy compared to those corresponding to low-quality audios. We suggest to filter out the corresponding midi files (tagged with `low quality` and `background noise`) when using the dataset.
    - As for live performances, we annotated `applause` if the recording contains that. We used `high quality` to refer to live recordings with good quality (clear, no applause, almost imperceptible background noise). 

2. **Combined Movements (CMs)** (one midi/audio consists of two or more movements) were found through a similar detection process of comparing the total note number and the duration with the medians. 7 were found, cut and relabeled.

3. **Error Labels (ELs)** of composition were found when we manually verify the suspected pieces. 220 performances were found wrongly labelled and corrected.

The `quality` feature has been added to the metadata for clarifying the audio-related information. The `repetition` feature (not thoroughly analysed) refers to whether the performer plays the repetition sections or not.

Changed Statistics:
- 11674 performances
- 1595 movements

### Version-1.1
!Updates: 65 Pieces Removed

When creating ATEPP version-1.0, we only applied movement-wise matching to remove erroneously downloaded audio. Now, we finished detecting repeated audios by audio-wise fingerprint matching. Only 65 audios were detected repeated, and the corresponding transcribed midi files were removed. The `repeats.csv` lists the repeated transcribed files that have been removed.

Changed Statistics:
- 11677 performances
- 1002 hours

### Version-1.0
- 11742 performances (in midi format)
- 1007 hours
- 1580 movements
- 25 composers
- 49 performers
- 43% with scores

## Related Works
### [Composition Entity Linker](https://github.com/anusfoil/Composition-Entity-Linker)
We've released a Python package developed for linking classical music recording & track to the corresponding composition / movement, useful in cleaning up metadata in classical music datasets.

Package on PyPI: https://pypi.org/project/composition-entity-linker/

## Contact
- Huan Zhang @github/anusfoil, huan.zhang@qmul.ac.uk, 
- Jingjing Tang @github/BetsyTang, jingjing.tang@qmul.ac.uk
- Syed Rafee, @github/syedrafee s.rafee@qmul.ac.uk

## Citation
```
@inproceedings{zhang2022atepp,
  title={ATEPP: A Dataset of Automatically Transcribed Expressive Piano Performance},
  author={Zhang, Huan and Tang, Jingjing and Rafee, Syed Rifat Mahmud and Fazekas, Simon Dixon Gy{\"o}rgy},
  booktitle={ISMIR 2022 Hybrid Conference},
  year={2022}
}
```

## License
CC BY 4.0
