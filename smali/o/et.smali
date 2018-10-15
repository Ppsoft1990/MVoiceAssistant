.class public final Lo/et;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/et;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/et;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->finish()V

    return-void
.end method
