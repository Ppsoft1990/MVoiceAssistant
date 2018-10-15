.class Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;
.super Ljava/lang/Object;
.source "ListenBookRecommendView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const-string/jumbo v2, "ListenBookRecommendView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u542c\u4e66\u63a8\u8350\u4f4d\u6570\u636e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;

    move-result-object v4

    invoke-virtual {v4}, Lako;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;

    move-result-object v2

    invoke-virtual {v2}, Lako;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakp;

    invoke-virtual {v2}, Lakp;->d()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "matUrlOne":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;

    move-result-object v2

    invoke-virtual {v2}, Lako;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lakp;

    invoke-virtual {v2}, Lakp;->d()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "matUrlTwo":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->b(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;

    move-result-object v3

    invoke-virtual {v3}, Lako;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->c(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->a(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Lako;

    move-result-object v3

    invoke-virtual {v3}, Lako;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->b(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 121
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->c(Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView$1;->a:Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;->getListOptions()Lbcu;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 122
    return-void
.end method
