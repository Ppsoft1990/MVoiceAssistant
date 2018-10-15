.class Lcom/iflytek/common/download/DownloadService$d;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 167
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    const-string/jumbo v2, "HandlerServiceConnection has connected"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    invoke-static {v1}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    check-cast p2, Lnm;

    .end local p2    # "arg1":Landroid/os/IBinder;
    invoke-static {v1, p2}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;Lnm;)Lnm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    invoke-static {v1}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 176
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    invoke-static {v1}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 174
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    invoke-static {v3}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService$d;->a:Lcom/iflytek/common/download/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;Lnm;)Lnm;

    .line 182
    return-void
.end method
