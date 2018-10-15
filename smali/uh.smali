.class public Luh;
.super Ljava/lang/Object;
.source "AppDownloadHelper.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luh$a;
    }
.end annotation


# instance fields
.field private a:Luh$a;

.field private b:Landroid/content/Context;

.field private c:Lno;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/app/install/AppInstallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Luh$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Luh$a;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    iput-object p1, p0, Luh;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Luh;->a:Luh$a;

    .line 35
    iget-object v0, p0, Luh;->b:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iput-object v0, p0, Luh;->c:Lno;

    .line 36
    iget-object v0, p0, Luh;->c:Lno;

    const-string/jumbo v1, "APP_AppDownloadHelper"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadType"    # I
    .param p3, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Luh;->a:Luh$a;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Luh;->a:Luh$a;

    invoke-interface {v0, p3}, Luh$a;->e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Luh;->c:Lno;

    .line 46
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 48
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    const-string/jumbo v0, "APP_AppDownloadHelper"

    const-string/jumbo v1, "startDownload(), info is null or url is empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Luh;->c:Lno;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->j()I

    move-result v3

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    const/4 v1, -0x1

    .line 165
    if-nez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    iget-object v2, p0, Luh;->c:Lno;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 169
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v1

    goto :goto_0
.end method

.method public d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 139
    const-string/jumbo v3, "APP_AppDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadError, errorCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p2, :cond_0

    .line 141
    const-string/jumbo v3, "url"

    .line 142
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "APP_AppDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadError, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 148
    .local v1, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    iget-object v3, p0, Luh;->c:Lno;

    invoke-virtual {v3, v2}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 149
    .local v0, "downinfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/16 v3, 0x38b

    if-ne v3, p1, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e(Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object v3, p0, Luh;->a:Luh$a;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Luh;->a:Luh$a;

    invoke-interface {v3, v1, p1}, Luh$a;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;I)V

    goto :goto_0
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 14
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v12, -0x1

    .line 65
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string/jumbo v0, "APP_AppDownloadHelper"

    const-string/jumbo v10, "downloadStatusChanged, url is null"

    invoke-static {v0, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, "type"

    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 74
    .local v7, "downloadType":I
    iget-object v0, p0, Luh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 81
    .local v1, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "APP_AppDownloadHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "downloadStatusChanged, action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Luh;->a:Luh$a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Luh;->a:Luh$a;

    invoke-interface {v0, v1}, Luh$a;->b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const-string/jumbo v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v1, v8}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e(Ljava/lang/String;)V

    .line 95
    :cond_4
    iget-object v0, p0, Luh;->a:Luh$a;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Luh;->a:Luh$a;

    invoke-interface {v0, v1}, Luh$a;->d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 98
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.running"

    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    const-string/jumbo v0, "current_length"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 102
    .local v2, "currentBytes":J
    const-string/jumbo v0, "total_length"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 104
    .local v4, "totalBytes":J
    iget-object v0, p0, Luh;->a:Luh$a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Luh;->a:Luh$a;

    invoke-interface/range {v0 .. v5}, Luh$a;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;JJ)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "currentBytes":J
    .end local v4    # "totalBytes":J
    :cond_6
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.started"

    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Luh;->a:Luh$a;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Luh;->a:Luh$a;

    invoke-interface {v0, v1}, Luh$a;->c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto/16 :goto_0

    .line 113
    :cond_7
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.stopped"

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.removed"

    .line 117
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    invoke-direct {p0, v9, v7, v1}, Luh;->a(Ljava/lang/String;ILcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto/16 :goto_0

    .line 119
    :cond_8
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.allremoved"

    .line 120
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, v9, v7, v1}, Luh;->a(Ljava/lang/String;ILcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto/16 :goto_0
.end method

.method public e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    const/4 v1, 0x0

    .line 183
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v1

    .line 186
    :cond_1
    iget-object v2, p0, Luh;->c:Lno;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 187
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 162
    return-void
.end method
