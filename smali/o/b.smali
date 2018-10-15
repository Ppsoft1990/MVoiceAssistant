.class public final Lo/b;
.super Ljava/util/TimerTask;
.source "AbcUpgradeActivity.java"


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V
    .locals 0

    iput-object p1, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->b(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/b;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
