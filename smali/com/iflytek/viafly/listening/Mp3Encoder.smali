.class public Lcom/iflytek/viafly/listening/Mp3Encoder;
.super Ljava/lang/Object;
.source "Mp3Encoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native encodeBuffer([S[SI[B)I
.end method

.method public static native encodeBufferInterleaved([SI[B)I
.end method

.method public static native encodeFlush([B)I
.end method

.method public static native getMP3BufferSize()I
.end method

.method public static native getPCMBufferSize()I
.end method

.method public static native init(IIIII)I
.end method

.method public static native testLameInC()V
.end method

.method public static native unInit()I
.end method
