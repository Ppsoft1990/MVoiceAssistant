.class Lbam$10;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 396
    iput-object p1, p0, Lbam$10;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 400
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazo;->a(Landroid/content/Context;)V

    .line 411
    :goto_0
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->g(Lbam;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->dismiss()V

    .line 412
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "onClick | click update no traffic"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->e()V

    .line 405
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->f(Lbam;)Lxr;

    move-result-object v0

    iget-object v1, p0, Lbam$10;->a:Lbam;

    invoke-static {v1}, Lbam;->c(Lbam;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lbam$10;->a:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxs;->a(I)V

    .line 408
    iget-object v0, p0, Lbam$10;->a:Lbam;

    iget-object v1, p0, Lbam$10;->a:Lbam;

    invoke-virtual {v1}, Lbam;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lbam;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
