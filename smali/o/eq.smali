.class public final Lo/eq;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/eq;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    iget-object v0, p0, Lo/eq;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
