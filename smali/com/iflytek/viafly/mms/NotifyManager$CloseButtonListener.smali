.class public Lcom/iflytek/viafly/mms/NotifyManager$CloseButtonListener;
.super Landroid/content/BroadcastReceiver;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/NotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseButtonListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 316
    const-string/jumbo v0, "SMS_NOTIFY"

    invoke-static {p1, v0, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 317
    invoke-static {v2}, Laaz;->b(Z)V

    .line 318
    const-string/jumbo v0, "CALL_NOTIFY"

    invoke-static {p1, v0, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 336
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->c(Landroid/content/Context;)V

    .line 337
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 327
    const-string/jumbo v0, "SMS_NOTIFY"

    invoke-static {p1, v0, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {v2}, Laaz;->b(Z)V

    .line 332
    const-string/jumbo v0, "CALL_NOTIFY"

    invoke-static {p1, v0, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
