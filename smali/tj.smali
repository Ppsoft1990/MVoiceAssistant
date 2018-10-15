.class public Ltj;
.super Ljava/lang/Object;
.source "SpeakerVerifyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltj$a;,
        Ltj$b;
    }
.end annotation


# static fields
.field private static g:Ltj;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Lkp;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:I

.field private j:Ltj$b;

.field private k:Ltj$a;

.field private l:I

.field private m:Lkq;

.field private n:Lkq;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "SpeakVerifyManager"

    iput-object v0, p0, Ltj;->a:Ljava/lang/String;

    .line 35
    iput v1, p0, Ltj;->b:I

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltj;->d:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltj;->e:Ljava/lang/String;

    .line 50
    iput v1, p0, Ltj;->i:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Ltj;->l:I

    .line 247
    new-instance v0, Ltj$2;

    invoke-direct {v0, p0}, Ltj$2;-><init>(Ltj;)V

    iput-object v0, p0, Ltj;->m:Lkq;

    .line 322
    new-instance v0, Ltj$3;

    invoke-direct {v0, p0}, Ltj$3;-><init>(Ltj;)V

    iput-object v0, p0, Ltj;->n:Lkq;

    .line 71
    invoke-direct {p0}, Ltj;->h()V

    .line 72
    return-void
.end method

.method static synthetic a(Ltj;)I
    .locals 1
    .param p0, "x0"    # Ltj;

    .prologue
    .line 26
    iget v0, p0, Ltj;->b:I

    return v0
.end method

.method static synthetic a(Ltj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Ltj;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static a()Ltj;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Ltj;->g:Ltj;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Ltj;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Ltj;->g:Ltj;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ltj;

    invoke-direct {v0}, Ltj;-><init>()V

    sput-object v0, Ltj;->g:Ltj;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Ltj;->g:Ltj;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lkq;)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lkq;

    .prologue
    .line 397
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_1

    .line 398
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "performModelOperation fail, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz p2, :cond_0

    .line 400
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {p2, v0}, Lkq;->a(Lcom/iflytek/cloud/SpeechError;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "pwdt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltj;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    iget-object v0, p0, Ltj;->c:Lkp;

    iget-object v1, p0, Ltj;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;Lkq;)I

    goto :goto_0
.end method

.method static synthetic a(Ltj;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ltj;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Ltj;->f:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ltj;)Ltj$b;
    .locals 1
    .param p0, "x0"    # Ltj;

    .prologue
    .line 26
    iget-object v0, p0, Ltj;->j:Ltj$b;

    return-object v0
.end method

.method static synthetic c(Ltj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltj;

    .prologue
    .line 26
    iget-object v0, p0, Ltj;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ltj;)Ltj$a;
    .locals 1
    .param p0, "x0"    # Ltj;

    .prologue
    .line 26
    iget-object v0, p0, Ltj;->k:Ltj$a;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "initEngine"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ltj$1;

    invoke-direct {v1, p0}, Ltj$1;-><init>(Ltj;)V

    invoke-static {v0, v1}, Lkp;->a(Landroid/content/Context;Lko;)Lkp;

    move-result-object v0

    iput-object v0, p0, Ltj;->c:Lkp;

    .line 108
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "authId"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Ltj;->d:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "SpeakVerifyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public a(Lkr;)V
    .locals 4
    .param p1, "mRegisterListener"    # Lkr;

    .prologue
    .line 120
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_1

    .line 121
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "register fail, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {p1, v0}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "isv_audio_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/msc/test.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    iget v0, p0, Ltj;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 135
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "ptxt"

    iget-object v2, p0, Ltj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    :cond_2
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "rgn"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "auth_id"

    iget-object v2, p0, Ltj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "sst"

    const-string/jumbo v2, "train"

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "pwdt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltj;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0, p1}, Lkp;->a(Lkr;)I

    goto :goto_0
.end method

.method public a(Ltj$a;)V
    .locals 2
    .param p1, "modelOperationOutListener"    # Ltj$a;

    .prologue
    .line 309
    iput-object p1, p0, Ltj;->k:Ltj$a;

    .line 310
    iget-object v0, p0, Ltj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 311
    const-string/jumbo v0, "authId \u4e3a\u7a7a"

    invoke-interface {p1, v0}, Ltj$a;->a(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string/jumbo v0, "que"

    iget-object v1, p0, Ltj;->n:Lkq;

    invoke-direct {p0, v0, v1}, Ltj;->a(Ljava/lang/String;Lkq;)V

    goto :goto_0
.end method

.method public a(Ltj$b;)V
    .locals 4
    .param p1, "passwordResultListener"    # Ltj$b;

    .prologue
    .line 219
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_1

    .line 220
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "getPasswordList error, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const-string/jumbo v0, "mVerifier is null"

    invoke-interface {p1, v0}, Ltj$b;->b(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iput-object p1, p0, Ltj;->j:Ltj$b;

    .line 229
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0}, Lkp;->d()V

    .line 231
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "pwdt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltj;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "rgn"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    iget-object v0, p0, Ltj;->c:Lkp;

    iget-object v1, p0, Ltj;->m:Lkq;

    invoke-virtual {v0, v1}, Lkp;->a(Lkq;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Ltj;->g:Ltj;

    .line 92
    return-void
.end method

.method public b(Lkr;)V
    .locals 5
    .param p1, "mVerifyListener"    # Lkr;

    .prologue
    const/16 v4, 0x2711

    .line 152
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_1

    .line 153
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "verify error, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_0

    .line 155
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {p1, v0}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "isv_audio_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/msc/verify.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    invoke-static {}, Lkp;->a()Lkp;

    move-result-object v0

    iput-object v0, p0, Ltj;->c:Lkp;

    .line 165
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_2

    .line 166
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "verify error, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v4}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {p1, v0}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "sst"

    const-string/jumbo v2, "verify"

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget v0, p0, Ltj;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 181
    iget-object v0, p0, Ltj;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0}, Ltj;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltj;->h:Ljava/lang/String;

    .line 184
    :cond_3
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "ptxt"

    iget-object v2, p0, Ltj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    :cond_4
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "auth_id"

    iget-object v2, p0, Ltj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Ltj;->c:Lkp;

    const-string/jumbo v1, "pwdt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltj;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0, p1}, Lkp;->a(Lkr;)I

    goto/16 :goto_0
.end method

.method public b(Ltj$a;)V
    .locals 2
    .param p1, "modelOperationOutListener"    # Ltj$a;

    .prologue
    .line 318
    iput-object p1, p0, Ltj;->k:Ltj$a;

    .line 319
    const-string/jumbo v0, "del"

    iget-object v1, p0, Ltj;->n:Lkq;

    invoke-direct {p0, v0, v1}, Ltj;->a(Ljava/lang/String;Lkq;)V

    .line 320
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0}, Lkp;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Ltj;->c:Lkp;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0}, Lkp;->b()V

    .line 202
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ltj;->c:Lkp;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0}, Lkp;->d()V

    .line 208
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltj;->c:Lkp;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Ltj;->c:Lkp;

    invoke-virtual {v0}, Lkp;->e()Z

    .line 214
    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Ltj;->c:Lkp;

    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, "SpeakVerifyManager"

    const-string/jumbo v1, "getVerifyNums fail, mVerifier is null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v0, ""

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltj;->c:Lkp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lkp;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltj;->h:Ljava/lang/String;

    goto :goto_0
.end method
