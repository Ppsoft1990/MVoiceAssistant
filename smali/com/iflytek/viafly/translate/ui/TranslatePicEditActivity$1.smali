.class Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;
.super Ljava/lang/Object;
.source "TranslatePicEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
