.class public Lcom/iflytek/viafly/dial/cipher/NativeCipher;
.super Ljava/lang/Object;
.source "NativeCipher.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "NativeCipher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLandroid/content/Context;)[B
    .locals 1
    .param p0, "src"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->stringFromJNI([BLandroid/content/Context;)[B

    move-result-object v0

    .line 14
    .local v0, "bytes":[B
    return-object v0
.end method

.method public static b([BLandroid/content/Context;)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->stringFromJNIde([BLandroid/content/Context;)[B

    move-result-object v0

    .line 25
    .local v0, "bytes":[B
    return-object v0
.end method

.method public static native stringFromJNI([BLandroid/content/Context;)[B
.end method

.method public static native stringFromJNIde([BLandroid/content/Context;)[B
.end method
