.class public final Lo/dd;
.super Ljava/util/TimerTask;
.source "SecurityVerifyActivity.java"


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dd;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
