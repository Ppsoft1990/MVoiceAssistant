.class Lcom/iflytek/viafly/account/ui/BindActivity$1;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/account/ui/BindActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/account/ui/BindActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "input":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->b(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->c(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->c(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0203f8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->c(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$1;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->c(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0203f9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 125
    return-void
.end method
