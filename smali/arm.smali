.class Larm;
.super Ljava/lang/Object;
.source "PluginDownloadHelper.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larm$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Larm$a;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Larm$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Larm$a;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Larm;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Larm;->b:Larm$a;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Larm;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    iget-object v0, p0, Larm;->a:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v1, "PluginDownloadHelper"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pluginType"    # I

    .prologue
    .line 162
    iget-object v0, p0, Larm;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v1, p0, Larm;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Larm;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method


# virtual methods
.method public a(ILasc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pluginType"    # I
    .param p2, "installMode"    # Lasc;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p4, p1}, Larm;->a(Ljava/lang/String;I)V

    .line 124
    const/4 v3, 0x1

    .line 125
    .local v3, "taskVisibility":I
    invoke-virtual {p2}, Lasc;->e()Z

    move-result v7

    .line 126
    .local v7, "showInDownList":Z
    invoke-virtual {p2}, Lasc;->d()Z

    move-result v8

    .line 127
    .local v8, "showInNotifyBar":Z
    if-eqz v7, :cond_1

    .line 128
    if-eqz v8, :cond_0

    .line 129
    const/4 v3, 0x1

    .line 141
    :goto_0
    iget-object v0, p0, Larm;->a:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const/16 v1, 0xb

    const-string/jumbo v2, "plugin"

    .line 145
    invoke-static {p1}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p3

    move-object v5, p4

    .line 141
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 131
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 134
    :cond_1
    if-eqz v8, :cond_2

    .line 135
    const/4 v3, 0x3

    goto :goto_0

    .line 137
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Larm;->a:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lno;->d(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public b(Ljava/lang/String;)[D
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v2, p0, Larm;->a:Landroid/content/Context;

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    invoke-virtual {v2, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 176
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v1, 0x0

    .line 177
    .local v1, "percentArr":[D
    if-eqz v0, :cond_0

    .line 178
    const/4 v2, 0x2

    new-array v1, v2, [D

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, v1, v2

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, v1, v2

    .line 182
    :cond_0
    return-object v1
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const-string/jumbo v3, "PluginDownloadHelper"

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

    .line 98
    if-eqz p2, :cond_0

    .line 99
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "type":I
    const-string/jumbo v3, "PluginDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadError, type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 102
    const-string/jumbo v3, "url"

    .line 103
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "PluginDownloadHelper"

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

    .line 105
    invoke-direct {p0, v2}, Larm;->c(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "pluginType":I
    invoke-direct {p0, v2}, Larm;->d(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Larm;->b:Larm$a;

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Larm;->b:Larm$a;

    invoke-interface {v3, v0, p1}, Larm$a;->a(II)V

    .line 112
    .end local v0    # "pluginType":I
    .end local v1    # "type":I
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 13
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, -0x1

    .line 43
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string/jumbo v0, "type"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 47
    .local v7, "type":I
    const/16 v0, 0xb

    if-ne v7, v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "PluginDownloadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadStatusChanged, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 53
    .local v12, "url":Ljava/lang/String;
    invoke-direct {p0, v12}, Larm;->c(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "pluginType":I
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-direct {p0, v12}, Larm;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Larm;->b:Larm$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Larm;->b:Larm$a;

    invoke-interface {v0, v1}, Larm$a;->a(I)V

    goto :goto_0

    .line 60
    :cond_2
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.running"

    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string/jumbo v0, "current_length"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 64
    .local v8, "currentBytes":J
    const-string/jumbo v0, "total_length"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 66
    .local v10, "totalBytes":J
    iget-object v0, p0, Larm;->b:Larm$a;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Larm;->b:Larm$a;

    long-to-double v2, v8

    long-to-double v4, v10

    invoke-interface/range {v0 .. v5}, Larm$a;->a(IDD)V

    goto :goto_0

    .line 70
    .end local v8    # "currentBytes":J
    .end local v10    # "totalBytes":J
    :cond_3
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.started"

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Larm;->b:Larm$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Larm;->b:Larm$a;

    invoke-interface {v0, v1}, Larm$a;->b(I)V

    goto/16 :goto_0

    .line 75
    :cond_4
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.stopped"

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.removed"

    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    invoke-direct {p0, v12}, Larm;->d(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Larm;->b:Larm$a;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Larm;->b:Larm$a;

    invoke-interface {v0, v1}, Larm$a;->c(I)V

    goto/16 :goto_0

    .line 85
    :cond_5
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.allremoved"

    .line 86
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, v12}, Larm;->d(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Larm;->b:Larm$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Larm;->b:Larm$a;

    invoke-interface {v0, v1}, Larm$a;->c(I)V

    goto/16 :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 117
    return-void
.end method
