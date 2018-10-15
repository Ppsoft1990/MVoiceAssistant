.class public final Lo/ej;
.super Ljava/lang/Object;
.source "UpgradeUserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ej;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/ej;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z

    iget-object v0, p0, Lo/ej;->a:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->finish()V

    return-void
.end method
