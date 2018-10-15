.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;
.super Landroid/os/Handler;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeHandler"
.end annotation


# instance fields
.field private mPReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V
    .locals 1
    .param p2, "managerImpl"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1714
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->mPReference:Ljava/lang/ref/WeakReference;

    .line 1715
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->mPReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .line 1720
    .local v6, "impl":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    if-nez v6, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1726
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    if-eqz v1, :cond_0

    .line 1727
    const-string/jumbo v1, "PluginManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_NOTICE_REGISTRAR plugin state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    .line 1729
    .local v8, "observer":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 1730
    .local v9, "state":I
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$2000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1731
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    .line 1732
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$2000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->plugin:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    iget v4, v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->event:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->notifyPluginEnableChanged(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V

    goto :goto_0

    .line 1735
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$2000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->plugin:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    iget v4, v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->event:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->notiflyPluginDisableChanged(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V

    goto :goto_0

    .line 1747
    .end local v8    # "observer":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;
    .end local v9    # "state":I
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;

    if-eqz v1, :cond_0

    .line 1748
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;

    .line 1749
    .local v7, "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;
    iget-object v0, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 1750
    .local v0, "callback":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    if-eqz v0, :cond_0

    .line 1751
    iget-object v1, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginId:Ljava/lang/String;

    iget-object v2, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginKind:Ljava/lang/String;

    iget v3, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginType:I

    iget v4, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->event:I

    iget v5, v7, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->errorCode:I

    invoke-interface/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;->onPluginEventChange(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    .line 1724
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_1
        0x3ed -> :sswitch_1
    .end sparse-switch
.end method
