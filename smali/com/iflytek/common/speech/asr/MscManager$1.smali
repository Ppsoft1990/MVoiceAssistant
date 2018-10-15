.class Lcom/iflytek/common/speech/asr/MscManager$1;
.super Landroid/os/Handler;
.source "MscManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/speech/asr/MscManager;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/speech/asr/MscManager;

.field private b:Z

.field private c:J

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/iflytek/common/speech/asr/MscManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/common/speech/asr/MscManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/common/speech/asr/MscManager$1;->b:Z

    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/common/speech/asr/MscManager$1;->c:J

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 659
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 661
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 662
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact START FLAG_UPLOAD_SUCESS return."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "onUploadContact START FLAG_UPLOAD_SUCESS return."

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    sget-object v10, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->HOME:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 667
    .local v10, "entry":Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    if-eqz v2, :cond_2

    .line 668
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v10    # "entry":Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    check-cast v10, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 670
    .restart local v10    # "entry":Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nMSG_UPLOAD_START entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string/jumbo v2, "MscManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_UPLOAD_START entry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->b:Z

    if-eqz v2, :cond_3

    .line 674
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact START isUploading return."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "onUploadContact START isUploading return."

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 681
    .local v14, "interval":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->c:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v14, v2

    .line 684
    :cond_4
    const-string/jumbo v2, "MscManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUploadContact START interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-wide/16 v2, 0x2710

    cmp-long v2, v14, v2

    if-gez v2, :cond_5

    .line 687
    const-string/jumbo v2, "MscManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUploadContact START too soon. delay. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x2710

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iflytek/common/speech/asr/MscManager$1;->removeMessages(I)V

    .line 691
    const-wide/16 v2, 0x2710

    sub-long v8, v2, v14

    .line 692
    .local v8, "delay":J
    const/4 v2, 0x0

    .line 693
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iflytek/common/speech/asr/MscManager$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 692
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lcom/iflytek/common/speech/asr/MscManager$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "onUploadContact START too soon delay."

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v8    # "delay":J
    :cond_5
    const/4 v12, 0x0

    .line 701
    .local v12, "errorId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->c(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    .line 702
    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->c(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 703
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->d(Lcom/iflytek/common/speech/asr/MscManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lki;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 704
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact  START ERROR_MSP_NO_USER"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const v12, 0xc3519

    .line 710
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_8

    .line 711
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact  START ERROR_NETWORK"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const v12, 0xc3508

    .line 715
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_a

    .line 716
    :cond_9
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact  START ERROR_NO_DATA"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const v12, 0xc3511

    .line 719
    :cond_a
    if-lez v12, :cond_c

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    .line 722
    invoke-interface {v2, v12}, Lcom/iflytek/common/speech/asr/MscManager$a;->onUploadContactError(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;Lcom/iflytek/common/speech/asr/MscManager$a;)Lcom/iflytek/common/speech/asr/MscManager$a;

    .line 725
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nMSG_UPLOAD_START ERROR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 730
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->b:Z

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->c:J

    .line 732
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact START"

    invoke-static {v2, v3}, Lhj;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->h(Lcom/iflytek/common/speech/asr/MscManager;)Ljr;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v3}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    .line 736
    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    .line 737
    invoke-static {v7}, Lcom/iflytek/common/speech/asr/MscManager;->g(Lcom/iflytek/common/speech/asr/MscManager;)Ljt;

    move-result-object v7

    .line 735
    invoke-interface/range {v2 .. v7}, Ljr;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjt;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nMSG_UPLOAD_START BEGIN Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    .line 739
    invoke-static {v4}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 742
    .local v16, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "{"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v13, v2, :cond_e

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_d

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v3}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 747
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v3}, Lcom/iflytek/common/speech/asr/MscManager;->e(Lcom/iflytek/common/speech/asr/MscManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 750
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "MscManager"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v10    # "entry":Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    .end local v12    # "errorId":I
    .end local v13    # "i":I
    .end local v14    # "interval":J
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->b:Z

    .line 755
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "onUploadContact  SUCESS."

    invoke-static {v2, v3}, Lhj;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\nMSG_UPLOAD_START SUCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->i(Lcom/iflytek/common/speech/asr/MscManager;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->j(Lcom/iflytek/common/speech/asr/MscManager;)V

    .line 763
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;)I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;I)V

    .line 767
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/common/speech/asr/MscManager$a;->onUploadContactSucess()V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;Lcom/iflytek/common/speech/asr/MscManager$a;)Lcom/iflytek/common/speech/asr/MscManager$a;

    goto/16 :goto_0

    .line 773
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->b:Z

    .line 775
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 776
    .local v11, "errorCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;I)V

    .line 777
    const-string/jumbo v2, "MscManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUploadContact  ERROR code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->f(Lcom/iflytek/common/speech/asr/MscManager;)Lcom/iflytek/common/speech/asr/MscManager$a;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/iflytek/common/speech/asr/MscManager$a;->onUploadContactError(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager;Lcom/iflytek/common/speech/asr/MscManager$a;)Lcom/iflytek/common/speech/asr/MscManager$a;

    .line 784
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nMSG_UPLOAD_START FAILD ErrorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    invoke-static {v2}, Lcom/iflytek/common/speech/asr/MscManager;->b(Lcom/iflytek/common/speech/asr/MscManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->d:Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 790
    .end local v11    # "errorCode":I
    :pswitch_4
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "MSG_CANCONESE_OK"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(I)V

    goto/16 :goto_0

    .line 794
    :pswitch_5
    const-string/jumbo v2, "MscManager"

    const-string/jumbo v3, "MSG_CANCONESE_FAILD"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/common/speech/asr/MscManager$1;->a:Lcom/iflytek/common/speech/asr/MscManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/common/speech/asr/MscManager;->a(I)V

    goto/16 :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
