.class public final Lo/bw;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->k(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v3, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->l(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/text/Editable;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    goto :goto_3
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->h(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lo/bw;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->i(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
