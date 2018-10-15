.class Laro$2;
.super Ljava/lang/Object;
.source "PluginFileExistChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laro;->a(ILaro$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Laro$a;

.field final synthetic e:Laro;


# direct methods
.method constructor <init>(Laro;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/lang/String;ILaro$a;)V
    .locals 0
    .param p1, "this$0"    # Laro;

    .prologue
    .line 67
    iput-object p1, p0, Laro$2;->e:Laro;

    iput-object p2, p0, Laro$2;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    iput-object p3, p0, Laro$2;->b:Ljava/lang/String;

    iput p4, p0, Laro$2;->c:I

    iput-object p5, p0, Laro$2;->d:Laro$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    iget-object v4, p0, Laro$2;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    iget-object v5, p0, Laro$2;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->checkNeedUpdatePlugin(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, "isFileNotExist":Z
    const-string/jumbo v3, "PluginFileExistChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is need update file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 76
    .local v1, "result":I
    :goto_0
    iget-object v3, p0, Laro$2;->e:Laro;

    invoke-static {v3}, Laro;->a(Laro;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Laro$2;->e:Laro;

    invoke-static {v3}, Laro;->a(Laro;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p0, Laro$2;->c:I

    iget-object v5, p0, Laro$2;->d:Laro$a;

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :cond_0
    return-void

    .end local v1    # "result":I
    :cond_1
    move v1, v2

    .line 75
    goto :goto_0
.end method
