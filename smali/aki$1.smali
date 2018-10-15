.class Laki$1;
.super Ljava/lang/Object;
.source "DayTrafficAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laki;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Laki;


# direct methods
.method constructor <init>(Laki;I)V
    .locals 0
    .param p1, "this$0"    # Laki;

    .prologue
    .line 67
    iput-object p1, p0, Laki$1;->b:Laki;

    iput p2, p0, Laki$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Laki$1;->b:Laki;

    iget v1, p0, Laki$1;->a:I

    invoke-static {v0, v1}, Laki;->a(Laki;I)I

    .line 71
    iget-object v0, p0, Laki$1;->b:Laki;

    invoke-virtual {v0}, Laki;->notifyDataSetChanged()V

    .line 72
    iget-object v0, p0, Laki$1;->b:Laki;

    invoke-static {v0}, Laki;->a(Laki;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Laki$1;->b:Laki;

    invoke-static {v0}, Laki;->a(Laki;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    :cond_0
    return-void
.end method
