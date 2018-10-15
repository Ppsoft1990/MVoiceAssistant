.class public Lja;
.super Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;
.source "AsrMscConfig.java"


# static fields
.field public static a:Lja;

.field private static i:Lir;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field private h:Ljm;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lja;->j:I

    .line 41
    iput-object v1, p0, Lja;->k:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lja;->l:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lja;->b:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lja;->c:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lja;->d:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lja;->e:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lja;->f:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lja;->g:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lja;->n:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lja;->o:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lja;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Lja;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lja;->a:Lja;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lja;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lja;-><init>(Landroid/content/Context;)V

    sput-object v0, Lja;->a:Lja;

    .line 63
    :cond_0
    sget-object v0, Lja;->a:Lja;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lir;)V
    .locals 0
    .param p0, "callerInfo"    # Lir;

    .prologue
    .line 341
    sput-object p0, Lja;->i:Lir;

    .line 342
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "params"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2c

    .line 293
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 297
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    const-string/jumbo v0, "SPEECH"

    const-string/jumbo v1, "appendParams empty KEY"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 303
    const-string/jumbo v0, "SPEECH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "appendParams empty Value key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 308
    const-string/jumbo v0, "SPEECH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "erroe value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 313
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static e()Lir;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lja;->i:Lir;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lja;->j:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 84
    iput p1, p0, Lja;->j:I

    .line 85
    return-void
.end method

.method public a(II)V
    .locals 0
    .param p1, "fos"    # I
    .param p2, "eos"    # I

    .prologue
    .line 404
    iput p2, p0, Lja;->p:I

    .line 405
    iput p1, p0, Lja;->q:I

    .line 406
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    const-string/jumbo v0, "web_language"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->b:Ljava/lang/String;

    .line 366
    const-string/jumbo v0, "web_accent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->c:Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "web_domain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->d:Ljava/lang/String;

    .line 368
    const-string/jumbo v0, "audio_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->f:Ljava/lang/String;

    .line 369
    const-string/jumbo v0, "music_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->g:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "web_param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja;->o:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lja;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public a(Ljm;)V
    .locals 0
    .param p1, "extend"    # Ljm;

    .prologue
    .line 75
    iput-object p1, p0, Lja;->h:Ljm;

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscType;
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "evaluate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->evaluate:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    .line 114
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->other:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lja;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(II)V
    .locals 0
    .param p1, "fos"    # I
    .param p2, "eos"    # I

    .prologue
    .line 414
    iput p2, p0, Lja;->r:I

    .line 415
    iput p1, p0, Lja;->s:I

    .line 416
    return-void
.end method

.method public c()B
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "input"

    iget-object v1, p0, Lja;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    const-string/jumbo v0, "modify"

    iget-object v1, p0, Lja;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :cond_1
    const-string/jumbo v0, "schedule"

    iget-object v1, p0, Lja;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x3

    goto :goto_0

    .line 127
    :cond_2
    const-string/jumbo v0, "recommit"

    iget-object v1, p0, Lja;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x4

    goto :goto_0

    .line 130
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lja;->k:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lja;->k:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lja;->l:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 1
    .param p1, "web_focus"    # Ljava/lang/String;

    .prologue
    .line 399
    const/16 v0, 0x3e80

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lja;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lja;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInitParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 150
    iput p2, p0, Lja;->m:I

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "tmp_wap_proxy":Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, "tmp_url":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sParams":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lja;->h:Ljm;

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lja;->h:Ljm;

    invoke-interface {v3}, Ljm;->c()Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lja;->h:Ljm;

    invoke-interface {v3}, Ljm;->d()Ljava/lang/String;

    move-result-object v1

    .line 157
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lja;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_0
    const-string/jumbo v3, "vad_enable=false,auth=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v3, "wap_proxy"

    invoke-static {v0, v3, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "appid"

    invoke-static {v0, v3, p1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v3, "server_url"

    invoke-static {v0, v3, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "timeout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v3, "delay_init"

    const-string/jumbo v4, "1"

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLoginParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "tmp_url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 259
    .local v3, "tmp_wap_proxy":Ljava/lang/String;
    const/4 v1, 0x0

    .line 260
    .local v1, "tmp_ext_params":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "sParams":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lja;->h:Ljm;

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lja;->h:Ljm;

    invoke-interface {v4}, Ljm;->c()Ljava/lang/String;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lja;->h:Ljm;

    invoke-interface {v4}, Ljm;->d()Ljava/lang/String;

    move-result-object v2

    .line 264
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lja;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_0
    iget-object v4, p0, Lja;->h:Ljm;

    invoke-interface {v4}, Ljm;->e()Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_1
    const-string/jumbo v4, "appid"

    invoke-static {v0, v4, p1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v4, "server_url"

    invoke-static {v0, v4, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v4, "wap_proxy"

    invoke-static {v0, v4, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v4, "delay_init"

    const-string/jumbo v5, "1"

    invoke-static {v0, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v4, "auth"

    const-string/jumbo v5, "0"

    invoke-static {v0, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v4, "vad_enable"

    const-string/jumbo v5, "false"

    invoke-static {v0, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v4, "timeout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lja;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v4, "net_detect"

    const-string/jumbo v5, "0"

    invoke-static {v0, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 281
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getSessionParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "asrParam"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "tmp_wap_proxy":Ljava/lang/String;
    const/4 v1, 0x0

    .line 181
    .local v1, "tmp_ext_params":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sParams":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lja;->h:Ljm;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lja;->h:Ljm;

    invoke-interface {v3}, Ljm;->c()Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lja;->h:Ljm;

    invoke-interface {v3, p1}, Ljm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_0
    const-string/jumbo v3, "wap_proxy"

    invoke-static {v0, v3, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lja;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 196
    const-string/jumbo v3, "vahints"

    iget-object v4, p0, Lja;->k:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 214
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    sget-object v3, Lja;->i:Lir;

    if-eqz v3, :cond_3

    .line 220
    const-string/jumbo v3, "caller.pkg"

    sget-object v4, Lja;->i:Lir;

    iget-object v4, v4, Lir;->a:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v3, "caller.appid"

    sget-object v4, Lja;->i:Lir;

    iget-object v4, v4, Lir;->c:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v3, "caller.ver.code"

    sget-object v4, Lja;->i:Lir;

    iget-object v4, v4, Lir;->d:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lja;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lja;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_3
    const-string/jumbo v3, "vaaction"

    iget-object v4, p0, Lja;->l:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget v3, p0, Lja;->p:I

    if-lez v3, :cond_4

    .line 235
    const-string/jumbo v3, "eos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lja;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_4
    iget v3, p0, Lja;->q:I

    if-lez v3, :cond_5

    .line 238
    const-string/jumbo v3, "fos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lja;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_5
    iget v3, p0, Lja;->r:I

    if-lez v3, :cond_6

    .line 243
    const-string/jumbo v3, "vad_eos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lja;->r:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_6
    iget v3, p0, Lja;->s:I

    if-lez v3, :cond_7

    .line 246
    const-string/jumbo v3, "vad_fos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lja;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_7
    const-string/jumbo v3, "focus_data"

    const-string/jumbo v4, "weather|stock|video|music"

    invoke-static {v0, v3, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 199
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ",ssm=1,auf=audio/L16;rate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v3, 0x1

    iget v4, p0, Lja;->j:I

    if-ne v3, v4, :cond_9

    .line 201
    const-string/jumbo v3, ",aue=feature;-1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 203
    :cond_9
    const/16 v3, 0x1f40

    if-ne v3, p2, :cond_a

    .line 204
    const-string/jumbo v3, ",aue=speex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 207
    :cond_a
    const-string/jumbo v3, "evaluate"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    const-string/jumbo v3, ",aue=speex-wb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lja;->h:Ljm;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lja;->h:Ljm;

    invoke-interface {v0}, Ljm;->a()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserPasswd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lja;->h:Ljm;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lja;->h:Ljm;

    invoke-interface {v0}, Ljm;->b()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;->getUserPasswd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lja;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lja;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lja;->g:Ljava/lang/String;

    return-object v0
.end method
