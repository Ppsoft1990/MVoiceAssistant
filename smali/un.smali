.class Lun;
.super Lum;
.source "AppDownloadManager.java"

# interfaces
.implements Lno$c;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lur;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Luu;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lno;

.field private g:Luy;

.field private final h:Ljava/lang/String;

.field private i:Lwu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lur;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appEntityDao"    # Lur;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lum;-><init>(Landroid/content/Context;)V

    .line 38
    const-string/jumbo v0, "AppDownloadManager"

    iput-object v0, p0, Lun;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "next_app_download_time"

    iput-object v0, p0, Lun;->c:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    const-string/jumbo v0, "auto_app_download_time"

    iput-object v0, p0, Lun;->h:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lun;->d:Lur;

    .line 53
    invoke-static {p1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iput-object v0, p0, Lun;->f:Lno;

    .line 55
    iget-object v0, p0, Lun;->f:Lno;

    const-string/jumbo v1, "AppDownloadManager"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 56
    invoke-static {p1}, Lwu;->a(Landroid/content/Context;)Lwu;

    move-result-object v0

    iput-object v0, p0, Lun;->i:Lwu;

    .line 57
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luu;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "app"    # Luu;

    .prologue
    .line 180
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownload | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lun;->f:Lno;

    invoke-virtual {v0, p4}, Lno;->d(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lun;->f:Lno;

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 332
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleTaskError | url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 342
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "handleDownloadError | remove downloak task and set next alart time at tommorrow"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lun;->f:Lno;

    invoke-virtual {v0, p1}, Lno;->d(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lun;->o()V

    goto :goto_0

    .line 349
    :cond_2
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "handleDownloadError | it\'s not my download task"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    .line 295
    .local v0, "app":Luu;
    if-nez v0, :cond_0

    .line 296
    const-string/jumbo v1, "AppDownloadManager"

    const-string/jumbo v2, "handleDownloadFinished | it is not my task"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string/jumbo v1, "AppDownloadManager"

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

    .line 301
    iget-object v1, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v0}, Luu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v0, p3}, Luu;->d(Ljava/lang/String;)V

    .line 308
    :cond_1
    :goto_1
    iget-object v1, p0, Lun;->d:Lur;

    invoke-interface {v1, v0}, Lur;->update(Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0, v0}, Lun;->f(Luu;)V

    .line 310
    iget-object v1, p0, Lun;->f:Lno;

    invoke-virtual {v1, p1}, Lno;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v0}, Luu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v0, p3}, Luu;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Luu;)V
    .locals 3
    .param p1, "app"    # Luu;

    .prologue
    .line 106
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "downloadOrDeleteApp"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadOrDeleteApp | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Luu;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadOrDeleteApp | app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is out of time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lun;->e(Luu;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1}, Lun;->c(Luu;)V

    .line 119
    invoke-direct {p0, p1}, Lun;->d(Luu;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lun;->a:Landroid/content/Context;

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgq;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Luu;)V
    .locals 7
    .param p1, "app"    # Luu;

    .prologue
    .line 123
    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadApp |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s apk has download!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Luu;->d()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "apkUrl":Ljava/lang/String;
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "downloadApp | app is downloading!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadOrDeleteApp | download apk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v1, 0x14

    const-string/jumbo v2, "wifi_custom"

    .line 138
    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Luu;->d()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    .line 135
    invoke-direct/range {v0 .. v5}, Lun;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luu;)V

    goto :goto_0
.end method

.method private d(Luu;)V
    .locals 7
    .param p1, "app"    # Luu;

    .prologue
    .line 142
    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadApp | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s icon has download!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "iconUrl":Ljava/lang/String;
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "downloadApp | icon is downloading!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadOrDeleteApp | download icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v1, 0x10

    const-string/jumbo v2, "share_pic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u56fe\u7247"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    .line 154
    invoke-direct/range {v0 .. v5}, Lun;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luu;)V

    goto :goto_0
.end method

.method private e(Luu;)V
    .locals 3
    .param p1, "app"    # Luu;

    .prologue
    .line 161
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deletelOutofTimeApp | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lun;->g:Luy;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lun;->g:Luy;

    invoke-interface {v0, p1}, Luy;->b(Luu;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "deletelOutofTimeApp | delete app download task"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lun;->f:Lno;

    invoke-virtual {p1}, Luu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->d(Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "deletelOutofTimeApp | delete icon download task"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lun;->f:Lno;

    invoke-virtual {p1}, Luu;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->d(Ljava/lang/String;)V

    .line 177
    :cond_2
    return-void
.end method

.method private f(Luu;)V
    .locals 3
    .param p1, "app"    # Luu;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nofityDownloadSuccess | filepath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iconPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Luu;->a(I)V

    .line 321
    iget-object v0, p0, Lun;->d:Lur;

    invoke-interface {v0, p1}, Lur;->update(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lun;->g:Luy;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lun;->g:Luy;

    invoke-interface {v0, p1}, Luy;->a(Luu;)V

    .line 325
    :cond_1
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nofityDownloadSuccess | app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " download success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_2
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "nofityDownloadSuccess | filepath or iconpath is empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "dowork"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lun;->d:Lur;

    invoke-interface {v2}, Lur;->find()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "dowork | There are no app for download"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lun;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lun;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    :cond_2
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "downloadApps | it\'s not in allow time or it does not fit strategy"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lun;->e()Luw;

    move-result-object v2

    invoke-static {v2}, Luq;->a(Luw;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lun;->b(J)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    .line 96
    .local v0, "app":Luu;
    invoke-direct {p0, v0}, Lun;->b(Luu;)V

    goto :goto_1
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lun;->e()Luw;

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
    .line 253
    const-string/jumbo v0, "alarm_app_download"

    return-object v0
.end method

.method private m()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_AUTO_DOWNLOAD_ALARM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_alarm"

    invoke-direct {p0}, Lun;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lun;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 266
    .local v1, "peddingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lun;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 7

    .prologue
    .line 374
    invoke-direct {p0}, Lun;->n()Z

    move-result v4

    if-nez v4, :cond_0

    .line 375
    const-string/jumbo v4, "AppDownloadManager"

    const-string/jumbo v5, "setNextAlarmTime | there are download task"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v4, p0, Lun;->d:Lur;

    invoke-interface {v4}, Lur;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    const-string/jumbo v4, "AppDownloadManager"

    const-string/jumbo v5, "setNextAlarmTime | All app had download"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0}, Lun;->d()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "downloadTimes":Ljava/lang/String;
    invoke-static {v0}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v1

    .line 386
    .local v1, "time":Luw;
    invoke-static {v1}, Luw;->a(Luw;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 387
    const-string/jumbo v4, "AppDownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setNextAlarmTimeAtTommorrow | downloadTimes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {v1}, Luq;->b(Luw;)J

    move-result-wide v2

    .line 392
    .local v2, "triggerTime":J
    invoke-virtual {p0, v2, v3}, Lun;->b(J)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "next_app_download_time"

    return-object v0
.end method

.method public a(Luu;)V
    .locals 4
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {p1}, Luu;->a(Luu;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const-string/jumbo v1, "AppDownloadManager"

    const-string/jumbo v2, "onAppRequestSuccess | app is invalid!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lun;->i:Lwu;

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwu;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lun;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const-string/jumbo v1, "AppDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppRequestSuccess | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has installed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lun;->d:Lur;

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lur;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    .line 209
    .local v0, "item":Luu;
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Luu;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    const-string/jumbo v1, "AppDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppRequestSuccess | cached app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is out of time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, v0}, Lun;->e(Luu;)V

    .line 219
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Luu;->a(I)V

    .line 220
    iget-object v1, p0, Lun;->d:Lur;

    invoke-interface {v1, p1}, Lur;->insert(Ljava/lang/Object;)J

    .line 221
    const-string/jumbo v1, "AppDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppRequestSuccess | insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    :cond_4
    const-string/jumbo v1, "AppDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppRequestSuccess | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Luu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has processed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Luv;)V
    .locals 8
    .param p1, "appInfos"    # Luv;

    .prologue
    .line 229
    invoke-static {p1}, Luv;->a(Luv;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 230
    const-string/jumbo v5, "AppDownloadManager"

    const-string/jumbo v6, "onAppRequestSuccess | app is invalid!"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Luv;->a()Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    .line 236
    .local v0, "app":Luu;
    invoke-virtual {p0, v0}, Lun;->a(Luu;)V

    goto :goto_1

    .line 239
    .end local v0    # "app":Luu;
    :cond_2
    invoke-virtual {p1}, Luv;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v4

    .line 240
    .local v4, "time":Luw;
    invoke-static {v4}, Luq;->a(Luw;)J

    move-result-wide v2

    .line 241
    .local v2, "downloadTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 242
    invoke-virtual {p0, v2, v3}, Lun;->b(J)V

    .line 243
    invoke-virtual {p1}, Luv;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lun;->a(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v5, "AppDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAppRequestSuccess | set download time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Luy;)V
    .locals 0
    .param p1, "listener"    # Luy;

    .prologue
    .line 396
    iput-object p1, p0, Lun;->g:Luy;

    .line 397
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string/jumbo v0, "auto_app_download_time"

    return-object v0
.end method

.method protected b(J)V
    .locals 3
    .param p1, "datetime"    # J

    .prologue
    .line 410
    const-string/jumbo v0, "AppDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextAlarm() | set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lvb;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 412
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "setNextAlarm() | datetime is invalid"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lun;->i()V

    .line 417
    iget-object v0, p0, Lun;->a:Landroid/content/Context;

    invoke-direct {p0}, Lun;->m()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lgm;->a(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    .line 418
    invoke-virtual {p0, p1, p2}, Lun;->a(J)V

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 355
    const-string/jumbo v2, "AppDownloadManager"

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

    .line 356
    if-eqz p2, :cond_0

    .line 357
    const-string/jumbo v2, "url"

    .line 358
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 360
    .local v0, "type":I
    invoke-direct {p0, v1, v0}, Lun;->a(Ljava/lang/String;I)V

    .line 362
    .end local v0    # "type":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 276
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const-string/jumbo v4, "type"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 280
    .local v2, "type":I
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    const-string/jumbo v4, "AppDownloadManager"

    const-string/jumbo v5, "downloadStatusChanged, url is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-string/jumbo v4, "file_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1}, Lun;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lun;->c()J

    move-result-wide v0

    .line 62
    .local v0, "nextRequestTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 63
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "init | next request time is 0"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v2, "AppDownloadManager"

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

    .line 67
    invoke-static {v0, v1}, Lvb;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "init | it alarm out of dated"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lun;->j()V

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v2, "AppDownloadManager"

    const-string/jumbo v3, "init | set request time"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, v0, v1}, Lun;->b(J)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "onAlarmTrigger"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lun;->j()V

    .line 79
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 422
    const-string/jumbo v0, "AppDownloadManager"

    const-string/jumbo v1, "cancelNextAlarm()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lun;->a:Landroid/content/Context;

    invoke-direct {p0}, Lun;->m()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Luz;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 424
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 367
    return-void
.end method
