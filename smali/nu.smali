.class public Lnu;
.super Ljava/lang/Object;
.source "DownloadBroadcast.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lnu;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.allremoved"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public a(IJ)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "id"    # J

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.waiting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.allstopped"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public c(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "error_code"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "total_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "current_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "range"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public d(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.running"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "total_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "current_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public e(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "additional_info"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public f(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.stopped"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "total_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    const-string/jumbo v1, "current_length"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public g(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.removed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public h(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lnu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method
