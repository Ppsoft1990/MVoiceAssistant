.class Laeu$9;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Laeu;


# direct methods
.method constructor <init>(Laeu;ILandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 340
    iput-object p1, p0, Laeu$9;->c:Laeu;

    iput p2, p0, Laeu$9;->a:I

    iput-object p3, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 343
    if-eqz p2, :cond_0

    .line 344
    const-string/jumbo v2, "ContactCreateItemViewDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numberText get focus , index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laeu$9;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Laeu$9;->c:Laeu;

    iget-object v3, p0, Laeu$9;->c:Laeu;

    invoke-static {v3}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Laeu;->a(Laeu;I)I

    .line 347
    iget-object v2, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 348
    .local v0, "editable":Landroid/text/Editable;
    if-nez v0, :cond_1

    .line 349
    iget-object v2, p0, Laeu$9;->b:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 357
    return-void

    .line 351
    .restart local v0    # "editable":Landroid/text/Editable;
    :cond_1
    iget-object v2, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 352
    .local v1, "start":I
    iget-object v2, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v2, p0, Laeu$9;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
