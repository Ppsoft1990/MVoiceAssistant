.class Lbam$2;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbam;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0
    .param p1, "this$0"    # Lbam;

    .prologue
    .line 415
    iput-object p1, p0, Lbam$2;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 419
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lbam$2;->a:Lbam;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbam;->a(Lbam;Z)Z

    .line 421
    iget-object v0, p0, Lbam$2;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0}, Lxs;->c()Z

    .line 422
    iget-object v0, p0, Lbam$2;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    iget-object v1, p0, Lbam$2;->a:Lbam;

    invoke-virtual {v0, v1}, Lvu;->b(Lvu$a;)V

    .line 424
    iget-object v0, p0, Lbam$2;->a:Lbam;

    invoke-static {v0}, Lbam;->c(Lbam;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbam$2;->a:Lbam;

    invoke-static {v0}, Lbam;->c(Lbam;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v0, v1, :cond_0

    .line 425
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "finish sendBroadcast ACTION_FORCE_CLOSE "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lbam$2;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    :cond_0
    return-void
.end method
