.class Layk$4;
.super Ljava/lang/Object;
.source "TranslateModeViewHeler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layk;->d()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layk;


# direct methods
.method constructor <init>(Layk;)V
    .locals 0
    .param p1, "this$0"    # Layk;

    .prologue
    .line 308
    iput-object p1, p0, Layk$4;->a:Layk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Layk$4;->a:Layk;

    iget-object v1, p0, Layk$4;->a:Layk;

    invoke-static {v1}, Layk;->a(Layk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Layk;->a(Ljava/util/ArrayList;I)V

    .line 313
    iget-object v0, p0, Layk$4;->a:Layk;

    invoke-static {v0}, Layk;->b(Layk;)Layp;

    move-result-object v0

    iget-object v1, p0, Layk$4;->a:Layk;

    invoke-static {v1, p3}, Layk;->a(Layk;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Layp;->c(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Layk$4;->a:Layk;

    invoke-static {v0}, Layk;->b(Layk;)Layp;

    move-result-object v0

    invoke-virtual {v0}, Layp;->a()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 317
    return-void
.end method
