.class Lafx$12;
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
    .line 273
    iput-object p1, p0, Lafx$12;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v0, p0, Lafx$12;->a:Lafx;

    iget-object v1, p0, Lafx$12;->a:Lafx;

    invoke-static {v1}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1}, Lafx;->a(Lafx;I)I

    .line 279
    iget-object v0, p0, Lafx$12;->a:Lafx;

    invoke-static {v0}, Lafx;->d(Lafx;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lafx$12;->a:Lafx;

    invoke-static {v0}, Lafx;->e(Lafx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lafx$12;->a:Lafx;

    const-string/jumbo v1, "smsRecordStart"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lafx$12;->a:Lafx;

    invoke-static {v3}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lafx;->a(Lafx;Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lafx$12;->a:Lafx;

    invoke-static {v0}, Lafx;->d(Lafx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafx$12;->a:Lafx;

    invoke-static {v0}, Lafx;->e(Lafx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lafx$12;->a:Lafx;

    const-string/jumbo v1, "smsRecordStop"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lafx;->a(Lafx;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
