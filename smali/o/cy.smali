.class public final Lo/cy;
.super Ljava/lang/Object;
.source "SecurityVerifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cy;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

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

    iget-object v0, p0, Lo/cy;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    return-void
.end method
