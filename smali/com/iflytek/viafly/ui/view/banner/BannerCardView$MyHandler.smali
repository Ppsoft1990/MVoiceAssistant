.class Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;
.super Landroid/os/Handler;
.source "BannerCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/banner/BannerCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/BannerCardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;

    .line 202
    .local v9, "outer":Lcom/iflytek/viafly/ui/view/banner/BannerCardView;
    if-eqz v9, :cond_0

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 206
    :pswitch_0
    :try_start_0
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$000(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)V

    .line 208
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$600(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$100(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v3

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$300(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v4

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$400(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v5

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$500(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/viafly/ui/view/banner/BannerDataManager;->reportUrlsArrayToServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/util/List;IIII)V

    .line 209
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$700(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$702(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;I)I

    .line 211
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_2

    .line 212
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v10, Lajh;

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {v10, v0}, Lajh;-><init>(Landroid/view/View;)V

    .line 215
    .local v10, "showBannerAnim":Lajh;
    const-wide/16 v0, 0x320

    invoke-virtual {v10, v0, v1}, Lajh;->setDuration(J)V

    .line 216
    const/4 v0, 0x1

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$900(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lajh;->a(II)V

    .line 217
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    const-string/jumbo v0, "TestBannerCardView"

    const-string/jumbo v1, "start updateView Animation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v10    # "showBannerAnim":Lajh;
    :cond_1
    :goto_1
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler$1;-><init>(Lcom/iflytek/viafly/ui/view/banner/BannerCardView$MyHandler;)V

    .line 230
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1000(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1100(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;

    move-result-object v3

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPages(Lajc;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 231
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPageIndicator([I)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 233
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setManualPageable(Z)V

    .line 234
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->stopTurning()V

    .line 235
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1000(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_3

    .line 237
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->startTurning(J)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 238
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPointViewVisible(Z)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 239
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPagingEnabled(Z)V

    .line 240
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setCanLoop(Z)V

    .line 247
    :goto_2
    const-string/jumbo v0, "TestBannerCardView"

    const-string/jumbo v1, "convenientBanner start work"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "TestBannerCardView"

    const-string/jumbo v1, "show bannerview fail"

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 221
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$900(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPointViewVisible(Z)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 244
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setPagingEnabled(Z)V

    .line 245
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$1200(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->setCanLoop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 254
    :pswitch_1
    :try_start_2
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$700(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 255
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$702(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;I)I

    .line 256
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_4

    .line 258
    new-instance v8, Lajh;

    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {v8, v0}, Lajh;-><init>(Landroid/view/View;)V

    .line 259
    .local v8, "hideBannerAnim":Lajh;
    const-wide/16 v0, 0x320

    invoke-virtual {v8, v0, v1}, Lajh;->setDuration(J)V

    .line 260
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$900(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lajh;->a(II)V

    .line 261
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    const-string/jumbo v0, "TestBannerCardView"

    const-string/jumbo v1, "start hideView Animation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 268
    .end local v8    # "hideBannerAnim":Lajh;
    :catch_1
    move-exception v7

    .line 269
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "TestBannerCardView"

    const-string/jumbo v1, "hide bannerview fail"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-static {v9}, Lcom/iflytek/viafly/ui/view/banner/BannerCardView;->access$800(Lcom/iflytek/viafly/ui/view/banner/BannerCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 225
    :array_0
    .array-data 4
        0x7f0201d9
        0x7f0201da
    .end array-data
.end method
