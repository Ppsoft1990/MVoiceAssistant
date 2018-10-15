.class public Lih;
.super Ljava/lang/Object;
.source "AudioSourceGrayControl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x7
.end annotation


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, -0x1

    sput v0, Lih;->a:I

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lih;->b:Z

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lih;->c()V

    .line 31
    sget v0, Lih;->a:I

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 41
    sget v0, Lih;->a:I

    if-gez v0, :cond_0

    .line 42
    invoke-static {}, Lih;->c()V

    .line 44
    :cond_0
    sget-boolean v0, Lih;->b:Z

    return v0
.end method

.method private static c()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 51
    sput v6, Lih;->a:I

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    .line 54
    const-string/jumbo v3, "AudioSourceGrayControl"

    const-string/jumbo v4, "checkAudioSource SDK_INT < 14 use MIC"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sput v5, Lih;->a:I

    .line 78
    .local v0, "adapterAudioSource":I
    .local v1, "cpu":Ljava/lang/String;
    .local v2, "model":Ljava/lang/String;
    :goto_0
    return-void

    .line 58
    .end local v0    # "adapterAudioSource":I
    .end local v1    # "cpu":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 59
    .restart local v1    # "cpu":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2    # "model":Ljava/lang/String;
    const-string/jumbo v3, "mt65"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    sput v7, Lih;->a:I

    .line 64
    :cond_1
    invoke-static {}, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->getAudioSource()I

    move-result v0

    .line 65
    .restart local v0    # "adapterAudioSource":I
    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    if-ne v0, v7, :cond_3

    .line 68
    :cond_2
    sput v0, Lih;->a:I

    .line 71
    :cond_3
    const-string/jumbo v3, "htc t3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    sput v5, Lih;->a:I

    .line 73
    sput-boolean v5, Lih;->b:Z

    .line 75
    :cond_4
    const-string/jumbo v3, "AudioSourceGrayControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkAudioSource MODEL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CPU="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lih;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
