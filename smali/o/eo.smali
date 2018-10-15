.class public final Lo/eo;
.super Ljava/lang/Object;
.source "UpgradeUserActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V
    .locals 0

    iput-object p1, p0, Lo/eo;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lo/eo;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    iget-object v1, p0, Lo/eo;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Z)V

    iget-object v0, p0, Lo/eo;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lorg/json/JSONObject;)V

    return-void
.end method
