.class final Lo/gk;
.super Ljava/lang/Object;
.source "SimpleErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gj;


# direct methods
.method constructor <init>(Lo/gj;)V
    .locals 0

    iput-object p1, p0, Lo/gk;->a:Lo/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/gk;->a:Lo/gj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gk;->a:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gk;->a:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gk;->a:Lo/gj;

    invoke-static {v0}, Lo/gj;->a(Lo/gj;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gk;->a:Lo/gj;

    invoke-static {v0}, Lo/gj;->a(Lo/gj;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/common/ICallBack;->callback()V

    :cond_1
    return-void
.end method
