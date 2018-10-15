.class Laeu$8;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Laeu;


# direct methods
.method constructor <init>(Laeu;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 317
    iput-object p1, p0, Laeu$8;->b:Laeu;

    iput-object p2, p0, Laeu$8;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 331
    iget-object v1, p0, Laeu$8;->b:Laeu;

    invoke-static {v1}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Laeu$8;->a:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 332
    .local v0, "position":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Laeu$8;->b:Laeu;

    iget-object v1, v1, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Laeu$8;->b:Laeu;

    iget-object v1, v1, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    iget-object v1, p0, Laeu$8;->b:Laeu;

    invoke-static {v1}, Laeu;->e(Laeu;)V

    .line 337
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 321
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 326
    return-void
.end method
