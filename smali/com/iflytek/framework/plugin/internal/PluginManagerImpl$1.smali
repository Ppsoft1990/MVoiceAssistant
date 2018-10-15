.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->enterPlugin(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pluginType:I


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iput p2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->val$pluginType:I

    iput-object p3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPlugin(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 405
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "onEnterPlugin"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-direct {v1, v3, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 407
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object v5, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->val$pluginType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 411
    iput-object p1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->apkPluginIntent:Landroid/content/Intent;

    .line 412
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->val$packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    .line 413
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    const/16 v4, 0xa

    invoke-static {v3, v4, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$200(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 415
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$300(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    :cond_0
    return-void
.end method
