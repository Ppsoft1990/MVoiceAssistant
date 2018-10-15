.class Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;
.super Ljava/lang/Object;
.source "HomeBannerCardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 123
    const-string/jumbo v0, "HomeBannerCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handler message what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return v9

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Laiz;

    move-result-object v0

    invoke-virtual {v0}, Laiz;->g()V

    goto :goto_0

    .line 130
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->b(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->h(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->c(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->d(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->e(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->f(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->g(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->reportUrlsArrayToServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Lorg/json/JSONArray;IIIILandroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$1;-><init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;)V

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .line 155
    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->j(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lajc;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 156
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a([I)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setManualPageable(Z)V

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a()V

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(J)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Z)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setPagingEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setCanLoop(Z)V

    .line 172
    :goto_1
    const-string/jumbo v0, "HomeBannerCardView"

    const-string/jumbo v1, "convenientBanner start work"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v8

    .line 174
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "HomeBannerCardView"

    const-string/jumbo v1, "show bannerview fail"

    invoke-static {v0, v1, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 168
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Z)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setPagingEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setCanLoop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 193
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->j(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->j(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1$2;-><init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;)V

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .line 204
    invoke-static {v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->j(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;

    move-result-object v3

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lajc;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 205
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a([I)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setManualPageable(Z)V

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a()V

    .line 211
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Z)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setPagingEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;->a:Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->setCanLoop(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 214
    :catch_1
    move-exception v8

    .line 215
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "HomeBannerCardView"

    const-string/jumbo v1, "hide bannerview fail"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 150
    :array_0
    .array-data 4
        0x7f0201d8
        0x7f0201d7
    .end array-data

    .line 199
    :array_1
    .array-data 4
        0x7f0201d8
        0x7f0201d7
    .end array-data
.end method
