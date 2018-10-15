.class public final Lo/a;
.super Ljava/lang/Object;
.source "AbcUpgradeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V
    .locals 0

    iput-object p1, p0, Lo/a;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/a;->a:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->finish()V

    return-void
.end method
