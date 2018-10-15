.class public Lbai;
.super Lum;
.source "LxDownloadManager.java"

# interfaces
.implements Lbag;
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
.implements Lno$c;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lno;

.field private e:Lbah;

.field private f:Lil;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lxr;

.field private j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lum;-><init>(Landroid/content/Context;)V

    .line 40
    const-string/jumbo v0, "LxDownloadManager"

    iput-object v0, p0, Lbai;->b:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "next_lx_download_time"

    iput-object v0, p0, Lbai;->c:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "last_lx_update_info"

    iput-object v0, p0, Lbai;->g:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "auto_linxi_download_time"

    iput-object v0, p0, Lbai;->h:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iput-object v0, p0, Lbai;->d:Lno;

    .line 60
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lbai;->f:Lil;

    .line 62
    iget-object v0, p0, Lbai;->d:Lno;

    const-string/jumbo v1, "LxDownloadManager"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 63
    invoke-static {p1}, Lxr;->a(Landroid/content/Context;)Lxr;

    move-result-object v0

    iput-object v0, p0, Lbai;->i:Lxr;

    .line 65
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lbai;->j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 66
    iget-object v0, p0, Lbai;->j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lbai;->j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "LxDownloadManager"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 69
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, "LxDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownload | type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lbai;->d:Lno;

    invoke-virtual {v0, p4}, Lno;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lbai;->d:Lno;

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 259
    const/16 v1, 0x14

    if-eq p2, v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string/jumbo v1, "LxDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDownloadError | url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 270
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v0, :cond_2

    .line 271
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "handleDownloadError | updateInfo is null!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "handleDownloadError | remove download task and set next alarm at tomorrow"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lbai;->d:Lno;

    invoke-virtual {v1, p1}, Lno;->d(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lbai;->n()V

    goto :goto_0

    .line 279
    :cond_3
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "handleDownloadError | it\'s not my download task!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 239
    const/16 v1, 0x14

    if-eq p2, v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 244
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string/jumbo v1, "LxDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDownloadFinished | url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0, p3}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setFilePath(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, v0}, Lbai;->c(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 251
    iget-object v1, p0, Lbai;->e:Lbah;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lbai;->e:Lbah;

    invoke-interface {v1, v0}, Lbah;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 254
    :cond_2
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "handleDownloadFinished | lx new version download success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 106
    const-string/jumbo v0, "LxDownloadManager"

    const-string/jumbo v1, "downloadApp"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "LxDownloadManager"

    const-string/jumbo v1, "downloadApp | it\'s had download!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    const/16 v0, 0x14

    const-string/jumbo v1, "wifi_custom"

    const-string/jumbo v2, "\u7075\u7280"

    .line 119
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-direct {p0, v0, v1, v2, v3}, Lbai;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 89
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "doWork"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lbai;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbai;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v1, "LxDownloadManager"

    const-string/jumbo v2, "downloadApps | it\'s not in allow time or it does not fit strategy"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lbai;->e()Luw;

    move-result-object v1

    invoke-static {v1}, Luq;->a(Luw;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lbai;->b(J)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 97
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    invoke-direct {p0, v0}, Lbai;->d(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lbai;->e()Luw;

    move-result-object v0

    .line 102
    .local v0, "allowTime":Luw;
    invoke-static {v0}, Lvb;->a(Luw;)Z

    move-result v1

    return v1
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "alarm_LINXI_download"

    return-object v0
.end method

.method private m()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 301
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 7

    .prologue
    .line 310
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "setNextAlarmTimeAtTommorrow"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lbai;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "setNextAlarmTimeAtTommorrow | lingxi has downloaded"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lbai;->d()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "downloadTimes":Ljava/lang/String;
    invoke-static {v0}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v1

    .line 318
    .local v1, "time":Luw;
    invoke-static {v1}, Luw;->a(Luw;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    const-string/jumbo v4, "LxDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNextAlarmTimeAtTommorrow | downloadTimes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {v1}, Luq;->b(Luw;)J

    move-result-wide v2

    .line 324
    .local v2, "triggerTime":J
    invoke-virtual {p0, v2, v3}, Lbai;->b(J)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string/jumbo v0, "next_lx_download_time"

    return-object v0
.end method

.method public a(Lbah;)V
    .locals 0
    .param p1, "listener"    # Lbah;

    .prologue
    .line 328
    iput-object p1, p0, Lbai;->e:Lbah;

    .line 329
    return-void
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 7
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 133
    invoke-static {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->isAppValid(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "onAppRequestSuccess | app is invalid!"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->isNotificationShowType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v2

    .line 143
    .local v2, "lastUpdateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v2, :cond_2

    .line 144
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "onAppArrived | lastUpdateInfo is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object v2, p1

    .line 146
    invoke-virtual {p0, v2}, Lbai;->c(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 158
    :goto_1
    iget-object v4, p0, Lbai;->i:Lxr;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxr;->a(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v3

    .line 161
    .local v3, "time":Luw;
    invoke-static {v3}, Luq;->a(Luw;)J

    move-result-wide v0

    .line 162
    .local v0, "downloadTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 163
    invoke-virtual {p0, v0, v1}, Lbai;->b(J)V

    .line 164
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getBdTimeWin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbai;->a(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v4, "LxDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAppRequestSuccess | set downlaod time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v0    # "downloadTime":J
    .end local v3    # "time":Luw;
    :cond_2
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "onAppArrived | it \'s the same version"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_3
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "onAppArrived | it\'s a new version"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, v2}, Lbai;->b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 153
    move-object v2, p1

    .line 154
    invoke-virtual {p0, v2}, Lbai;->c(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const-string/jumbo v0, "auto_linxi_download_time"

    return-object v0
.end method

.method protected b(J)V
    .locals 5
    .param p1, "datetime"    # J

    .prologue
    .line 357
    const-string/jumbo v2, "LxDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNextAlarm() | set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 359
    const-string/jumbo v2, "LxDownloadManager"

    const-string/jumbo v3, "setNextAlarm() | datetime is invalid"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v2, p0, Lbai;->j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 365
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_alarm"

    invoke-direct {p0}, Lbai;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v3, "LxDownloadManager"

    .line 369
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 370
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 371
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "lxdownload_alarm"

    .line 373
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 376
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lbai;->j:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 377
    invoke-virtual {p0, p1, p2}, Lbai;->a(J)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 2
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 171
    const-string/jumbo v0, "LxDownloadManager"

    const-string/jumbo v1, "deleteOldVersion | delete old notification and file"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public c(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 3
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lbai;->f:Lil;

    const-string/jumbo v1, "last_lx_update_info"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 285
    const-string/jumbo v2, "LxDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadError, errorCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz p2, :cond_0

    .line 287
    const-string/jumbo v2, "url"

    .line 288
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 290
    .local v0, "type":I
    invoke-direct {p0, v1, v0}, Lbai;->a(Ljava/lang/String;I)V

    .line 292
    .end local v0    # "type":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v4, "type"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 225
    .local v2, "type":I
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    const-string/jumbo v4, "LxDownloadManager"

    const-string/jumbo v5, "downloadStatusChanged, url is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string/jumbo v4, "file_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1}, Lbai;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lbai;->c()J

    move-result-wide v0

    .line 74
    .local v0, "nextRequestTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 75
    const-string/jumbo v2, "LxDownloadManager"

    const-string/jumbo v3, "init | next request time is 0"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v2, "LxDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init | next request time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v0, v1}, Lvb;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string/jumbo v2, "LxDownloadManager"

    const-string/jumbo v3, "init | it alarm out of dated, do work now"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lbai;->j()V

    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v2, "LxDownloadManager"

    const-string/jumbo v3, "init | set request time"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, v0, v1}, Lbai;->b(J)V

    goto :goto_0
.end method

.method public h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lbai;->f:Lil;

    const-string/jumbo v2, "last_lx_update_info"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->parser(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public i()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v2

    .line 333
    .local v2, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 337
    :cond_1
    iget-object v4, p0, Lbai;->a:Landroid/content/Context;

    invoke-static {v4}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "myVersion":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 297
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 384
    if-eqz p3, :cond_1

    const-string/jumbo v2, "LxDownloadManager"

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    const-string/jumbo v2, "LxDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAlarmTrigger alarm data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 388
    const-string/jumbo v2, "extra_alarm"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "exact":Ljava/lang/String;
    const-string/jumbo v2, "alarm_LINXI_download"

    invoke-static {v2, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0}, Lbai;->j()V

    .line 396
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "exact":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string/jumbo v2, "LxDownloadManager"

    const-string/jumbo v3, "onAlarmTrigger but alarm data is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
