.class public Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
.super Lif;
.source "SpeechSynthesizer.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundListener;
.implements Ljs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;,
        Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;,
        Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;,
        Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;,
        Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;


# instance fields
.field private b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

.field private c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

.field private d:Lid;

.field private e:Landroid/content/Context;

.field private f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

.field private g:Lju;

.field private h:Ljh;

.field private i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

.field private j:Z

.field private final k:Ljava/util/concurrent/locks/ReentrantLock;

.field private final l:Ljava/util/concurrent/locks/Condition;

.field private m:Ljo;

.field private n:Z

.field private o:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lif;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    .line 102
    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    .line 106
    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 108
    new-instance v0, Ljh;

    invoke-direct {v0}, Ljh;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    .line 110
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 114
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    .line 116
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    .line 118
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->l:Ljava/util/concurrent/locks/Condition;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n:Z

    .line 455
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->o:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    .line 170
    new-instance v0, Ljv;

    invoke-direct {v0}, Ljv;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    .line 171
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g()V

    .line 172
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->e()V

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Ljava/lang/String;Lju;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lju;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Ljava/lang/String;Lju;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p1, "x1"    # Lju;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lju;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/io/InputStream;)I
    .locals 8
    .param p1, "fpInput"    # Ljava/io/InputStream;

    .prologue
    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, "ret":I
    sget-object v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 936
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lju;I)V

    .line 937
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v5}, Ljh;->i()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(I)V

    .line 941
    :try_start_0
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCacheFileSpeak---2-- begin len= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 943
    .local v0, "buff":[B
    sget v5, Ljl;->a:I

    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 944
    const/4 v4, 0x0

    .line 945
    .local v4, "tmp_read":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 946
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v5, v6, :cond_5

    .line 948
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v6, "startCacheFileSpeak---3-- stoped"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 968
    .end local v0    # "buff":[B
    .end local v4    # "tmp_read":I
    :goto_1
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v5, v6, :cond_1

    .line 969
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v5, v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 971
    :cond_1
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v5, v6, :cond_3

    .line 972
    :cond_2
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 974
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v5

    sget-object v6, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v5, v6, :cond_4

    .line 975
    sget-object v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 978
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .line 979
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startCacheFileSpeak---4-- end ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return v3

    .line 951
    .restart local v0    # "buff":[B
    .restart local v4    # "tmp_read":I
    :cond_5
    :try_start_1
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 952
    move v2, v4

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_6

    .line 953
    const/4 v5, 0x0

    aput-byte v5, v0, v2

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 956
    .end local v2    # "i":I
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->onOutPutCallBack([BI)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 961
    .end local v0    # "buff":[B
    .end local v4    # "tmp_read":I
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    const v3, 0x8000

    .line 967
    goto :goto_1

    .line 964
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 965
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    const v3, 0x8000

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lju;)I
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lju;

    .prologue
    .line 724
    const/4 v7, 0x0

    .line 725
    .local v7, "ret":I
    sget-object v13, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->o()V

    .line 729
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lju;I)V

    .line 731
    invoke-static/range {p1 .. p1}, Lpz;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->i()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(I)V

    .line 734
    const-string/jumbo v13, "SPEECH_SpeechSynthesizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "speak text = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v10, 0x0

    .line 737
    .local v10, "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->f()I

    move-result v13

    if-lez v13, :cond_0

    .line 738
    const-wide v14, 0x40847ab851eb851fL    # 655.34

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->f()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x40dfffc000000000L    # 32767.0

    sub-double v14, v14, v16

    double-to-int v10, v14

    .line 741
    :cond_0
    const-wide v14, 0x40847ab851eb851fL    # 655.34

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->g()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x40dfffc000000000L    # 32767.0

    sub-double v14, v14, v16

    double-to-int v5, v14

    .line 743
    .local v5, "pitch":I
    const-wide v14, 0x40847ab851eb851fL    # 655.34

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->h()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x40dfffc000000000L    # 32767.0

    sub-double v14, v14, v16

    double-to-int v12, v14

    .line 745
    .local v12, "volume":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v13}, Ljh;->k()I

    move-result v11

    .line 747
    .local v11, "ttsScene":I
    const/4 v13, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v14

    const-string/jumbo v15, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/16 v16, 0x0

    .line 748
    invoke-virtual/range {v14 .. v16}, Lil;->b(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_1

    const-string/jumbo v13, "jiajia"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    .line 749
    invoke-virtual {v14}, Ljh;->e()Ljava/lang/String;

    move-result-object v14

    if-ne v13, v14, :cond_1

    if-nez v11, :cond_1

    .line 751
    const-string/jumbo v13, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v14, "set local tts role xiaomei"

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    const-string/jumbo v14, "xiaomei"

    invoke-virtual {v13, v14}, Ljh;->b(Ljava/lang/String;)V

    .line 755
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 756
    .local v4, "params":Landroid/os/Bundle;
    const-string/jumbo v13, "pitch"

    invoke-virtual {v4, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    const-string/jumbo v13, "speed"

    invoke-virtual {v4, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string/jumbo v13, "volume"

    invoke-virtual {v4, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    const-string/jumbo v13, "role_cn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v14}, Ljh;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljh$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    const-string/jumbo v13, "role_en"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v14}, Ljh;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljh$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v13, v0, v4, v1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->speak(Ljava/lang/String;Landroid/os/Bundle;Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundListener;)I

    move-result v7

    .line 764
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "model":Ljava/lang/String;
    const-wide/16 v8, 0xc8

    .line 766
    .local v8, "sleepTime":J
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, "playFlag":Ljava/lang/String;
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v13

    invoke-virtual {v13}, Lgs;->b()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 768
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v13

    invoke-virtual {v13}, Lgs;->e()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "2"

    .line 769
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 770
    sget-object v13, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->MI_ONE_C1:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->ME865:Ljava/lang/String;

    .line 771
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->LT26ii:Ljava/lang/String;

    .line 772
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->HUAIWEI_P6_C00:Ljava/lang/String;

    .line 773
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->L39h:Ljava/lang/String;

    .line 774
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 775
    :cond_2
    const-wide/16 v8, 0x578

    .line 778
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v14, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v13, v14, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 785
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v13

    sget-object v14, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v13, v14, :cond_5

    .line 786
    sget-object v13, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 788
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .line 789
    const-string/jumbo v13, "SPEECH_SpeechSynthesizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "tts status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v3    # "model":Ljava/lang/String;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "pitch":I
    .end local v6    # "playFlag":Ljava/lang/String;
    .end local v8    # "sleepTime":J
    .end local v10    # "speed":I
    .end local v11    # "ttsScene":I
    .end local v12    # "volume":I
    :goto_0
    return v7

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v13, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v14, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v13, v14, :cond_6

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 785
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v13

    sget-object v14, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v13, v14, :cond_7

    .line 786
    sget-object v13, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 788
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .line 789
    const-string/jumbo v13, "SPEECH_SpeechSynthesizer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "tts status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v15, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v14, v15, :cond_8

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 785
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v14

    sget-object v15, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v14, v15, :cond_9

    .line 786
    sget-object v14, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 788
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .line 789
    const-string/jumbo v14, "SPEECH_SpeechSynthesizer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "tts status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v13
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    if-nez v0, :cond_1

    .line 159
    const-class v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {v0, p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .line 163
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;Lju;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;
    .param p3, "listener"    # Lju;

    .prologue
    .line 377
    if-eqz p3, :cond_0

    .line 379
    :try_start_0
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWatchCallback | type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sylText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {p3, p1, p2}, Lju;->onWatchCallback(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 985
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p1, "x1"    # Lju;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lju;I)V

    return-void
.end method

.method private a(Lju;I)V
    .locals 5
    .param p1, "listener"    # Lju;
    .param p2, "error"    # I

    .prologue
    .line 392
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "playFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->p()V

    .line 397
    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 398
    if-eqz p1, :cond_1

    .line 400
    :try_start_0
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCompletedCallback | error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {p1, p2}, Lju;->onPlayCompletedCallBack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Ljava/lang/String;Lju;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lju;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/lang/String;Lju;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Lju;)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lju;

    .prologue
    .line 805
    new-instance v8, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v4

    .line 806
    .local v4, "isNetConnected":Z
    if-nez v4, :cond_1

    .line 807
    const v3, 0xc3508

    .line 808
    .local v3, "error":I
    if-eqz p2, :cond_0

    .line 810
    :try_start_0
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startMscSpeak | error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-interface {p2, v3}, Lju;->onPlayCompletedCallBack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    .end local v3    # "error":I
    :cond_0
    :goto_0
    return v3

    .line 812
    .restart local v3    # "error":I
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 820
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":I
    :cond_1
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-static {v8}, Ljb;->a(Ljh;)V

    .line 821
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->o()V

    .line 823
    const/4 v6, 0x0

    .line 824
    .local v6, "ret":I
    invoke-static {p1}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 826
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v8}, Ljh;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Ljl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 827
    .local v0, "cacheInput":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 828
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 829
    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/io/InputStream;)I

    move-result v3

    goto :goto_0

    .line 833
    :cond_2
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v8, p1}, Lji;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 834
    .local v1, "demoInput":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 835
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 836
    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/io/InputStream;)I

    move-result v3

    goto :goto_0

    .line 839
    :cond_3
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v8, p1}, Ljl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 841
    sget-object v8, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 842
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startMscSpeak begin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-direct {v5, p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    .line 846
    .local v5, "mscPlayerThread":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;
    invoke-virtual {v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->start()V

    .line 848
    :try_start_1
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 850
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v8}, Ljh;->i()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(I)V

    .line 853
    new-instance v7, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;

    invoke-direct {v7, p0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)V

    .line 880
    .local v7, "ttsMscListener":Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v8}, Ljh;->m()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 881
    const/16 v8, 0x3e80

    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    .line 882
    invoke-virtual {v9}, Ljh;->d()Ljava/lang/String;

    move-result-object v9

    .line 881
    invoke-static {v8, p1, v9}, Ljl;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_4
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v7, v9}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;->speak(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;I)I

    move-result v6

    .line 887
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startMscSpeak speak finish ret= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a()V

    .line 891
    invoke-static {v6}, Ljl;->b(I)V

    .line 893
    :goto_1
    invoke-virtual {v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v8, v9, :cond_b

    .line 894
    :cond_5
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 899
    .end local v7    # "ttsMscListener":Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;
    :catch_1
    move-exception v2

    .line 900
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 902
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startMscSpeak end status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->stop(I)V

    .line 905
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v8}, Ljh;->m()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 906
    invoke-static {}, Ljl;->a()V

    .line 908
    if-nez v6, :cond_6

    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v8, v9, :cond_7

    .line 909
    :cond_6
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msc speak error or tts stop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Ljl;->d()V

    .line 914
    :cond_7
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_9

    .line 915
    iget v8, v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a:I

    const v9, 0xc3518

    if-ne v8, v9, :cond_8

    .line 916
    const v6, 0xc3518

    .line 918
    :cond_8
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v8, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 920
    :cond_9
    invoke-virtual {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v8

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_a

    .line 921
    sget-object v8, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 923
    :cond_a
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    move v3, v6

    .line 925
    goto/16 :goto_0

    .line 896
    .restart local v7    # "ttsMscListener":Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;
    :cond_b
    :try_start_3
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_c

    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v8, v9, :cond_d

    .line 897
    :cond_c
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 902
    :cond_d
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startMscSpeak end status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->stop(I)V

    .line 905
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v8}, Ljh;->m()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 906
    invoke-static {}, Ljl;->a()V

    .line 908
    if-nez v6, :cond_e

    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v8, v9, :cond_f

    .line 909
    :cond_e
    const-string/jumbo v8, "SPEECH_SpeechSynthesizer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msc speak error or tts stop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Ljl;->d()V

    .line 914
    :cond_f
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_11

    .line 915
    iget v8, v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a:I

    const v9, 0xc3518

    if-ne v8, v9, :cond_10

    .line 916
    const v6, 0xc3518

    .line 918
    :cond_10
    iget-object v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v8, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 920
    :cond_11
    invoke-virtual {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v8

    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v8, v9, :cond_12

    .line 921
    sget-object v8, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v8}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 923
    :cond_12
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    goto/16 :goto_2

    .line 902
    .end local v7    # "ttsMscListener":Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;
    :catchall_0
    move-exception v8

    const-string/jumbo v9, "SPEECH_SpeechSynthesizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startMscSpeak end status = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->stop(I)V

    .line 905
    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v9}, Ljh;->m()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 906
    invoke-static {}, Ljl;->a()V

    .line 908
    if-nez v6, :cond_13

    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v10, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v9, v10, :cond_14

    .line 909
    :cond_13
    const-string/jumbo v9, "SPEECH_SpeechSynthesizer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "msc speak error or tts stop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Ljl;->d()V

    .line 914
    :cond_14
    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v10, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v9, v10, :cond_16

    .line 915
    iget v9, v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a:I

    const v10, 0xc3518

    if-ne v9, v10, :cond_15

    .line 916
    const v6, 0xc3518

    .line 918
    :cond_15
    iget-object v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v9, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;I)V

    .line 920
    :cond_16
    invoke-virtual {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v9

    sget-object v10, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v9, v10, :cond_17

    .line 921
    sget-object v9, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v9}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 923
    :cond_17
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    throw v8
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lju;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;)Lju;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p1, "x1"    # Lju;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    return-object p1
.end method

.method private b(I)V
    .locals 4
    .param p1, "audioType"    # I

    .prologue
    .line 336
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    invoke-virtual {v1}, Lid;->a()V

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v1}, Ljh;->i()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    .line 341
    invoke-static {v1}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "playFlag":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const/4 p1, 0x0

    .line 346
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v1}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->g()Z

    .line 349
    .end local v0    # "playFlag":Ljava/lang/String;
    :cond_1
    new-instance v1, Lid;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    const/16 v3, 0x3e80

    invoke-direct {v1, v2, p1, v3}, Lid;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    .line 350
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "ttsListener"    # Lju;
    .param p4, "callback"    # Ljj;

    .prologue
    .line 498
    :try_start_0
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, "ttsSpeak----------------1"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    if-eqz v2, :cond_0

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    .line 502
    :cond_0
    new-instance v2, Ljh;

    invoke-direct {v2}, Ljh;-><init>()V

    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    .line 503
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v2, p2}, Ljh;->a(Landroid/os/Bundle;)V

    .line 504
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v2, p4}, Ljh;->a(Ljj;)V

    .line 506
    new-instance v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V

    .line 507
    .local v1, "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;->TTS_ADD:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    iput-object v2, v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    .line 508
    iput-object p1, v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->b:Ljava/lang/Object;

    .line 509
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v2, v1, p3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;Lju;)V

    .line 510
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, "ttsSpeak----------------2"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v1    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Lju;I)V
    .locals 3
    .param p1, "listener"    # Lju;
    .param p2, "playMode"    # I

    .prologue
    .line 413
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lcom/iflytek/viafly/util/TestHelper;->sendPlayBeginBroadcast(Landroid/content/Context;I)V

    .line 414
    if-eqz p1, :cond_0

    .line 415
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "onPlayBeginCallBack ___1___"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_0
    invoke-interface {p1}, Lju;->onPlayBeginCallBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Lju;I)V
    .locals 6
    .param p1, "listener"    # Lju;
    .param p2, "pos"    # I

    .prologue
    .line 460
    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->o:I

    if-eq v3, p2, :cond_0

    if-gtz p2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iput p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->o:I

    .line 464
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b()I

    move-result v1

    .line 465
    .local v1, "len":I
    const/4 v2, 0x0

    .line 466
    .local v2, "progress":I
    if-gt p2, v1, :cond_2

    if-lez p2, :cond_2

    if-lez v1, :cond_2

    .line 467
    mul-int/lit8 v3, p2, 0x64

    div-int v2, v3, v1

    .line 469
    :cond_2
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendProcessCallback |  totalLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procBegin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz p1, :cond_0

    .line 473
    :try_start_0
    invoke-interface {p1, v2}, Lju;->onProgressCallBack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v0}, Ljb;->a(Landroid/content/Context;)Ljb;

    .line 199
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    .line 200
    invoke-static {}, Ljb;->a()Ljb;

    move-result-object v2

    .line 199
    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->createMscTtsEngine(Ljava/lang/String;ILcom/iflytek/yd/speech/msc/interfaces/MscConfig;)Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    .line 201
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->IDLE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 202
    return-void
.end method

.method static synthetic e(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e()V

    return-void
.end method

.method private f(Lju;)V
    .locals 4
    .param p1, "listener"    # Lju;

    .prologue
    .line 357
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "playFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->p()V

    .line 363
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/util/TestHelper;->sendPlayInterruptBroadcast(Landroid/content/Context;)V

    .line 364
    if-nez p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    .line 367
    :cond_1
    if-eqz p1, :cond_2

    .line 369
    :try_start_0
    invoke-interface {p1}, Lju;->onInterruptedCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_2
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()Z
    .locals 14

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v10}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->isJniLoaded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 252
    const-string/jumbo v9, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v10, "onMsgInitAisound not install."

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return v8

    .line 255
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v1

    .line 256
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    const/4 v7, 0x0

    .line 257
    .local v7, "version":I
    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginVersion()I

    move-result v7

    .line 261
    :cond_2
    iput-boolean v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    .line 262
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v10, v11, v8}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "languageChoice":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_TTS_ROLE_CHOICE"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v5

    .line 266
    .local v5, "role":I
    const-string/jumbo v2, ""

    .line 267
    .local v2, "resPath":Ljava/lang/String;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 268
    .local v3, "resourceArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-ne v0, v9, :cond_7

    .line 269
    invoke-static {}, Ljk;->a()Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v10}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v10

    invoke-virtual {v10, v2}, Lns;->c(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 271
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v10, v11, v8}, Lil;->a(Ljava/lang/String;I)V

    .line 272
    if-ge v7, v12, :cond_3

    .line 273
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    const-string/jumbo v11, "lauguage"

    const-string/jumbo v12, "cn"

    invoke-interface {v10, v11, v12}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_3
    :goto_1
    invoke-static {v5}, Ljk;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "rolePath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    .line 293
    invoke-static {v10}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v10

    invoke-virtual {v10, v6}, Lns;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 294
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    :cond_4
    const/4 v10, 0x5

    if-le v7, v10, :cond_5

    .line 298
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v10, v3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->setResource(Landroid/util/SparseArray;)I

    .line 301
    :cond_5
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    iget-object v11, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-interface {v10, v11}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->init(Landroid/content/Context;)I

    move-result v4

    .line 302
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 305
    iput-boolean v9, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    move v8, v9

    .line 306
    goto/16 :goto_0

    .line 278
    .end local v4    # "result":I
    .end local v6    # "rolePath":Ljava/lang/String;
    :cond_6
    invoke-static {v13}, Ljk;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 277
    invoke-virtual {v3, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    if-ge v7, v12, :cond_3

    .line 281
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    const-string/jumbo v11, "lauguage"

    const-string/jumbo v12, "cant"

    invoke-interface {v10, v11, v12}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    const-string/jumbo v11, "res_cant_path"

    invoke-interface {v10, v11, v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 287
    :cond_7
    if-ge v7, v12, :cond_3

    .line 288
    iget-object v10, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    const-string/jumbo v11, "lauguage"

    const-string/jumbo v12, "cn"

    invoke-interface {v10, v11, v12}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic f(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    .line 483
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->setPriority(I)V

    .line 484
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->start()V

    .line 486
    :cond_0
    return-void
.end method

.method private g(Lju;)V
    .locals 4
    .param p1, "listener"    # Lju;

    .prologue
    .line 426
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "recordFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v2}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 430
    :cond_0
    if-eqz p1, :cond_1

    .line 432
    :try_start_0
    invoke-interface {p1}, Lju;->onPlayPauseCallBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    return-object v0
.end method

.method private h(Lju;)V
    .locals 4
    .param p1, "listener"    # Lju;

    .prologue
    .line 441
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "recordFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v2}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->g()Z

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    .line 448
    :try_start_0
    invoke-interface {p1}, Lju;->onPlayResumeCallBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic i(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->m()I

    move-result v0

    return v0
.end method

.method private i(Lju;)I
    .locals 8
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 522
    const/4 v2, 0x0

    .line 523
    .local v2, "ret":I
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tts status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 527
    .local v1, "oldTtsStatus":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    :try_start_0
    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->STOPPING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V

    .line 528
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n:Z

    .line 530
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ttsStop current time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v3, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n()V

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->q()V

    .line 538
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    if-eqz v3, :cond_1

    .line 539
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a()V

    .line 541
    :cond_1
    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->stop()I

    move-result v2

    .line 545
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    if-eqz v3, :cond_3

    .line 546
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    invoke-interface {v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;->stop()V

    .line 550
    :cond_3
    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v3, :cond_5

    .line 551
    :cond_4
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f(Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_5
    :goto_0
    if-nez v2, :cond_6

    .line 558
    const/4 v3, 0x0

    .line 560
    :goto_1
    return v3

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v3, -0x1

    goto :goto_1
.end method

.method static synthetic j(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->m:Ljo;

    return-object v0
.end method

.method private j(Lju;)Z
    .locals 2
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v0, v1, :cond_0

    .line 570
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "isTtsSpeaking | true"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    .line 573
    :cond_0
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "isTtsSpeaking | false"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Lju;)I
    .locals 3
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    if-eq v0, p1, :cond_0

    .line 1098
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v0, -0x1

    .line 1102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lid;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    return-object v0
.end method

.method private m()I
    .locals 4

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 586
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lju;)I

    .line 588
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->destory()V

    .line 590
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;->destory()V

    .line 595
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b:Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    if-eqz v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    invoke-virtual {v2}, Lid;->a()V

    .line 600
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    .line 602
    :cond_2
    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic m(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->l:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1093
    return-void

    .line 1091
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;II)V

    .line 1347
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Landroid/content/Context;)V

    .line 1351
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    if-eqz v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    invoke-virtual {v1}, Lid;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "stopPlayer "

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;)V
    .locals 2
    .param p1, "aisound"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j:Z

    .line 184
    if-eqz p1, :cond_0

    .line 185
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    .line 187
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "setAisoundEngine to Plugin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljv;

    invoke-direct {v0}, Ljv;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    .line 190
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "setAisoundEngine to AisoundProxy."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "ttsListener"    # Lju;

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "ISpeechSynthesizer | speak"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "ISpeechSynthesizer | speak text length=0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    :goto_0
    monitor-exit p0

    return-void

    .line 996
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n:Z

    .line 997
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "speak ttsListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "ttsListener"    # Lju;
    .param p4, "callback"    # Ljj;

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "ISpeechSynthesizer | speak"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "ISpeechSynthesizer | speak text length=0"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    if-eqz p3, :cond_0

    .line 1013
    const v1, 0xc352b

    :try_start_1
    invoke-interface {p3, v1}, Lju;->onPlayCompletedCallBack(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1007
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1019
    :cond_1
    :try_start_3
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "speak ttsListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(Ljo;)V
    .locals 0
    .param p1, "cfg"    # Ljo;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->m:Ljo;

    .line 177
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->isJniLoaded()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 4
    .param p1, "languageType"    # I

    .prologue
    const/4 v1, 0x1

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "resourcePath":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e:Landroid/content/Context;

    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    invoke-virtual {v3}, Lns;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Resource_yueyu.mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Lju;)Z
    .locals 2
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 1026
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v1, "ISpeechSynthesizer | isSpeaking"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j(Lju;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lju;)I

    .line 217
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;->destory()V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    if-eqz v1, :cond_1

    .line 221
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V

    .line 222
    .local v0, "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;->AISOUND_INIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    iput-object v1, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    .line 223
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;Lju;)V

    .line 225
    .end local v0    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :cond_1
    return-void
.end method

.method public b(Lju;)Z
    .locals 1
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    if-eq v0, p1, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j(Lju;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lju;)I
    .locals 5
    .param p1, "ttsListener"    # Lju;

    .prologue
    const/4 v1, -0x1

    .line 1042
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---->> pauseSpeak() currentStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lju;)I

    move-result v0

    .line 1044
    .local v0, "result":I
    if-ne v1, v0, :cond_0

    .line 1053
    :goto_0
    return v1

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v2, :cond_1

    .line 1048
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "tts paused"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 1050
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lju;)V

    .line 1053
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    monitor-exit v1

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lju;)I
    .locals 5
    .param p1, "ttsListener"    # Lju;

    .prologue
    const/4 v1, -0x1

    .line 1058
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---->> resumeSpeak() currentStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lju;)I

    move-result v0

    .line 1060
    .local v0, "result":I
    if-ne v1, v0, :cond_0

    .line 1069
    :goto_0
    return v1

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v2, :cond_1

    .line 1064
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "tts resume "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    .line 1066
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h(Lju;)V

    .line 1067
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n()V

    .line 1069
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    if-eqz v1, :cond_0

    .line 325
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V

    .line 326
    .local v0, "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    iput-object v1, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    .line 327
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;Lju;)V

    .line 329
    .end local v0    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :cond_0
    return-void
.end method

.method public declared-synchronized e(Lju;)I
    .locals 4
    .param p1, "ttsListener"    # Lju;

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISpeechSynthesizer | stop speak tts listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-nez p1, :cond_1

    .line 1109
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "stopSpeak listener is null, stop all speak"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lju;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    .line 1111
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lju;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1112
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1107
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 1341
    invoke-super {p0}, Lif;->h()V

    .line 1342
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lju;)I

    .line 1343
    return-void
.end method

.method public onOutPutCallBack([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "watch"    # I

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    if-nez v1, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v1}, Ljh;->n()Ljj;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1137
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v1}, Ljh;->n()Ljj;

    move-result-object v1

    array-length v2, p1

    invoke-interface {v1, p1, v2}, Ljj;->a([BI)V

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h:Ljh;

    invoke-virtual {v1}, Ljh;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->n:Z

    if-nez v1, :cond_3

    .line 1146
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "onOutPutCallBack speak flag is false"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    :cond_3
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1153
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v2, :cond_4

    .line 1154
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "onOutPutCallBack() blocked"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    invoke-virtual {v1}, Lid;->b()V

    .line 1157
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1169
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 1164
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v1, v2, :cond_5

    .line 1165
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d:Lid;

    array-length v2, p1

    invoke-virtual {v1, v2, p1}, Lid;->a(I[B)V

    .line 1166
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v1, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c(Lju;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1169
    :cond_5
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onProcessCallBack(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, v0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c(Lju;I)V

    .line 1123
    return-void
.end method

.method public onWatchCallBack(ILjava/lang/String;)V
    .locals 1
    .param p1, "sylType"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g:Lju;

    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(ILjava/lang/String;Lju;)V

    .line 1128
    return-void
.end method
