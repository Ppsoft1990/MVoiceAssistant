.class Lbam$9;
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
    .line 381
    iput-object p1, p0, Lbam$9;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "on cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lbam$9;->a:Lbam;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbam;->a(Lbam;Z)Z

    .line 387
    iget-object v0, p0, Lbam$9;->a:Lbam;

    invoke-static {v0}, Lbam;->g(Lbam;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->getSelectedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "update_no_prompt_version"

    iget-object v2, p0, Lbam$9;->a:Lbam;

    invoke-static {v2}, Lbam;->c(Lbam;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lbam$9;->a:Lbam;

    iget-object v1, p0, Lbam$9;->a:Lbam;

    invoke-static {v1}, Lbam;->g(Lbam;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->getSelectedState()Z

    move-result v1

    invoke-static {v0, v1}, Lbam;->b(Lbam;Z)V

    .line 392
    iget-object v0, p0, Lbam$9;->a:Lbam;

    invoke-static {v0}, Lbam;->g(Lbam;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->dismiss()V

    .line 393
    return-void
.end method
