.class public final Lo/cx;
.super Ljava/lang/Object;
.source "SecurityVerifyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cx;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/cx;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/cx;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
