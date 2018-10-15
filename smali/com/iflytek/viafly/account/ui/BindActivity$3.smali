.class Lcom/iflytek/viafly/account/ui/BindActivity$3;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 171
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$3;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 174
    if-eqz p2, :cond_0

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$3;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->d(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$3;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method
