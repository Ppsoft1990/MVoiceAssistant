.class public Lvu;
.super Lvn;
.source "BlcVersionAdapter.java"

# interfaces
.implements Lcom/iflytek/blc/version/VersionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvu$a;
    }
.end annotation


# static fields
.field private static volatile e:Lvu;


# instance fields
.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lvu$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

.field private h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

.field private i:J

.field private j:Lil;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lvu;->e:Lvu;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Lvn;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvu;->i:J

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvu;->k:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lvu;->n:I

    .line 76
    invoke-virtual {p0, p1}, Lvu;->a(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lvu;->j:Lil;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvu;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cache_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvu;->l:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvu;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cache_version_manual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvu;->m:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    iput-object v0, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 81
    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    iput-object v0, p0, Lvu;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 82
    invoke-direct {p0}, Lvu;->f()V

    .line 83
    return-void
.end method

.method private a(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)I
    .locals 2
    .param p1, "type"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "updateType":I
    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v1, p1, :cond_1

    .line 482
    const/4 v0, 0x0

    .line 489
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v1, p1, :cond_2

    .line 484
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v1, p1, :cond_0

    .line 486
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lvu;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 0
    .param p0, "x0"    # Lvu;
    .param p1, "x1"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 30
    iput-object p1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    return-object p1
.end method

.method static synthetic a(Lvu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvu;

    .prologue
    .line 30
    iget-object v0, p0, Lvu;->l:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvu$a;

    .line 414
    .local v0, "listener":Lvu$a;
    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0, p1}, Lvu$a;->a(I)V

    goto :goto_0

    .line 418
    .end local v0    # "listener":Lvu$a;
    :cond_1
    return-void
.end method

.method private a(Lcom/iflytek/blc/version/ClientUpdateInfo;I)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/blc/version/ClientUpdateInfo;
    .param p2, "autoType"    # I

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lvu;->i:J

    .line 148
    iget-object v2, p0, Lvu;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    .line 151
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateType()I

    move-result v1

    invoke-direct {p0, v1}, Lvu;->b(I)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateType(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V

    .line 155
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateVersion(Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateInfo(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateDetail(Ljava/lang/String;)V

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 165
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateShowId(Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 168
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setNoticeDesc(Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    invoke-virtual {p1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setBdTimeWin(Ljava/lang/String;)V

    .line 173
    :cond_6
    const-string/jumbo v1, "BlcVersionAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateinfo url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updateinfo updatetype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updateinfo version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updateinfo detail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updateinfo showid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updateinfo info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", noticeDesc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getNoticeDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",bdTimeWin ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v1, p0, Lvu;->n:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 180
    iput-object v0, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 184
    :cond_7
    :goto_0
    invoke-direct {p0, v0, p2}, Lvu;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;I)V

    .line 185
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v1, p0, Lvu;->j:Lil;

    const-string/jumbo v2, "com.iflytek.cmccLAST_GET_VERSION"

    iget-wide v4, p0, Lvu;->i:J

    invoke-virtual {v1, v2, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 187
    return-void

    .line 181
    :cond_8
    :try_start_1
    iget v1, p0, Lvu;->n:I

    if-nez v1, :cond_7

    .line 182
    iput-object v0, p0, Lvu;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    goto :goto_0

    .line 185
    .end local v0    # "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .param p2, "autoType"    # I

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lvu;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 133
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lvu;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_2
    iget v0, p0, Lvu;->n:I

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lvu;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lvu;Lcom/iflytek/blc/version/ClientUpdateInfo;I)V
    .locals 0
    .param p0, "x0"    # Lvu;
    .param p1, "x1"    # Lcom/iflytek/blc/version/ClientUpdateInfo;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lvu;->a(Lcom/iflytek/blc/version/ClientUpdateInfo;I)V

    return-void
.end method

.method static synthetic b(Lvu;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 0
    .param p0, "x0"    # Lvu;
    .param p1, "x1"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 30
    iput-object p1, p0, Lvu;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    return-object p1
.end method

.method private b(I)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 462
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 463
    .local v0, "updateType":Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    packed-switch p1, :pswitch_data_0

    .line 476
    :goto_0
    return-object v0

    .line 465
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 466
    goto :goto_0

    .line 468
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 469
    goto :goto_0

    .line 471
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 472
    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lvu;)Lil;
    .locals 1
    .param p0, "x0"    # Lvu;

    .prologue
    .line 30
    iget-object v0, p0, Lvu;->j:Lil;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lvu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lvu;->e:Lvu;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lvu;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lvu;->e:Lvu;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lvu;

    invoke-direct {v0, p0}, Lvu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvu;->e:Lvu;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lvu;->e:Lvu;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lvu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvu;

    .prologue
    .line 30
    iget-object v0, p0, Lvu;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lvu;)I
    .locals 1
    .param p0, "x0"    # Lvu;

    .prologue
    .line 30
    iget v0, p0, Lvu;->n:I

    return v0
.end method

.method static synthetic e(Lvu;)V
    .locals 0
    .param p0, "x0"    # Lvu;

    .prologue
    .line 30
    invoke-direct {p0}, Lvu;->i()V

    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 91
    iget-object v1, p0, Lvu;->j:Lil;

    const-string/jumbo v2, "com.iflytek.cmccLAST_GET_VERSION"

    invoke-virtual {v1, v2}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lvu;->i:J

    .line 92
    invoke-direct {p0}, Lvu;->g()V

    .line 94
    iget-wide v2, p0, Lvu;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 95
    const-string/jumbo v1, "BlcVersionAdapter"

    const-string/jumbo v2, "loadSaveRunVersion date error, reset to now."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lvu;->i:J

    .line 98
    :cond_0
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lvu;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "time":Ljava/lang/String;
    const-string/jumbo v1, "BlcVersionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadSaveRunVersion time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "time":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lvu$1;

    invoke-direct {v1, p0}, Lvu$1;-><init>(Lvu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "update_no_prompt_version"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 401
    iget-object v1, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvu$a;

    .line 402
    .local v0, "listener":Lvu$a;
    if-eqz v0, :cond_0

    .line 403
    iget v2, p0, Lvu;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 404
    iget-object v2, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-interface {v0, v2}, Lvu$a;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    goto :goto_0

    .line 405
    :cond_1
    iget v2, p0, Lvu;->n:I

    if-nez v2, :cond_0

    .line 406
    iget-object v2, p0, Lvu;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-interface {v0, v2}, Lvu$a;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    goto :goto_0

    .line 410
    .end local v0    # "listener":Lvu$a;
    :cond_2
    return-void
.end method


# virtual methods
.method public OnVersionFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 448
    const-string/jumbo v1, "BlcVersionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnVersionFailure | errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lvu;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    iget v1, p0, Lvu;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 457
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1, v4}, Lvu;->a(ILvu$a;Z)V

    .line 459
    :cond_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BlcVersionAdapter"

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public OnVersionSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/version/ClientUpdateInfo;)V
    .locals 3
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "updateInfo"    # Lcom/iflytek/blc/version/ClientUpdateInfo;

    .prologue
    .line 427
    const-string/jumbo v0, "BlcVersionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnVersionSuccess | statusCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string/jumbo v0, "BlcVersionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnVersionSuccess | mAutoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvu;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz p3, :cond_0

    .line 430
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lvu$3;

    invoke-direct {v1, p0, p3}, Lvu$3;-><init>(Lvu;Lcom/iflytek/blc/version/ClientUpdateInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string/jumbo v0, "http://ydossp.voicecloud.cn/do"

    return-object v0
.end method

.method public a(ILvu$a;Z)V
    .locals 7
    .param p1, "autoType"    # I
    .param p2, "listener"    # Lvu$a;
    .param p3, "updateType"    # Z

    .prologue
    const/4 v6, 0x1

    .line 216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 217
    const-string/jumbo v2, "BlcVersionAdapter"

    const-string/jumbo v3, "this api level is not supported"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p2}, Lvu;->a(Lvu$a;)V

    .line 221
    const-string/jumbo v2, "BlcVersionAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput p1, p0, Lvu;->n:I

    .line 225
    if-ne v6, p1, :cond_5

    .line 226
    if-eqz p3, :cond_2

    .line 227
    sget-boolean v2, Lvk;->a:Z

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lvu;->c:Landroid/content/Context;

    invoke-static {v2}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lvk;->a(Lcom/iflytek/blc/version/VersionObserver;Z)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lvu;->a:Lyo;

    invoke-interface {v2, p1}, Lyo;->a(I)J

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lvu;->i:J

    sub-long v0, v2, v4

    .line 235
    .local v0, "interval":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 236
    sget-boolean v2, Lvk;->a:Z

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lvu;->c:Landroid/content/Context;

    invoke-static {v2}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lvk;->a(Lcom/iflytek/blc/version/VersionObserver;Z)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v2, p0, Lvu;->a:Lyo;

    invoke-interface {v2, p1}, Lyo;->a(I)J

    goto :goto_0

    .line 242
    :cond_4
    const-string/jumbo v2, "BlcVersionAdapter"

    const-string/jumbo v3, "checkVersion update check less than one day"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v0    # "interval":J
    :cond_5
    sget-boolean v2, Lvk;->a:Z

    if-eqz v2, :cond_6

    .line 248
    iget-object v2, p0, Lvu;->c:Landroid/content/Context;

    invoke-static {v2}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lvk;->a(Lcom/iflytek/blc/version/VersionObserver;Z)V

    goto :goto_0

    .line 250
    :cond_6
    iget-object v2, p0, Lvu;->a:Lyo;

    invoke-interface {v2, p1}, Lyo;->a(I)J

    goto :goto_0
.end method

.method public a(Lvu$a;)V
    .locals 2
    .param p1, "listener"    # Lvu$a;

    .prologue
    .line 493
    const-string/jumbo v0, "BlcVersionAdapter"

    const-string/jumbo v1, "addBlcListener"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_0
    return-void
.end method

.method public b(Lvu$a;)V
    .locals 2
    .param p1, "listener"    # Lvu$a;

    .prologue
    .line 500
    const-string/jumbo v0, "BlcVersionAdapter"

    const-string/jumbo v1, "deleteBlcListener"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lvu;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v7, p0, Lvu;->k:Ljava/lang/Object;

    monitor-enter v7

    .line 275
    :try_start_0
    iget-object v8, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v8}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v8

    if-nez v8, :cond_1

    .line 276
    :cond_0
    const-string/jumbo v6, "BlcVersionAdapter"

    const-string/jumbo v8, "isNeedShowUpdate updateinfo is null"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v7

    .line 302
    :goto_0
    return v1

    .line 280
    :cond_1
    iget-object v8, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v8}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v8

    sget-object v9, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v8, v9, :cond_2

    .line 281
    const-string/jumbo v6, "BlcVersionAdapter"

    const-string/jumbo v8, "isNeedShowUpdate UpdateType.NoNeed"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v7

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 285
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lvu;->h()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    const-string/jumbo v6, "BlcVersionAdapter"

    const-string/jumbo v8, "isNeedShowUpdate | current version is no longer prompt."

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit v7

    goto :goto_0

    .line 290
    :cond_3
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmccIFLY_LAST_SHOW_UPDATE_TIME"

    invoke-virtual {v8, v9}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    .line 292
    .local v2, "lastShowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 293
    .local v4, "timeNow":J
    sub-long v8, v4, v2

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 296
    .local v0, "interval_day":I
    if-ge v0, v6, :cond_4

    iget-object v8, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 297
    invoke-virtual {v8}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v8

    sget-object v9, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v8, v9, :cond_5

    .line 298
    :cond_4
    monitor-exit v7

    move v1, v6

    goto :goto_0

    .line 300
    :cond_5
    const-string/jumbo v6, "BlcVersionAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isNeedShowUpdate interval_day="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    .line 359
    const-string/jumbo v3, "BlcVersionAdapter"

    const-string/jumbo v4, "this api level is not supported"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_0
    monitor-exit p0

    return-void

    .line 362
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    new-instance v4, Lvu$2;

    invoke-direct {v4, p0, p1}, Lvu$2;-><init>(Lvu;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_LAST_SHOW_UPDATE_TIME"

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 375
    invoke-virtual {v3, v4, v6, v7}, Lil;->a(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BlcVersionAdapter"

    const-string/jumbo v4, "showNewVersion"

    invoke-static {v3, v4, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lvu;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    monitor-exit v1

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lvu;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lvu;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    monitor-exit v1

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 381
    const-string/jumbo v1, "BlcVersionAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult | errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v1, :cond_0

    .line 383
    iget-object v2, p0, Lvu;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    check-cast p2, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    iput-object p2, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 385
    new-instance v0, Lcom/iflytek/blc/version/ClientUpdateInfo;

    invoke-direct {v0}, Lcom/iflytek/blc/version/ClientUpdateInfo;-><init>()V

    .line 386
    .local v0, "clientUpdateInfo":Lcom/iflytek/blc/version/ClientUpdateInfo;
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v1

    invoke-direct {p0, v1}, Lvu;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setUpdateType(I)V

    .line 388
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setUpdateInfo(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setUpdateDetail(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateShowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setShowId(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lvu;->g:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/version/ClientUpdateInfo;->setUpdateVersion(Ljava/lang/String;)V

    .line 392
    iget v1, p0, Lvu;->n:I

    invoke-direct {p0, v0, v1}, Lvu;->a(Lcom/iflytek/blc/version/ClientUpdateInfo;I)V

    .line 393
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-direct {p0}, Lvu;->i()V

    .line 398
    .end local v0    # "clientUpdateInfo":Lcom/iflytek/blc/version/ClientUpdateInfo;
    :goto_0
    return-void

    .line 393
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 396
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    invoke-direct {p0, p1}, Lvu;->a(I)V

    goto :goto_0
.end method
