.class public Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;
.super Landroid/app/Dialog;
.source "LoadingWaitDialog.java"


# instance fields
.field private ad:Landroid/graphics/drawable/AnimationDrawable;

.field private loadingImage:Landroid/widget/ImageView;

.field private loadingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const v0, 0x7f080014

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 54
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0300be

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->setContentView(I)V

    .line 28
    const v0, 0x7f0b04d9

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->loadingImage:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->loadingImage:Landroid/widget/ImageView;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->loadingImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->ad:Landroid/graphics/drawable/AnimationDrawable;

    .line 31
    const v0, 0x7f0b04da

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->loadingText:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public setLoadindText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->loadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 46
    :cond_0
    return-void
.end method
