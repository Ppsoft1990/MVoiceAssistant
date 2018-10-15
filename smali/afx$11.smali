.class Lafx$11;
.super Ljava/lang/Object;
.source "SmsInputItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 263
    iput-object p1, p0, Lafx$11;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lafx$11;->a:Lafx;

    invoke-static {v0}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 267
    iget-object v0, p0, Lafx$11;->a:Lafx;

    const-string/jumbo v1, "editContacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lafx$11;->a:Lafx;

    invoke-static {v4}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lafx;->a(Lafx;Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    return-void
.end method
