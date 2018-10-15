.class Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;
.super Ljava/lang/Object;
.source "TranslateEditLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 163
    const-string/jumbo v0, "TranslateEditLayout"

    const-string/jumbo v1, "afterTextChanged "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->a(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->b(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->b(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->c(Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/ui/TranslateEditLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 159
    return-void
.end method
