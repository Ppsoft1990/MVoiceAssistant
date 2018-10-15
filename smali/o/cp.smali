.class public final Lo/cp;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z

    iget-object v3, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z

    iget-object v3, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->d(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I

    move-result v0

    iget-object v3, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_3
    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->k(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lo/cp;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->k(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_4
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
