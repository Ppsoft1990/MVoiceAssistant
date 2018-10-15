.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;
.super Landroid/os/Handler;
.source "BookPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1381
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 1672
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1383
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lamp;->E()I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I

    .line 1384
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "MSG_GET_AUDIO_INFO duration "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d()I

    move-result v33

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1392
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->k(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v33

    invoke-static/range {v32 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->d(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1397
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamp;->t()V

    goto/16 :goto_0

    .line 1416
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    const/16 v31, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lamm;

    move/from16 v32, v0

    and-int v31, v31, v32

    if-eqz v31, :cond_0

    .line 1417
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lamm;

    .line 1418
    .local v6, "bookInfo":Lamm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v6}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Lamm;)V

    goto/16 :goto_0

    .line 1416
    .end local v6    # "bookInfo":Lamm;
    :cond_2
    const/16 v31, 0x0

    goto :goto_1

    .line 1424
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    const/16 v31, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move/from16 v32, v0

    and-int v31, v31, v32

    if-eqz v31, :cond_0

    .line 1425
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 1426
    .local v8, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    invoke-virtual {v8}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->q()Ljava/lang/String;

    move-result-object v21

    .line 1427
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "MSG_GET_AUDIO_INFO name "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    .line 1433
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "reste seekBar"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->r(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->t(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgress(I)V

    .line 1438
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1439
    .local v22, "oldParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0x1

    const v32, 0x7f0b006e

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1440
    const/16 v31, 0x0

    const v32, 0x7f0b006f

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    invoke-static/range {v31 .. v33}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    invoke-static/range {v33 .. v35}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v33

    const/16 v34, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1446
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    :cond_4
    const/16 v31, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1424
    .end local v8    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "oldParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 1451
    .restart local v8    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "oldParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "is not try listen"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1457
    .end local v8    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "oldParams":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 1458
    .local v30, "toast":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1464
    .end local v30    # "toast":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const v32, 0x7f020327

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-string/jumbo v32, "\u5df2\u6536\u85cf"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1468
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const v32, 0x7f020326

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-string/jumbo v32, "\u5df2\u53d6\u6d88"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1477
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v13

    .line 1478
    .local v13, "currentAudio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1479
    invoke-virtual {v13}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v17

    .line 1480
    .local v17, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 1481
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "MSG_SEEK_POSITION get extra position"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1484
    .local v24, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1485
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "start play from offset "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lamp;->b(I)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    .line 1514
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->g(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v31

    invoke-virtual {v13}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1492
    :cond_9
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "MSG_SEEK_POSITION get database position"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamk;->i()Ljava/lang/String;

    move-result-object v12

    .line 1495
    .local v12, "contentId":Ljava/lang/String;
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "MSG_SEEK_POSITION contentId "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lamp;->a(Ljava/lang/String;Ljava/lang/String;)Lamo$a;

    move-result-object v7

    .line 1497
    .local v7, "bookMark":Lamo$a;
    if-eqz v7, :cond_b

    .line 1498
    invoke-virtual {v7}, Lamo$a;->d()I

    move-result v24

    .line 1506
    :cond_a
    :goto_4
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "MSG_SEEK_POSITION position "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1508
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "start play from offset "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lamp;->b(I)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    goto/16 :goto_3

    .line 1500
    :cond_b
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v31

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lamk;->k()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lamk;->g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v16

    .line 1501
    .local v16, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v31

    if-eqz v31, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->p()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 1502
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " offset is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v24

    goto/16 :goto_4

    .line 1516
    .end local v7    # "bookMark":Lamo$a;
    .end local v12    # "contentId":Ljava/lang/String;
    .end local v16    # "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .end local v24    # "position":I
    :cond_c
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "MSG_SEEK_POSITION no need get database position"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1521
    .end local v13    # "currentAudio":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v17    # "id":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->v(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    goto/16 :goto_0

    .line 1524
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b:Lanj$a;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lanj$a;->c()V

    goto/16 :goto_0

    .line 1529
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    if-eqz v31, :cond_0

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)V

    .line 1531
    const/4 v9, 0x0

    .line 1532
    .local v9, "chapterId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 1533
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9    # "chapterId":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1535
    .restart local v9    # "chapterId":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lamp;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    .end local v9    # "chapterId":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamp;->C()Z

    move-result v19

    .line 1540
    .local v19, "isPlaying":Z
    if-eqz v19, :cond_e

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const v32, 0x7f02032e

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1544
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const v32, 0x7f02032f

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1548
    .end local v19    # "isPlaying":Z
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 1550
    .local v23, "percent":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/base/skin/customView/XSeekBar;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1553
    :catch_0
    move-exception v15

    .line 1554
    .local v15, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1558
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "percent":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->x(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/animation/Animation;

    move-result-object v31

    if-nez v31, :cond_f

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->y(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/animation/Animation;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 1561
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x4

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->A(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->x(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/animation/Animation;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1566
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->w(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->z(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    const/16 v32, 0x4

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->A(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    goto/16 :goto_0

    .line 1571
    :pswitch_f
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "show reminder"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 1573
    .local v26, "remind":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->B(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->B(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lanc$a;->d()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c:Lanc$a;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lanc$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1580
    .end local v26    # "remind":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "dismiss reminder"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->B(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1584
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1585
    .local v10, "chapterName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1590
    .end local v10    # "chapterName":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 1591
    .local v27, "seekBarProgress":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->C(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1596
    .end local v27    # "seekBarProgress":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamp;->A()Z

    move-result v18

    .line 1597
    .local v18, "isCollected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->u(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v32

    if-eqz v18, :cond_10

    const v31, 0x7f020327

    :goto_5
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_10
    const v31, 0x7f020326

    goto :goto_5

    .line 1600
    .end local v18    # "isCollected":Z
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgress(I)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setSecondaryProgress(I)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->C(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, "00:00"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->p(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, "00:00"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->D(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->q(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->E(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const v32, 0x7f020309

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1610
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgress(I)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setSecondaryProgress(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->setEnabled(Z)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->C(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    const-string/jumbo v32, "00:00"

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->r(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->t(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1617
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1618
    .local v20, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0x1

    const v32, 0x7f0b006e

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1619
    const/16 v31, 0x0

    const v32, 0x7f0b006f

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    invoke-static/range {v31 .. v33}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    invoke-static/range {v33 .. v35}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v33

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1624
    .end local v20    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 1625
    .local v11, "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    goto/16 :goto_0

    .line 1628
    .end local v11    # "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    :pswitch_17
    const/16 v31, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->removeMessages(I)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lamp;->I()V

    goto/16 :goto_0

    .line 1632
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 1633
    .local v29, "showTime":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->F(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1638
    .end local v29    # "showTime":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->G(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    goto/16 :goto_0

    .line 1641
    :pswitch_1a
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "is try listen"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->r(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/view/View;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v31

    if-nez v31, :cond_11

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/iflytek/base/skin/customView/XSeekBar;->getWidth()I

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I

    .line 1646
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v31

    if-nez v31, :cond_12

    .line 1647
    const/16 v31, 0x1c

    const-wide/16 v32, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->sendEmptyMessageDelayed(IJ)Z

    .line 1667
    :goto_6
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->t(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1649
    :cond_12
    const-string/jumbo v31, "BookPlayerActivity"

    const-string/jumbo v32, "is try listen,now"

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "seekBar pre width = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->H(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    mul-double v36, v36, v38

    div-double v34, v34, v36

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    const-wide/high16 v34, 0x4040000000000000L    # 32.0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v32

    add-int v25, v31, v32

    .line 1652
    .local v25, "realWitdh":I
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "seekBar now width = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v31, -0x2

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1654
    .local v28, "seekbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0x1

    const v32, 0x7f0b006e

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    invoke-static/range {v31 .. v33}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1659
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    invoke-static/range {v31 .. v33}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1660
    .local v14, "dotParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v31, 0x1

    const v32, 0x7f0b006e

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    invoke-static/range {v31 .. v33}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v31

    add-int v31, v31, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    const-wide/high16 v34, 0x4030000000000000L    # 16.0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v32, v0

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->s(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1664
    const-string/jumbo v31, "BookPlayerActivity"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "\u8bd5\u542c"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$5;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\u79d2"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
