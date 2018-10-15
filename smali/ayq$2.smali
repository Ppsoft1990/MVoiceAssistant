.class Layq$2;
.super Ljava/lang/Object;
.source "AlertEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layq;


# direct methods
.method constructor <init>(Layq;)V
    .locals 0
    .param p1, "this$0"    # Layq;

    .prologue
    .line 60
    iput-object p1, p0, Layq$2;->a:Layq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v1, p0, Layq$2;->a:Layq;

    invoke-static {v1}, Layq;->b(Layq;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Layq$2;->a:Layq;

    invoke-static {v1}, Layq;->c(Layq;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u7ffb\u8bd1\u5185\u5bb9\u4e3a\u7a7a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Layq$2;->a:Layq;

    invoke-static {v1}, Layq;->d(Layq;)Layq$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Layq$2;->a:Layq;

    invoke-static {v1}, Layq;->d(Layq;)Layq$a;

    move-result-object v1

    invoke-interface {v1, v0}, Layq$a;->a(Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v1, p0, Layq$2;->a:Layq;

    invoke-static {v1}, Layq;->a(Layq;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
