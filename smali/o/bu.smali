.class public final Lo/bu;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bu;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/bu;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/bu;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lo/bu;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
