.class public Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;
.super Ljava/lang/Object;
.source "SpeechFlagAdapter.java"


# static fields
.field private static final SPLIT_ITEM:Ljava/lang/String; = ";"

.field private static final SPLIT_KEY_VALUE:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "SpeechFlagAdapter"

.field private static mFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpeechFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mSpeechFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSource()I
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "audio_source"

    invoke-static {v0}, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->getFlag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getFlag(Ljava/lang/String;)I
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v4, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lagm;->l()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "speechFlag":Ljava/lang/String;
    const/4 v0, -0x1

    .line 45
    .local v0, "ret":I
    if-eqz v1, :cond_0

    sget-object v3, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mSpeechFlag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    sput-object v1, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mSpeechFlag:Ljava/lang/String;

    .line 47
    sget-object v3, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mSpeechFlag:Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->initMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mFlagMap:Ljava/util/HashMap;

    .line 49
    :cond_0
    sget-object v3, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mFlagMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 50
    sget-object v3, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->mFlagMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 51
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v3, "SpeechFlagAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v4

    return v0

    .line 42
    .end local v0    # "ret":I
    .end local v1    # "speechFlag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getStartToneDelay()I
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "tone_delay"

    invoke-static {v0}, Lcom/iflytek/common/adaptation/speech/SpeechFlagAdapter;->getFlag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static initMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    const-string/jumbo v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 64
    .local v1, "item":Ljava/lang/String;
    const-string/jumbo v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "values":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 66
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v8}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SpeechFlagAdapter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method
