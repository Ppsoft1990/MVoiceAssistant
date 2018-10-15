.class Lcom/iflytek/viafly/guide/UserGuideView$2;
.super Ljava/lang/Object;
.source "UserGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/guide/UserGuideView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/UserGuideView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/UserGuideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v1}, Lcom/iflytek/viafly/guide/UserGuideView;->c(Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/UserGuideView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v1}, Lcom/iflytek/viafly/guide/UserGuideView;->c(Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/UserGuideView;->addView(Landroid/view/View;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$2;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->c(Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->a()V

    .line 141
    return-void
.end method
