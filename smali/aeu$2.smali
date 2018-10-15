.class Laeu$2;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Laeu;


# direct methods
.method constructor <init>(Laeu;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 386
    iput-object p1, p0, Laeu$2;->c:Laeu;

    iput-object p2, p0, Laeu$2;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laeu$2;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    iget-object v0, p0, Laeu$2;->c:Laeu;

    iget-object v0, v0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Laeu$2;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Laeu$2;->c:Laeu;

    invoke-static {v0}, Laeu;->a(Laeu;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Laeu$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Laeu$2;->c:Laeu;

    invoke-static {v0}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laeu$2;->a:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Laeu$2;->c:Laeu;

    invoke-static {v0}, Laeu;->a(Laeu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Laeu$2;->c:Laeu;

    invoke-static {v0}, Laeu;->f(Laeu;)V

    .line 396
    :cond_0
    return-void
.end method
