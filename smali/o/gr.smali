.class final Lo/gr;
.super Ljava/lang/Object;
.source "StandardChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gp;


# direct methods
.method constructor <init>(Lo/gp;)V
    .locals 0

    iput-object p1, p0, Lo/gr;->a:Lo/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/gr;->a:Lo/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gr;->a:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gr;->a:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gr;->a:Lo/gp;

    invoke-static {v0}, Lo/gp;->a(Lo/gp;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gr;->a:Lo/gp;

    invoke-static {v0}, Lo/gp;->a(Lo/gp;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    :cond_1
    return-void
.end method
