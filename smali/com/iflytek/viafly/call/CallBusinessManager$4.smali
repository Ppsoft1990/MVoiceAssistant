.class Lcom/iflytek/viafly/call/CallBusinessManager$4;
.super Landroid/content/BroadcastReceiver;
.source "CallBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$4;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1265
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "onReceive"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1268
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_success_wake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$4;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v1, p2}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager;Landroid/content/Intent;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$4;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v1, p2}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Lcom/iflytek/viafly/call/CallBusinessManager;Landroid/content/Intent;)V

    goto :goto_0
.end method
