.class Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollChecker"
.end annotation


# instance fields
.field private mIsRunning:Z

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mStart:I

.field private mTo:I

.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    .line 1297
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    .line 1298
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    return v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->reset()V

    .line 1344
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1347
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 1329
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1332
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->reset()V

    .line 1333
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onPtrScrollFinish()V

    .line 1334
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    .line 1338
    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1339
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1340
    return-void
.end method


# virtual methods
.method public abortIfWorking()V
    .locals 2

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onPtrScrollAbort()V

    .line 1355
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->reset()V

    .line 1357
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1302
    .local v2, "finish":Z
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1303
    .local v0, "curY":I
    iget v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    sub-int v1, v0, v3

    .line 1304
    .local v1, "deltaY":I
    sget-boolean v3, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1305
    if-eqz v1, :cond_1

    .line 1311
    :cond_1
    if-nez v2, :cond_4

    .line 1312
    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1313
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$400(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1314
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$500(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V

    .line 1318
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1322
    :goto_2
    return-void

    .line 1301
    .end local v0    # "curY":I
    .end local v1    # "deltaY":I
    .end local v2    # "finish":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1316
    .restart local v0    # "curY":I
    .restart local v1    # "deltaY":I
    .restart local v2    # "finish":Z
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    neg-int v4, v1

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$600(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V

    goto :goto_1

    .line 1320
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->finish()V

    goto :goto_2
.end method

.method public tryToScrollTo(II)V
    .locals 7
    .param p1, "to"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1360
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$400(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isAlreadyHere(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$400(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    .line 1364
    iput p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mTo:I

    .line 1365
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    sub-int v4, p1, v0

    .line 1366
    .local v4, "distance":I
    sget-boolean v0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1371
    iput v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1374
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1377
    :cond_2
    if-lez p2, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1379
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1380
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    goto :goto_0

    .line 1382
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$400(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1383
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    int-to-float v2, v4

    invoke-static {v0, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$500(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V

    .line 1387
    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    goto :goto_0

    .line 1385
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->access$600(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;F)V

    goto :goto_1
.end method
