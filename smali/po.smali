.class public Lpo;
.super Ljava/lang/Object;
.source "SpeechConfig.java"

# interfaces
.implements Ljo;


# instance fields
.field private a:Lcom/iflytek/viafly/ViaFlyApp;

.field private b:Ljava/lang/String;

.field private c:Lazg;

.field private d:Ljc;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ViaFlyApp;)V
    .locals 5
    .param p1, "app"    # Lcom/iflytek/viafly/ViaFlyApp;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v4, 0x0

    iput-object v4, p0, Lpo;->b:Ljava/lang/String;

    .line 47
    new-instance v4, Ljc;

    invoke-direct {v4}, Ljc;-><init>()V

    iput-object v4, p0, Lpo;->d:Ljc;

    .line 50
    iput-object p1, p0, Lpo;->a:Lcom/iflytek/viafly/ViaFlyApp;

    .line 51
    new-instance v4, Ljc;

    invoke-direct {v4}, Ljc;-><init>()V

    iput-object v4, p0, Lpo;->d:Ljc;

    .line 52
    const/16 v0, 0x7d0

    .line 53
    .local v0, "beginPoint":I
    const/16 v1, 0x5dc

    .line 54
    .local v1, "endPoint":I
    const/16 v3, 0x3a98

    .line 55
    .local v3, "timeOutShort":I
    const/16 v2, 0x7530

    .line 56
    .local v2, "timeOutNormal":I
    iget-object v4, p0, Lpo;->d:Ljc;

    invoke-virtual {v4, v0}, Ljc;->b(I)V

    .line 57
    iget-object v4, p0, Lpo;->d:Ljc;

    invoke-virtual {v4, v1}, Ljc;->a(I)V

    .line 58
    iget-object v4, p0, Lpo;->d:Ljc;

    invoke-virtual {v4, v3}, Ljc;->d(I)V

    .line 59
    iget-object v4, p0, Lpo;->d:Ljc;

    invoke-virtual {v4, v2}, Ljc;->c(I)V

    .line 61
    const-string/jumbo v4, "msc5_lx_1081"

    invoke-static {v4}, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->setLibName(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v2, p0, Lpo;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lpo;->a:Lcom/iflytek/viafly/ViaFlyApp;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ViaFlyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 185
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lpo;->a:Lcom/iflytek/viafly/ViaFlyApp;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ViaFlyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 187
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpo;->b:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/iflytek/yd/speech/vad/VadCheck;->createVadCheck()Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    iget-object v3, p0, Lpo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/speech/vad/VadCheck;->setAppParam(Ljava/lang/String;)I

    .line 190
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v2, p0, Lpo;->b:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public a()Ljc;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpo;->d:Ljc;

    return-object v0
.end method

.method public a(II)V
    .locals 3
    .param p1, "up"    # I
    .param p2, "down"    # I

    .prologue
    .line 210
    const-string/jumbo v0, "SpeechConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMscTtsTrafficFlow up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " down="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/util/List;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cm"    # I
    .param p3, "minCm"    # I
    .param p5, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "data":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public b()Ljn;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lpr;

    iget-object v1, p0, Lpo;->a:Lcom/iflytek/viafly/ViaFlyApp;

    invoke-direct {v0, v1}, Lpr;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(II)V
    .locals 3
    .param p1, "up"    # I
    .param p2, "down"    # I

    .prologue
    .line 206
    const-string/jumbo v0, "SpeechConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMscAsrTrafficFlow up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " down="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public c()[I
    .locals 2

    .prologue
    .line 77
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 80
    .local v0, "res":[I
    return-object v0

    .line 77
    nop

    :array_0
    .array-data 4
        0x7f060002
        0x7f060003
        0x7f060004
        0x7f060001
        0x7f060000
    .end array-data
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    const-string/jumbo v0, "cn"

    .line 86
    .local v0, "lang":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "type":I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 90
    const-string/jumbo v0, "cnsms"

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 92
    const-string/jumbo v0, "cant"

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x3a98

    return v0
.end method

.method public g()Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/speech/asr/MscManager;->g()Lja;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/iflytek/yd/business/AppConfig;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lpo;->a:Lcom/iflytek/viafly/ViaFlyApp;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "sms"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    :try_start_0
    invoke-direct {p0}, Lpo;->r()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-static {}, Lcom/iflytek/yd/speech/vad/VadCheck;->createVadCheck()Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/vad/VadCheck;->getAppParam()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/lang/String;
    return-object v1

    .line 136
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SpeechConfig"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lpo;->c:Lazg;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lazg;

    invoke-direct {v0}, Lazg;-><init>()V

    iput-object v0, p0, Lpo;->c:Lazg;

    .line 158
    :cond_0
    iget-object v0, p0, Lpo;->c:Lazg;

    invoke-virtual {v0}, Lazg;->c()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lpo;->c:Lazg;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lazg;

    invoke-direct {v0}, Lazg;-><init>()V

    iput-object v0, p0, Lpo;->c:Lazg;

    .line 166
    :cond_0
    iget-object v0, p0, Lpo;->c:Lazg;

    invoke-virtual {v0}, Lazg;->d()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lagm;->j()Z

    move-result v0

    .line 196
    .local v0, "ret":Z
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lpr;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v0, v1, :cond_0

    .line 221
    const-string/jumbo v0, "en"

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "cn"

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v0, v1, :cond_0

    .line 229
    const-string/jumbo v0, "cn"

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "en"

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "0"

    return-object v0
.end method
