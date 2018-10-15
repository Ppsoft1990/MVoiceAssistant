.class Lcom/iflytek/viafly/homepage/news/NewsItemView$1;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/news/NewsItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/news/NewsItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/news/NewsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/news/NewsItemView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;->a:Lcom/iflytek/viafly/homepage/news/NewsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;->a:Lcom/iflytek/viafly/homepage/news/NewsItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a(Lcom/iflytek/viafly/homepage/news/NewsItemView;)Lcom/iflytek/viafly/homepage/news/NewsItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;->a:Lcom/iflytek/viafly/homepage/news/NewsItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->a(Lcom/iflytek/viafly/homepage/news/NewsItemView;)Lcom/iflytek/viafly/homepage/news/NewsItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsItemView$1;->a:Lcom/iflytek/viafly/homepage/news/NewsItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/news/NewsItemView;->b(Lcom/iflytek/viafly/homepage/news/NewsItemView;)Lall;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/homepage/news/NewsItemView$a;->a(Lall;)V

    .line 68
    :cond_0
    return-void
.end method
