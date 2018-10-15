.class final Lo/ha;
.super Ljava/lang/Object;
.source "UpgradeSuccessDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gz;


# direct methods
.method constructor <init>(Lo/gz;)V
    .locals 0

    iput-object p1, p0, Lo/ha;->a:Lo/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ha;->a:Lo/gz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ha;->a:Lo/gz;

    invoke-virtual {v0}, Lo/gz;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ha;->a:Lo/gz;

    invoke-virtual {v0}, Lo/gz;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/ha;->a:Lo/gz;

    invoke-static {v0}, Lo/gz;->a(Lo/gz;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ha;->a:Lo/gz;

    invoke-static {v0}, Lo/gz;->a(Lo/gz;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/common/ICallBack;->callback()V

    :cond_1
    return-void
.end method
