.class Lagt$1;
.super Ljava/lang/Object;
.source "UserGuideCustomCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laic;

.field final synthetic b:Lagt;


# direct methods
.method constructor <init>(Lagt;Laic;)V
    .locals 0
    .param p1, "this$0"    # Lagt;

    .prologue
    .line 75
    iput-object p1, p0, Lagt$1;->b:Lagt;

    iput-object p2, p0, Lagt$1;->a:Laic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v1, p0, Lagt$1;->a:Laic;

    iget-object v0, p0, Lagt$1;->a:Laic;

    invoke-virtual {v0}, Laic;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Laic;->a(Z)V

    .line 79
    iget-object v0, p0, Lagt$1;->b:Lagt;

    invoke-virtual {v0}, Lagt;->notifyDataSetChanged()V

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
