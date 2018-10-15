.class public final Lo/by;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    iget-object v0, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->p(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->q(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ListView;

    iget-object v0, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->r(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/PopupWindow;

    iget-object v0, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lo/by;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "sso_down"

    invoke-static {v2, v3}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
