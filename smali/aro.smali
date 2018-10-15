.class Laro;
.super Ljava/lang/Object;
.source "PluginFileExistChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laro$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Laro$1;

    invoke-direct {v0, p0}, Laro$1;-><init>(Laro;)V

    iput-object v0, p0, Laro;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Laro;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Laro;

    .prologue
    .line 19
    iget-object v0, p0, Laro;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(ILaro$a;)V
    .locals 9
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Laro$a;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 46
    if-nez p2, :cond_1

    .line 47
    const-string/jumbo v0, "PluginFileExistChecker"

    const-string/jumbo v1, "listener is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v2

    .line 51
    .local v2, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-nez v2, :cond_3

    .line 52
    invoke-static {p1}, Lasb;->c(I)Z

    move-result v6

    .line 53
    .local v6, "isFileExist":Z
    if-eqz v6, :cond_2

    move v7, v0

    .line 54
    .local v7, "result":I
    :cond_2
    iget-object v1, p0, Laro;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Laro;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 59
    .end local v6    # "isFileExist":Z
    .end local v7    # "result":I
    :cond_3
    invoke-static {p1}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const-string/jumbo v1, "PluginFileExistChecker"

    const-string/jumbo v4, "netplugin or filePath is null"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Laro;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Laro;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 67
    :cond_4
    sget-object v8, Lcom/iflytek/blc/thread/ThreadPoolManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Laro$2;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laro$2;-><init>(Laro;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/lang/String;ILaro$a;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
