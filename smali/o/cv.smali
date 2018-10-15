.class public final Lo/cv;
.super Ljava/lang/Object;
.source "SecurityVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cv;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/cv;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/cv;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lo/cv;->a:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->finish()V

    return-void
.end method
