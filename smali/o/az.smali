.class public final Lo/az;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/az;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean v1, v0, Lo/fv;->d:Z

    iget-object v0, p0, Lo/az;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->p(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lo/az;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/az;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
