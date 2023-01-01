# ============ Inference using pretrained model ============
# Download checkpoint and inference

# CHECKPOINT_PATH="workspace/checkpoints/300000_iterations.pth"
# wget -O $CHECKPOINT_PATH "https://zenodo.org/record/4034264/files/CRNN_note_F1%3D0.9677_pedal_F1%3D0.9186.pth?download=1"
# MODEL_TYPE="Regress_onset_offset_frame_velocity_CRNN"
# MODEL_TYPE="Note_pedal"
# python3 pytorch/inference.py --model_type=$MODEL_TYPE --checkpoint_path=$CHECKPOINT_PATH --audio_path='resources/cut_liszt.mp3' --cuda

python3 pytorch/inference.py --model_type=Regress_onset_offset_frame_velocity_CRNN --checkpoint_path=300000_iterations.pth --audio_path="resources/schumann_romanzen.mp3" --cuda