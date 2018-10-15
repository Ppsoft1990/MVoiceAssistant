.class public final Lo/de;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lo/de;->a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/de;->a:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->finish()V

    return-void
.end method
