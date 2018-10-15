.class public final Lo/ca;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;)V
    .locals 0

    iput-object p1, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Z)Z

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->g(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->m(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->o(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    iget-object v0, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lo/ca;->a:Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;

    iget-object v1, v1, Lcom/cmcc/migusso/sdk/activity/LoginActivity$b;->c:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->M(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
