.class public final Lo/aj;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/aj;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/aj;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z

    iget-object v0, p0, Lo/aj;->a:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->finish()V

    return-void
.end method
