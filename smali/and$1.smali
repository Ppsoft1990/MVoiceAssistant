.class Land$1;
.super Ljava/lang/Object;
.source "BookCollectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Land;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamo;

.field final synthetic b:Land;


# direct methods
.method constructor <init>(Land;Lamo;)V
    .locals 0
    .param p1, "this$0"    # Land;

    .prologue
    .line 110
    iput-object p1, p0, Land$1;->b:Land;

    iput-object p2, p0, Land$1;->a:Lamo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v1, p0, Land$1;->a:Lamo;

    iget-object v0, p0, Land$1;->a:Lamo;

    invoke-virtual {v0}, Lamo;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lamo;->a(Z)V

    .line 114
    iget-object v0, p0, Land$1;->b:Land;

    invoke-virtual {v0}, Land;->notifyDataSetChanged()V

    .line 115
    iget-object v0, p0, Land$1;->b:Land;

    invoke-static {v0}, Land;->a(Land;)Land$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Land$1;->b:Land;

    invoke-static {v0}, Land;->a(Land;)Land$a;

    move-result-object v0

    invoke-interface {v0}, Land$a;->a()V

    .line 118
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
