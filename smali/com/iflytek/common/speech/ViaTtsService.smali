.class public Lcom/iflytek/common/speech/ViaTtsService;
.super Landroid/speech/tts/TextToSpeechService;
.source "ViaTtsService.java"

# interfaces
.implements Ljj;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[[Ljava/lang/String;

.field private static d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;


# instance fields
.field private e:Landroid/speech/tts/SynthesisCallback;

.field private f:I

.field private g:Lju;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "zho"

    aput-object v1, v0, v2

    const-string/jumbo v1, "CHN"

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/common/speech/ViaTtsService;->a:[Ljava/lang/String;

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "eng"

    aput-object v1, v0, v2

    const-string/jumbo v1, "USA"

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/common/speech/ViaTtsService;->b:[Ljava/lang/String;

    .line 33
    new-array v0, v4, [[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/common/speech/ViaTtsService;->a:[Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/speech/ViaTtsService;->b:[Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/common/speech/ViaTtsService;->c:[[Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsService;->e:Landroid/speech/tts/SynthesisCallback;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/speech/ViaTtsService;->f:I

    .line 134
    new-instance v0, Lcom/iflytek/common/speech/ViaTtsService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/common/speech/ViaTtsService$1;-><init>(Lcom/iflytek/common/speech/ViaTtsService;)V

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsService;->g:Lju;

    return-void
.end method

.method private a(Landroid/speech/tts/SynthesisRequest;)Landroid/os/Bundle;
    .locals 10
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    .prologue
    const/16 v7, 0xc8

    .line 193
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v3, "params":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "variant":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v4

    .line 201
    .local v4, "pitch":I
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    .line 202
    .local v5, "rate":I
    if-gt v5, v7, :cond_0

    if-ltz v5, :cond_0

    .line 203
    div-int/lit8 v5, v5, 0x2

    .line 205
    :cond_0
    if-le v5, v7, :cond_1

    .line 206
    const/16 v5, 0x64

    .line 208
    :cond_1
    if-gez v5, :cond_2

    .line 209
    const/4 v5, 0x0

    .line 213
    :cond_2
    sget-object v7, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-virtual {v7}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a()Z

    move-result v7

    if-nez v7, :cond_4

    .line 214
    const-string/jumbo v7, "tts_engine_type"

    const-string/jumbo v8, "cloud"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "eng"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 217
    const-string/jumbo v7, "role"

    const-string/jumbo v8, "catherine"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3
    const-string/jumbo v7, "audio_need_cache"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    :cond_4
    const-string/jumbo v7, "speed"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v7, "SPEECH_ViaTtsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTtsParams country="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " language="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " variant="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " pitch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " rate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " local_rate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .end local v4    # "pitch":I
    .end local v5    # "rate":I
    .end local v6    # "variant":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SPEECH_ViaTtsService"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c()V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v1

    sput-object v1, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_ViaTtsService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    const/16 v3, 0x1f40

    .line 168
    iget-object v2, p0, Lcom/iflytek/common/speech/ViaTtsService;->e:Landroid/speech/tts/SynthesisCallback;

    if-eqz v2, :cond_2

    .line 170
    if-le p2, v3, :cond_1

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 172
    const/16 v1, 0x1f40

    .line 173
    .local v1, "subLen":I
    sub-int v2, p2, v0

    if-ge v2, v3, :cond_0

    .line 174
    sub-int v1, p2, v0

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/speech/ViaTtsService;->e:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v2, p1, v0, v1}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    .line 177
    add-int/2addr v0, v1

    .line 178
    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "subLen":I
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/speech/ViaTtsService;->e:Landroid/speech/tts/SynthesisCallback;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I

    .line 184
    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onCreate()V

    .line 43
    const-class v1, Lcom/iflytek/common/speech/ViaTtsService;

    monitor-enter v1

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsService;->a()V

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onGetLanguage()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string/jumbo v0, "SPEECH_ViaTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetLanguage mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/speech/ViaTtsService;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/iflytek/common/speech/ViaTtsService;->c:[[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/common/speech/ViaTtsService;->f:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, -0x2

    .line 53
    .local v0, "ret":I
    sget-object v4, Lcom/iflytek/common/speech/ViaTtsService;->c:[[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 54
    .local v1, "suport":[Ljava/lang/String;
    aget-object v6, v1, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 59
    .end local v1    # "suport":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "SPEECH_ViaTtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIsLanguageAvailable LANG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " country="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " variant="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0

    .line 53
    .restart local v1    # "suport":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, -0x2

    .line 73
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/iflytek/common/speech/ViaTtsService;->c:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 74
    sget-object v2, Lcom/iflytek/common/speech/ViaTtsService;->c:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const/4 v1, 0x0

    .line 76
    iput v0, p0, Lcom/iflytek/common/speech/ViaTtsService;->f:I

    .line 77
    const-string/jumbo v2, "SPEECH_ViaTtsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLoadLanguage LANG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " country="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " variant="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/common/speech/ViaTtsService;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return v1

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v1, p0, Lcom/iflytek/common/speech/ViaTtsService;->g:Lju;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e(Lju;)I

    .line 90
    :cond_0
    return-void
.end method

.method protected onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;
    .param p2, "callback"    # Landroid/speech/tts/SynthesisCallback;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 96
    :cond_0
    const-string/jumbo v3, "SPEECH_ViaTtsService"

    const-string/jumbo v4, "onSynthesizeText null object"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_0
    iput-object p2, p0, Lcom/iflytek/common/speech/ViaTtsService;->e:Landroid/speech/tts/SynthesisCallback;

    .line 102
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "text":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/iflytek/common/speech/ViaTtsService;->a(Landroid/speech/tts/SynthesisRequest;)Landroid/os/Bundle;

    move-result-object v1

    .line 106
    .local v1, "params":Landroid/os/Bundle;
    const/16 v3, 0x3e80

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-interface {p2, v3, v4, v5}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    .line 108
    sget-object v3, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    if-eqz v3, :cond_3

    .line 109
    sget-object v3, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v4, p0, Lcom/iflytek/common/speech/ViaTtsService;->g:Lju;

    invoke-virtual {v3, v2, v1, v4, p0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V

    .line 111
    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 112
    sget-object v3, Lcom/iflytek/common/speech/ViaTtsService;->d:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v4, p0, Lcom/iflytek/common/speech/ViaTtsService;->g:Lju;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    :cond_3
    const-string/jumbo v3, "SPEECH_ViaTtsService"

    const-string/jumbo v4, "onSynthesizeText finish"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->done()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SPEECH_ViaTtsService"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
