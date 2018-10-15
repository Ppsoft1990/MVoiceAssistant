.class public final Lo/dw;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    iget-object v1, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Z)Z

    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    move-result v0

    iget-object v1, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->h(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/dw;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->h(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
