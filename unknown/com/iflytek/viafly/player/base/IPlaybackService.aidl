package com.iflytek.viafly.player.base;

import com.iflytek.viafly.player.entity.Audio;
import com.iflytek.viafly.player.base.IPlayCallback;

interface IPlaybackService {

        boolean play();

        boolean playAudio(in Audio audio);

        Audio getPlayingAudio();

        void setPlayingAudio(in Audio currentAudio);

        boolean pause();

        boolean stop();

        boolean isPlaying();

        int getCurrentProgress();

        int getDuration();

        boolean seekTo(int position);

        void registerCallback(in IPlayCallback callback);

        void unregisterCallback(in IPlayCallback callback);

    }