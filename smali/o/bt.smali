.class public final Lo/bt;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bt;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lo/bt;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lo/bt;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/bt;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lo/bt;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/cmcc/util/CommonUtils;->setLoginButtonSize(Landroid/content/Context;II)V

    return-void
.end method
