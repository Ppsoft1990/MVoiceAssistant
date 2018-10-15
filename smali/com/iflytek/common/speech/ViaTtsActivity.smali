.class public Lcom/iflytek/common/speech/ViaTtsActivity;
.super Landroid/app/Activity;
.source "ViaTtsActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string/jumbo v0, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->a:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "android.speech.tts.engine.CHECK_TTS_DATA"

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->b:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "android.speech.tts.engine.CONFIGURE_ENGINE"

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->c:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "com.iflytek.cmcc.speech.CHECK_TTS_AVAILABLE"

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->d:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "This is an example of speech synthesis in English with LingXi."

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->e:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "\u8fd9\u662f\u4f7f\u7528\u7075\u7280\u4e2d\u6587\u8bed\u97f3\u5408\u6210\u7684\u4f8b\u5b50\u3002"

    iput-object v0, p0, Lcom/iflytek/common/speech/ViaTtsActivity;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "result":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v3, "returnData":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 58
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, ""

    .line 60
    .local v4, "text":Ljava/lang/String;
    const-string/jumbo v5, "ViaTtsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetSample lang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "language"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    if-nez v1, :cond_1

    .line 65
    const-string/jumbo v4, "\u8fd9\u662f\u4f7f\u7528\u7075\u7280\u4e2d\u6587\u8bed\u97f3\u5408\u6210\u7684\u4f8b\u5b50\u3002This is an example of speech synthesis in English with LingXi."

    .line 71
    :goto_0
    const-string/jumbo v5, "ViaTtsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetSample lang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v5, "sampleText"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/common/speech/ViaTtsActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    return-void

    .line 66
    :cond_1
    const-string/jumbo v5, "eng"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string/jumbo v4, "This is an example of speech synthesis in English with LingXi."

    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v4, "\u8fd9\u662f\u4f7f\u7528\u7075\u7280\u4e2d\u6587\u8bed\u97f3\u5408\u6210\u7684\u4f8b\u5b50\u3002"

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/iflytek/common/speech/ViaTtsActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, "returnData":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "zho-CHN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v3, "eng-USA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string/jumbo v3, "availableVoices"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "unavailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "unavailableVoices"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 102
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/iflytek/common/speech/ViaTtsActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "returnData":Landroid/content/Intent;
    new-instance v1, Lpp;

    invoke-direct {v1, p0}, Lpp;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "serviceUtil":Lpp;
    const-string/jumbo v2, "ViaTtsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckLocalTts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v2, "com.iflytek.cmcc.KEY_CHECK_LOCAL_TTS"

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/common/speech/ViaTtsActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private e()V
    .locals 9

    .prologue
    .line 116
    const-string/jumbo v3, "result_data"

    .line 117
    .local v3, "resultData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 118
    .local v0, "available":I
    const/4 v1, 0x1

    .line 119
    .local v1, "boot":I
    const/4 v2, 0x2

    .line 121
    .local v2, "installLocalTts":I
    new-instance v5, Lpp;

    invoke-direct {v5, p0}, Lpp;-><init>(Landroid/content/Context;)V

    .line 123
    .local v5, "serviceUtil":Lpp;
    const-string/jumbo v6, "ViaTtsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSupportOfflineTts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lpp;->b()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v4, "returnData":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v6

    invoke-virtual {v6}, Ltd;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 127
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lcom/iflytek/common/speech/ViaTtsActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    return-void

    .line 128
    :cond_0
    invoke-virtual {v5}, Lpp;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 129
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string/jumbo v0, ""

    .line 33
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    const-string/jumbo v1, "ViaTtsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v1, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->a()V

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->finish()V

    .line 49
    return-void

    .line 39
    :cond_2
    const-string/jumbo v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->c()V

    goto :goto_0

    .line 41
    :cond_3
    const-string/jumbo v1, "android.speech.tts.engine.CONFIGURE_ENGINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->b()V

    goto :goto_0

    .line 43
    :cond_4
    const-string/jumbo v1, "com.iflytek.cmcc.speech.CHECK_LOCAL_TTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->d()V

    goto :goto_0

    .line 45
    :cond_5
    const-string/jumbo v1, "com.iflytek.cmcc.speech.CHECK_TTS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/iflytek/common/speech/ViaTtsActivity;->e()V

    goto :goto_0
.end method
