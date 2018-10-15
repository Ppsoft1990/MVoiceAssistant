.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 1

    .prologue
    .line 2833
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    .line 2834
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2837
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    if-nez v0, :cond_0

    .line 2839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->b:Z

    .line 2840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    .line 2841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->g:J

    .line 2842
    iget-wide v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->g:J

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->c:J

    .line 2843
    iput p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->h:I

    .line 2844
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2846
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2849
    if-eqz p1, :cond_0

    .line 2850
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    .line 2857
    :goto_0
    return-void

    .line 2853
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->b:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2826
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2830
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2861
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->b:Z

    if-eqz v13, :cond_0

    .line 2862
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    .line 2947
    :goto_0
    return-void

    .line 2868
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2869
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2870
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getCount()I

    move-result v2

    .line 2871
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2872
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2874
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v15}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2875
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->f(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v15}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2877
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->h:I

    if-nez v13, :cond_4

    .line 2878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2880
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2881
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    goto/16 :goto_0

    .line 2884
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2885
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    goto/16 :goto_0

    .line 2889
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->s(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 2890
    invoke-static {v15}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->t(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->c:J

    move-wide/from16 v16, v0

    .line 2889
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;->a(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->i:F

    .line 2906
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->d:J

    .line 2907
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->d:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->c:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->f:F

    .line 2913
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->i:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->f:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    .line 2916
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    if-ltz v13, :cond_7

    .line 2917
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    .line 2918
    move v9, v3

    .line 2924
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2925
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    add-int v11, v13, v14

    .line 2927
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2928
    move v11, v10

    .line 2932
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)Z

    .line 2934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->setSelectionFromTop(II)V

    .line 2935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->layoutChildren()V

    .line 2936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->invalidate()V

    .line 2938
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->b(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Z)Z

    .line 2941
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;ILandroid/view/View;Z)V

    .line 2943
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->d:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->c:J

    .line 2946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2892
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2893
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2894
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    goto/16 :goto_0

    .line 2897
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2898
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->j:Z

    goto/16 :goto_0

    .line 2902
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v13}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->u(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v15}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->v(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 2903
    invoke-static {v15}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->w(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->c:J

    move-wide/from16 v16, v0

    .line 2902
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$c;->a(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->i:F

    goto/16 :goto_1

    .line 2920
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$d;->e:I

    .line 2921
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method
