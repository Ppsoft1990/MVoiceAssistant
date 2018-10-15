.class public final Lo/c;
.super Ljava/lang/Object;
.source "AbcUpgradeActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V
    .locals 0

    iput-object p1, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    iget-object v1, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->removeUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    iget-object v1, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->k(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->insertUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->m(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->setResult(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->setResult(I)V

    iget-object v0, p0, Lo/c;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->finish()V

    goto :goto_0
.end method
