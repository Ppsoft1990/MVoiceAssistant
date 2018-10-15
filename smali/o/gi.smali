.class final Lo/gi;
.super Ljava/lang/Object;
.source "SendSmsRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/ge;


# direct methods
.method constructor <init>(Lo/ge;)V
    .locals 0

    iput-object p1, p0, Lo/gi;->a:Lo/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/gi;->a:Lo/ge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gi;->a:Lo/ge;

    invoke-virtual {v0}, Lo/ge;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gi;->a:Lo/ge;

    invoke-virtual {v0}, Lo/ge;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gi;->a:Lo/ge;

    invoke-static {v0}, Lo/ge;->a(Lo/ge;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gi;->a:Lo/ge;

    invoke-static {v0}, Lo/ge;->a(Lo/ge;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/BoolCallBack;->callback(Z)V

    :cond_1
    return-void
.end method
