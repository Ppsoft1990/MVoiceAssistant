.class public final Lo/eu;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->g(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V

    iget-object v0, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    new-instance v1, Lo/fz;

    iget-object v2, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lo/fz;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Lo/fz;)Lo/fz;

    iget-object v0, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->i(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lo/fz;

    move-result-object v0

    new-instance v1, Lo/fz$a;

    invoke-direct {v1, p0}, Lo/fz$a;-><init>(Lo/eu;)V

    iput-object v1, v0, Lo/fz;->a:Lo/fz$a;

    iget-object v0, p0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->i(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lo/fz;

    move-result-object v0

    invoke-virtual {v0}, Lo/fz;->show()V

    return-void
.end method
