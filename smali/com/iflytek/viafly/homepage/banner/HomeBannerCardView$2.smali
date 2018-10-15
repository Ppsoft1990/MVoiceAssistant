.class Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;
.super Ljava/lang/Object;
.source "HomeBannerCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "arraydata":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Z)Z

    .line 306
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v2, v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 307
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Lorg/json/JSONArray;Z)V

    .line 318
    .end local v0    # "arraydata":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 310
    .restart local v0    # "arraydata":Lorg/json/JSONArray;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->l(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->m(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V

    .line 312
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;->b:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->l(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v0    # "arraydata":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeBannerCardView"

    const-string/jumbo v3, "updateData exception "

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
