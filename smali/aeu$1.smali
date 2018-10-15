.class Laeu$1;
.super Ljava/lang/Object;
.source "ContactCreateItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0
    .param p1, "this$0"    # Laeu;

    .prologue
    .line 180
    iput-object p1, p0, Laeu$1;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v0, v0, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Laeu$1;->a:Laeu;

    const-string/jumbo v1, ""

    iget-object v2, p0, Laeu$1;->a:Laeu;

    invoke-static {v2}, Laeu;->a(Laeu;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Laeu;->a(Laeu;Ljava/lang/String;I)V

    .line 185
    iget-object v0, p0, Laeu$1;->a:Laeu;

    invoke-static {v0}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laeu$1;->a:Laeu;

    invoke-static {v1}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v1, p0, Laeu$1;->a:Laeu;

    invoke-static {v1}, Laeu;->b(Laeu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Laeu;->a(Laeu;I)I

    .line 188
    return-void
.end method
