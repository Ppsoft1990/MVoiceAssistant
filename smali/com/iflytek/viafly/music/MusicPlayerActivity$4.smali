.class Lcom/iflytek/viafly/music/MusicPlayerActivity$4;
.super Landroid/os/Handler;
.source "MusicPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 522
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 525
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 528
    .local v1, "favor":Ljava/lang/Boolean;
    if-nez v1, :cond_2

    .line 529
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020125

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 532
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020127

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->c(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020126

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 539
    .end local v1    # "favor":Ljava/lang/Boolean;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 540
    .local v0, "current":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 541
    .local v6, "total":I
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->b(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v0}, Lbaa;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v6}, Lbaa;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 544
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 545
    if-nez v0, :cond_0

    if-nez v6, :cond_0

    .line 546
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 550
    .end local v0    # "current":I
    .end local v6    # "total":I
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 551
    .local v5, "status":I
    const/4 v7, 0x4

    if-ne v7, v5, :cond_4

    .line 552
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->f(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020138

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 554
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 555
    :cond_4
    const/4 v7, 0x5

    if-eq v7, v5, :cond_5

    if-ne v11, v5, :cond_0

    .line 556
    :cond_5
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->f(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f02013b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 558
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 562
    .end local v5    # "status":I
    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 563
    .local v4, "percent":I
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->e(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    mul-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    .line 566
    .end local v4    # "percent":I
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 567
    .local v2, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->h(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 569
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    :goto_1
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v7

    if-nez v7, :cond_8

    .line 575
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020131

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->k(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020146

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    :goto_2
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->m(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->m(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 588
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v7

    const-string/jumbo v8, "drawable://2130837800"

    iget-object v9, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v9}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d()Lbcu;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 591
    :cond_6
    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;

    invoke-direct {v8, p0, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;-><init>(Lcom/iflytek/viafly/music/MusicPlayerActivity$4;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    invoke-static {v7, v8}, Laqc;->a(Ljava/lang/String;Laqc$a;)V

    .line 609
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Ljava/lang/String;)V

    .line 610
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->p(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Lapn;

    move-result-object v7

    invoke-virtual {v7}, Lapn;->notifyDataSetChanged()V

    .line 611
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7, v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    goto/16 :goto_0

    .line 571
    :cond_7
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->i(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 578
    :cond_8
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->k(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020147

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->l(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 581
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020133

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 583
    :cond_9
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->j(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f020132

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 616
    .end local v2    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :pswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 617
    .local v3, "loading":Z
    if-eqz v3, :cond_a

    .line 619
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 622
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {}, Layz;->a()Landroid/view/animation/RotateAnimation;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(Lcom/iflytek/viafly/music/MusicPlayerActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;

    .line 624
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->q(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 626
    :cond_a
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 627
    iget-object v7, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->g(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
