.class public final Lo/bm;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bm;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

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

    iget-object v0, p0, Lo/bm;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bm;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    :cond_0
    return-void
.end method
