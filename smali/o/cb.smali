.class public final Lo/cb;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;I)V
    .locals 0

    iput-object p1, p0, Lo/cb;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iput p2, p0, Lo/cb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/cb;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cb;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lo/cb;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    move-result-object v0

    iget v2, p0, Lo/cb;->a:I

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->removeUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lo/cb;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->N(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    move-result-object v0

    iget v1, p0, Lo/cb;->a:I

    iget-object v2, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->K(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iget-boolean v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->L(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
