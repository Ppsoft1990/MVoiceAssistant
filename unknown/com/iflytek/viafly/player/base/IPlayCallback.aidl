package com.iflytek.viafly.player.base;

interface IPlayCallback {

        void onPlayComplete();

        void onPlayStateUpdated(int state);

        void onBufferingUpdate(int percent);

        void onPlayError(int errorCode);

        void onSeekComplete();

    }