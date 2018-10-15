.class public Lcom/iflytek/common/speech/asr/MscManager;
.super Ljava/lang/Object;
.source "MscManager.java"

# interfaces
.implements Ljm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;,
        Lcom/iflytek/common/speech/asr/MscManager$a;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/common/speech/asr/MscManager;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Ljr;

.field private d:Landroid/content/Context;

.field private e:Lcom/iflytek/yd/business/AppConfig;

.field private f:Ljava/text/SimpleDateFormat;

.field private g:Ljava/text/SimpleDateFormat;

.field private h:Ljava/util/Date;

.field private i:Lja;

.field private j:I

.field private k:I

.field private l:Landroid/os/Handler;

.field private m:Lcom/iflytek/common/speech/asr/MscManager$a;

.field private n:Ljt;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljr;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speech"    # Ljr;

    .prologue
    const/4 v2, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->c:Ljr;

    .line 118
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->h:Ljava/util/Date;

    .line 122
    iput v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    .line 123
    iput v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    .line 809
    new-instance v1, Lcom/iflytek/common/speech/asr/MscManager$2;

    invoke-direct {v1, p0}, Lcom/iflytek/common/speech/asr/MscManager$2;-><init>(Lcom/iflytek/common/speech/asr/MscManager;)V

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->n:Ljt;

    .line 143
    sput-object p0, Lcom/iflytek/common/speech/asr/MscManager;->a:Lcom/iflytek/common/speech/asr/MscManager;

    .line 144
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/iflytek/common/speech/asr/MscManager;->c:Ljr;

    .line 147
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lja;->a(Landroid/content/Context;)Lja;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    .line 148
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    invoke-virtual {v1, p0}, Lja;->a(Ljm;)V

    .line 150
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    .line 158
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->f:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->g:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 165
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/common/speech/asr/MscManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    return v0
.end method

.method static synthetic a(Lcom/iflytek/common/speech/asr/MscManager;Lcom/iflytek/common/speech/asr/MscManager$a;)Lcom/iflytek/common/speech/asr/MscManager$a;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;
    .param p1, "x1"    # Lcom/iflytek/common/speech/asr/MscManager$a;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->m:Lcom/iflytek/common/speech/asr/MscManager$a;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljr;)Lcom/iflytek/common/speech/asr/MscManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speech"    # Ljr;

    .prologue
    .line 130
    const-class v1, Lcom/iflytek/common/speech/asr/MscManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/common/speech/asr/MscManager;-><init>(Landroid/content/Context;Ljr;)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager;->a:Lcom/iflytek/common/speech/asr/MscManager;

    .line 131
    sget-object v0, Lcom/iflytek/common/speech/asr/MscManager;->a:Lcom/iflytek/common/speech/asr/MscManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/common/speech/asr/MscManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/iflytek/common/speech/asr/MscManager;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized b(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MscManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUploadFlag FLAG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iput p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    .line 627
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MSC_UPLOAD_FLAG"

    iget v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/yd/business/AppConfig;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/common/speech/asr/MscManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->m:Lcom/iflytek/common/speech/asr/MscManager$a;

    return-object v0
.end method

.method public static f()Lcom/iflytek/common/speech/asr/MscManager;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/iflytek/common/speech/asr/MscManager;->a:Lcom/iflytek/common/speech/asr/MscManager;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/common/speech/asr/MscManager;)Ljt;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->n:Ljt;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, "508627e4"

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/common/speech/asr/MscManager;)Ljr;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->c:Ljr;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/common/speech/asr/MscManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/iflytek/common/speech/asr/MscManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->m()V

    return-void
.end method

.method static synthetic k(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/asr/MscManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private k()Z
    .locals 4

    .prologue
    .line 590
    iget v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 591
    .local v0, "ret":Z
    :goto_0
    const-string/jumbo v1, "MscManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedUpload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v0

    .line 590
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 600
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    .line 601
    invoke-virtual {v2, v3, v1}, Lil;->b(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 602
    iget v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    if-eq v2, v0, :cond_0

    .line 603
    const-string/jumbo v1, "MscManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedUploadCanconese  flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 606
    goto :goto_0

    :cond_1
    move v0, v1

    .line 608
    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 615
    const-string/jumbo v0, "MscManager"

    const-string/jumbo v1, "uploadContoneseContact"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->c:Ljr;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->n:Ljt;

    invoke-interface {v0, v1, v2}, Ljr;->a(Ljava/lang/String;Ljt;)V

    .line 617
    return-void
.end method

.method private n()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 644
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MSC_UPLOAD_FLAG"

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    .line 646
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CANCONESE_UPLOAD_FLAG"

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    .line 649
    const-string/jumbo v0, "MscManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initUploadHandler cn_up_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cant_up_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$1;

    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/common/speech/asr/MscManager$1;-><init>(Lcom/iflytek/common/speech/asr/MscManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->l:Landroid/os/Handler;

    .line 804
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->r()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->b:[Ljava/lang/String;

    .line 807
    :cond_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "imsi":Ljava/lang/String;
    return-object v0
.end method

.method private q()Lcom/iflytek/common/lbs/XAddress;
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 921
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    return-object v0
.end method

.method private r()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 929
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v1

    invoke-virtual {v1}, Lhe;->e()[Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 931
    const-string/jumbo v1, "MscManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCacheNames size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " aa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .param p1, "asrParam"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v15, "sParams":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lja;->f()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "lang":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lja;->g()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "accent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lja;->h()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "domain":Ljava/lang/String;
    const-string/jumbo v21, "MscManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " domain="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " lang="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " accent="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string/jumbo v21, "imei"

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/common/speech/asr/MscManager;->o()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v21, "imsi"

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/common/speech/asr/MscManager;->p()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v21, "sid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v21, "sms"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "microblog"

    .line 268
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 270
    :cond_0
    const-string/jumbo v21, "sch"

    const-string/jumbo v22, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v21, "rst"

    const-string/jumbo v22, "json"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {v8}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 275
    const-string/jumbo v8, "zh_cn"

    .line 278
    :cond_1
    invoke-static {v2}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 279
    const/16 v21, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v22

    const-string/jumbo v23, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lil;->b(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 281
    const-string/jumbo v2, "cantonese"

    .line 287
    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 288
    const-string/jumbo v4, "iat"

    .line 292
    :cond_3
    const-string/jumbo v21, "language"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v8}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v21, "accent"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string/jumbo v21, "domain"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v4}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 524
    :goto_1
    return-object v21

    .line 283
    :cond_4
    const-string/jumbo v2, "mandarin"

    goto :goto_0

    .line 298
    :cond_5
    const-string/jumbo v21, "humming"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 299
    const-string/jumbo v21, "sch"

    const-string/jumbo v22, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v21, "rst"

    const-string/jumbo v22, "json"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v21, "music_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 302
    invoke-static/range {v22 .. v22}, Lja;->a(Landroid/content/Context;)Lja;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lja;->j()Ljava/lang/String;

    move-result-object v22

    .line 301
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "qbh"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v21, "ent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 305
    invoke-static/range {v22 .. v22}, Lja;->a(Landroid/content/Context;)Lja;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lja;->i()Ljava/lang/String;

    move-result-object v22

    .line 304
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v21, "vaclientver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    .line 307
    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v22

    .line 306
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 311
    :cond_6
    const-string/jumbo v21, "evaluate"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 312
    const-string/jumbo v21, "ent"

    const-string/jumbo v22, "cn"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "see"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v21, "sst"

    const-string/jumbo v22, "evaluate"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v21, "category"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lja;->b()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v21, "rse"

    const-string/jumbo v22, "gb2312"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 321
    :cond_7
    const-string/jumbo v21, "sch"

    const-string/jumbo v22, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v21, "vaver"

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v21, "vaclientver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    .line 327
    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v22

    .line 326
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v21, "vadownfrom"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    .line 330
    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v22

    .line 329
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v21, "vaapn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v21, "varesolution"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getDisplaySize()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v21, "vaimei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v21, "vaimsi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/common/speech/asr/MscManager;->q()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v3

    .line 340
    .local v3, "addr":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v3, :cond_8

    .line 341
    const-string/jumbo v21, "valong"

    invoke-virtual {v3}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v21, "valat"

    invoke-virtual {v3}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v21, "vapos"

    invoke-virtual {v3}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v21, "vacity"

    invoke-virtual {v3}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v21, "vastreet"

    invoke-virtual {v3}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Loa;->a()Loa;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Loa;->a(Lcom/iflytek/common/lbs/XAddress;)V

    .line 349
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->h:Ljava/util/Date;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Date;->setTime(J)V

    .line 350
    const-string/jumbo v21, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->f:Ljava/text/SimpleDateFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->h:Ljava/util/Date;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v21, "time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->g:Ljava/text/SimpleDateFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->h:Ljava/util/Date;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/16 v18, 0x0

    .line 355
    .local v18, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v21

    sget-object v22, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v18

    .line 356
    const-string/jumbo v21, "vatoken"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Landroid/content/Context;)Lapy;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lapy;->h()Ljava/lang/String;

    move-result-object v13

    .line 361
    .local v13, "music_ver":Ljava/lang/String;
    const-string/jumbo v21, "vamusicver"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v13}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/16 v19, 0x0

    .line 366
    .local v19, "trans_src":Ljava/lang/String;
    const/16 v20, 0x0

    .line 367
    .local v20, "trans_target":Ljava/lang/String;
    const/4 v7, 0x0

    .line 368
    .local v7, "isUserSMS_EN":Z
    const/4 v6, 0x0

    .line 369
    .local v6, "isUserMulti_Trans":Z
    const/4 v11, 0x0

    .line 370
    .local v11, "multi_ent":Ljava/lang/String;
    const/4 v12, 0x0

    .line 371
    .local v12, "multi_lang":Ljava/lang/String;
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v10

    .line 372
    .local v10, "mode":Lcom/iflytek/viafly/translate/TranslateMode;
    if-nez v10, :cond_9

    .line 374
    invoke-static {}, Laxp;->d()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v10

    .line 377
    :cond_9
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_d

    .line 378
    const-string/jumbo v19, "\u4e2d"

    .line 379
    const-string/jumbo v20, "\u82f1"

    .line 440
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lja;->d()Ljava/lang/String;

    move-result-object v16

    .line 442
    .local v16, "searchEntry":Ljava/lang/String;
    const-string/jumbo v21, "MscManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSessionExtParams searchEntry="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_17

    .line 445
    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "src"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_3
    if-eqz v7, :cond_19

    .line 452
    const-string/jumbo v21, "ent"

    const-string/jumbo v22, "sms-en16k"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_b
    :goto_4
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_1f

    .line 487
    const-string/jumbo v21, "caller.appid"

    const-string/jumbo v22, "59a68966"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v21, "svad"

    const-string/jumbo v22, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string/jumbo v21, "prot_ver"

    const-string/jumbo v22, "50"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v21, "dsc"

    const-string/jumbo v22, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v21, "scm"

    const-string/jumbo v22, "multilingual"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v21, "vascene"

    const-string/jumbo v22, "translation"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v21, "valangset"

    const-string/jumbo v22, "cn|en"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_5
    const-string/jumbo v21, "vauid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v21, "vaosid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v21, "vaua"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v21, "vacpu"

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v21, "vaandroidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lhy;->e()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v21, "vamac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v21, "vacellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lhy;->f()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v21, "vauuid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lhl;->i()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lpu;->d()Ljava/lang/String;

    move-result-object v17

    .line 514
    .local v17, "testId":Ljava/lang/String;
    const-string/jumbo v21, "wmtest"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSessionExtParams"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz v17, :cond_c

    .line 516
    invoke-static/range {v17 .. v17}, Lpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "log_path":Ljava/lang/String;
    const-string/jumbo v21, "perf_file"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v9}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string/jumbo v21, "lingxi_ver"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v9    # "log_path":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lhl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 523
    .local v14, "networkType":Ljava/lang/String;
    const-string/jumbo v21, "net_subtype"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v14}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 381
    .end local v14    # "networkType":Ljava/lang/String;
    .end local v16    # "searchEntry":Ljava/lang/String;
    .end local v17    # "testId":Ljava/lang/String;
    :cond_d
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_e

    .line 382
    const-string/jumbo v19, "\u82f1"

    .line 383
    const-string/jumbo v20, "\u4e2d"

    .line 384
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 387
    :cond_e
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_f

    .line 388
    const-string/jumbo v19, "\u4e2d"

    .line 389
    const-string/jumbo v20, "\u97e9"

    goto/16 :goto_2

    .line 391
    :cond_f
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_10

    .line 392
    const-string/jumbo v19, "\u97e9"

    .line 393
    const-string/jumbo v20, "\u4e2d"

    .line 394
    const-string/jumbo v11, "korean16k"

    .line 395
    const-string/jumbo v12, "ko_kr"

    .line 396
    const-string/jumbo v21, "server_url"

    const-string/jumbo v22, "http://dz-lx.xf-yun.com/VocAsit.htm"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 400
    :cond_10
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_11

    .line 401
    const-string/jumbo v19, "\u4e2d"

    .line 402
    const-string/jumbo v20, "\u65e5"

    goto/16 :goto_2

    .line 404
    :cond_11
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_12

    .line 405
    const-string/jumbo v19, "\u65e5"

    .line 406
    const-string/jumbo v20, "\u4e2d"

    .line 407
    const-string/jumbo v11, "japanese16k"

    .line 408
    const-string/jumbo v12, "ja_jp"

    .line 409
    const-string/jumbo v21, "server_url"

    const-string/jumbo v22, "http://dz-lx.xf-yun.com/VocAsit.htm"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 412
    :cond_12
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_13

    .line 413
    const-string/jumbo v19, "\u4e2d"

    .line 414
    const-string/jumbo v20, "\u6cd5"

    goto/16 :goto_2

    .line 416
    :cond_13
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_14

    .line 417
    const-string/jumbo v19, "\u6cd5"

    .line 418
    const-string/jumbo v20, "\u4e2d"

    .line 419
    const-string/jumbo v11, "french16k"

    .line 420
    const-string/jumbo v12, "fr_fr"

    .line 421
    const-string/jumbo v21, "server_url"

    const-string/jumbo v22, "http://dz-lx.xf-yun.com/VocAsit.htm"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 424
    :cond_14
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_15

    .line 425
    const-string/jumbo v19, "\u4e2d"

    .line 426
    const-string/jumbo v20, "\u897f\u73ed\u7259"

    goto/16 :goto_2

    .line 428
    :cond_15
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_16

    .line 429
    const-string/jumbo v19, "\u897f\u73ed\u7259"

    .line 430
    const-string/jumbo v20, "\u4e2d"

    .line 431
    const-string/jumbo v11, "spanish16k"

    .line 432
    const-string/jumbo v12, "es_es"

    .line 433
    const-string/jumbo v21, "server_url"

    const-string/jumbo v22, "http://dz-lx.xf-yun.com/VocAsit.htm"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 435
    :cond_16
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_a

    .line 437
    const-string/jumbo v21, "server_url"

    const-string/jumbo v22, "http://src.openspeech.cn:1028/msp.do"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 446
    .restart local v16    # "searchEntry":Ljava/lang/String;
    :cond_17
    invoke-static/range {v16 .. v16}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 447
    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "iat"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 449
    :cond_18
    const-string/jumbo v21, "sub"

    const-string/jumbo v22, "sch"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 454
    :cond_19
    if-eqz v6, :cond_1a

    .line 455
    const-string/jumbo v21, "net_once_bytes "

    const-string/jumbo v22, "305"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v21, "aue"

    const-string/jumbo v22, "speex-wb"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    .line 459
    const-string/jumbo v21, "ent"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v11}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v21, "language"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v12}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 462
    :cond_1a
    sget-object v21, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    move-object/from16 v0, v21

    if-ne v0, v10, :cond_1b

    .line 464
    const-string/jumbo v21, "ent"

    const-string/jumbo v22, "sms16k"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 467
    :cond_1b
    const-string/jumbo v5, "sms16k"

    .line 468
    .local v5, "ent":Ljava/lang/String;
    const/16 v21, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v22

    const-string/jumbo v23, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lil;->b(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 470
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v21

    if-nez v21, :cond_1c

    .line 471
    const-string/jumbo v5, "cantonese16k"

    .line 473
    :cond_1c
    const-string/jumbo v21, "en_us"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 475
    const-string/jumbo v5, "sms-en16k"

    .line 483
    :cond_1d
    :goto_6
    const-string/jumbo v21, "ent"

    move-object/from16 v0, v21

    invoke-static {v15, v0, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 476
    :cond_1e
    const-string/jumbo v21, "zh_cn"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 477
    const-string/jumbo v21, "cantonese"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 479
    const-string/jumbo v5, "cantonese16k"

    goto :goto_6

    .line 495
    .end local v5    # "ent":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v21, "vascn"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v21, "vatranslatesrc"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v21, "vatranslatetgt"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v15, v0, v1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public declared-synchronized a(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MscManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCanconeseFlag FLAG ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    .line 635
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CANCONESE_UPLOAD_FLAG"

    iget v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->k:I

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->l:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->n()V

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 570
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 573
    :cond_1
    :try_start_1
    const-string/jumbo v1, "MscManager"

    const-string/jumbo v2, "uploadContact, not need upload."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 577
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/iflytek/common/speech/asr/MscManager;->a(I)V

    .line 578
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->l:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/iflytek/common/speech/asr/MscManager;->l:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/common/speech/asr/MscManager$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/common/speech/asr/MscManager$a;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->m:Lcom/iflytek/common/speech/asr/MscManager$a;

    .line 559
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager;->b:[Ljava/lang/String;

    .line 534
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "http://lingxi.openspeech.cn/msp.do"

    .line 228
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v1, "sParams":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "imei"

    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v2, "imsi"

    invoke-direct {p0}, Lcom/iflytek/common/speech/asr/MscManager;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v2, "sid"

    iget-object v3, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v3}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v2, "downfrom"

    iget-object v3, p0, Lcom/iflytek/common/speech/asr/MscManager;->e:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v3}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/iflytek/common/speech/asr/MscManager;->d:Landroid/content/Context;

    invoke-static {v2}, Lhl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "networkType":Ljava/lang/String;
    const-string/jumbo v2, "net_subtype"

    invoke-static {v1, v2, v0}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public g()Lja;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->i:Lja;

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/common/speech/asr/MscManager;->b(I)V

    .line 550
    return-void
.end method
