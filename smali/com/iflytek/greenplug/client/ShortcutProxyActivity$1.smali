.class Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;
.super Ljava/lang/Thread;
.source "ShortcutProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->waitAndStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/ShortcutProxyActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->waitForConnected(J)V

    .line 82
    iget-object v1, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->access$000(Lcom/iflytek/greenplug/client/ShortcutProxyActivity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->a:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->execStartForwordIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v1, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/ShortcutProxyActivity$1;->b:Lcom/iflytek/greenplug/client/ShortcutProxyActivity;

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/ShortcutProxyActivity;->finish()V

    throw v1
.end method
