.class Lafx$2;
.super Ljava/lang/Object;
.source "SmsInputItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafx;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafx;


# direct methods
.method constructor <init>(Lafx;)V
    .locals 0
    .param p1, "this$0"    # Lafx;

    .prologue
    .line 287
    iput-object p1, p0, Lafx$2;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lafx$2;->a:Lafx;

    iget-object v1, p0, Lafx$2;->a:Lafx;

    invoke-static {v1}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1}, Lafx;->a(Lafx;I)I

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 292
    return-void
.end method
