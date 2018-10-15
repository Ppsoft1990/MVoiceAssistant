.class public Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->requestWindowFeature(I)Z

    .line 21
    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02043b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 23
    return-void
.end method
