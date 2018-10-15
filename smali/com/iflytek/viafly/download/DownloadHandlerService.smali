.class public Lcom/iflytek/viafly/download/DownloadHandlerService;
.super Landroid/app/Service;
.source "DownloadHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/download/DownloadHandlerService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/download/DownloadHandlerService$a;

.field private b:Lagj;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/iflytek/viafly/download/DownloadHandlerService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/download/DownloadHandlerService$1;-><init>(Lcom/iflytek/viafly/download/DownloadHandlerService;)V

    iput-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/download/DownloadHandlerService;)Lagj;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->b:Lagj;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/download/DownloadHandlerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->b:Lagj;

    invoke-virtual {v0, p1}, Lagj;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 82
    return-void
.end method

.method private b(Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "installCode"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->b:Lagj;

    invoke-virtual {v0, p1, p2}, Lagj;->a(Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    .line 86
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->c(Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    return-void
.end method

.method private c(Lcom/iflytek/common/download/entities/DownloadInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "installResult":I
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    .line 131
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 134
    :pswitch_1
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "install application"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v0}, Lns;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_2
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "install resource"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, -0x2

    .line 145
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    new-instance v4, Lcom/iflytek/viafly/download/DownloadHandlerService$2;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService$2;-><init>(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 145
    invoke-virtual {v3, p1, v0, v4}, Lns;->b(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V

    goto :goto_0

    .line 155
    :pswitch_3
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "install theme package"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, -0x2

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    new-instance v4, Lcom/iflytek/viafly/download/DownloadHandlerService$3;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService$3;-><init>(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 159
    invoke-virtual {v3, p1, v0, v4}, Lns;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V

    goto :goto_0

    .line 168
    :pswitch_4
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "install plugin"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, -0x2

    .line 176
    goto :goto_0

    .line 178
    :pswitch_5
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "browser file download"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 180
    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v0}, Lns;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private c(Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "installResult"    # I

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.install_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;I)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "installErrorCode"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.install_complete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "install_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "install_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->a:Lcom/iflytek/viafly/download/DownloadHandlerService$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    new-instance v0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/download/DownloadHandlerService$a;-><init>(Lcom/iflytek/viafly/download/DownloadHandlerService;)V

    iput-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->a:Lcom/iflytek/viafly/download/DownloadHandlerService$a;

    .line 67
    new-instance v0, Lagj;

    invoke-direct {v0, p0}, Lagj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService;->b:Lagj;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method
