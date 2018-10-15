.class public Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;,
        Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;
    }
.end annotation


# static fields
.field private static volatile Q:Z

.field public static a:J

.field private static b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Landroid/net/Uri;

.field private C:Ljava/lang/CharSequence;

.field private D:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;

.field private E:Landroid/content/Context;

.field private F:J

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:J

.field private N:Landroid/graphics/drawable/AnimationDrawable;

.field private O:Z

.field private P:I

.field private R:Lpp;

.field private S:Lzs;

.field private T:I

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Landroid/content/BroadcastReceiver;

.field private X:Landroid/os/Handler;

.field private Y:Lju;

.field private Z:Lod$a;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/base/skin/customView/XTextView;

.field private g:Lcom/iflytek/base/skin/customView/XImageView;

.field private h:Lcom/iflytek/base/skin/customView/XTextView;

.field private i:Lcom/iflytek/base/skin/customView/XImageView;

.field private j:Landroid/view/View;

.field private k:Lcom/iflytek/base/skin/customView/XImageView;

.field private l:Landroid/view/View;

.field private m:Lcom/iflytek/base/skin/customView/XImageView;

.field private n:Landroid/view/View;

.field private o:Lcom/iflytek/base/skin/customView/XButton;

.field private p:Lcom/iflytek/base/skin/customView/XButton;

.field private q:Lcom/iflytek/base/skin/customView/XImageView;

.field private r:Landroid/view/View;

.field private s:Lcom/iflytek/base/skin/customView/XButton;

.field private t:Landroid/view/View;

.field private u:Lcom/iflytek/base/skin/customView/XEditText;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

.field private y:Lapb;

.field private z:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    .line 139
    sget-object v0, Lib$b;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->B:Landroid/net/Uri;

    .line 158
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    .line 161
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->J:Z

    .line 162
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    .line 163
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->L:Z

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->M:J

    .line 169
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->O:Z

    .line 171
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->P:I

    .line 182
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->T:I

    .line 184
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->U:I

    .line 416
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$4;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->W:Landroid/content/BroadcastReceiver;

    .line 657
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$6;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    .line 1584
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$10;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    .line 1676
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$11;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Z:Lod$a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method public static a()Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->C:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 647
    new-instance v0, Lapb;

    const v1, 0x7f030128

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lapb;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->y:Lapb;

    .line 648
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->y:Lapb;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 649
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setSelection(I)V

    .line 655
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    iget-object v9, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    monitor-enter v9

    .line 583
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 584
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 585
    const-string/jumbo v8, "SmsShowActivity"

    const-string/jumbo v10, "init intent | bundle is null"

    invoke-static {v8, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    monitor-exit v9

    .line 644
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string/jumbo v8, "com.iflytek.cmcc.EXTRA_SMS_GALLERY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 590
    .local v6, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    const/4 v7, 0x0

    .line 591
    .local v7, "positonToshow":I
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 593
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 594
    .local v5, "parcelable":Lcom/iflytek/base/mms/entities/SmsItem;
    if-eqz v5, :cond_1

    .line 595
    invoke-virtual {v5}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v2

    .line 596
    .local v2, "id":J
    const-string/jumbo v10, "SmsShowActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "item id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "isRepeatFlag":Z
    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 599
    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 600
    .local v4, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-virtual {v4}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v12

    cmp-long v11, v12, v2

    if-nez v11, :cond_2

    .line 601
    const/4 v1, 0x1

    .line 606
    .end local v4    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :cond_3
    if-nez v1, :cond_1

    .line 607
    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w:Ljava/util/ArrayList;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 643
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isRepeatFlag":Z
    .end local v2    # "id":J
    .end local v5    # "parcelable":Lcom/iflytek/base/mms/entities/SmsItem;
    .end local v6    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    .end local v7    # "positonToshow":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 613
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    .restart local v7    # "positonToshow":I
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 614
    new-instance v8, Lapb;

    const v10, 0x7f030128

    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-direct {v8, p0, v10, v11, v12}, Lapb;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->y:Lapb;

    .line 615
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    if-eqz v8, :cond_5

    .line 616
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->y:Lapb;

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 618
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    invoke-virtual {v8, v10}, Lpp;->d(Lju;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 619
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    iget v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setSelection(I)V

    .line 620
    const-string/jumbo v8, "SmsShowActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mPosition "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_2
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 638
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    iget v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setSelection(I)V

    .line 643
    :cond_5
    monitor-exit v9

    goto/16 :goto_0

    .line 628
    :cond_6
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v10}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setSelection(I)V

    .line 629
    const-string/jumbo v8, "SmsShowActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not speaking "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "srcView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 1767
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1792
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$3;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 1214
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 1215
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v6, 0x12c

    .line 1718
    if-eqz p1, :cond_1

    .line 1719
    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "adapt startAnimation"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_0

    .line 1721
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1723
    :cond_0
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    .line 1724
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor_first_wave"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1725
    .local v0, "mMusicLoad1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor_second_wave"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1726
    .local v1, "mMusicLoad2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.btn_broadcast_nor"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1727
    .local v2, "mMusicLoad3":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v0, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1728
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1729
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v2, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1730
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1731
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1732
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1734
    .end local v0    # "mMusicLoad1":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "mMusicLoad2":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "mMusicLoad3":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-void
.end method

.method private a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 4
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 1218
    if-nez p1, :cond_0

    .line 1219
    const-string/jumbo v2, "SmsShowActivity"

    const-string/jumbo v3, "call item is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_0
    return-void

    .line 1223
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "number":Ljava/lang/String;
    invoke-static {}, Laba;->a()Laba;

    move-result-object v2

    invoke-virtual {v2}, Laba;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getSimCard()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v1

    .line 1226
    .local v1, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lgx;->a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 1242
    .end local v1    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto :goto_0

    .line 1228
    :cond_1
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgx;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e(Lcom/iflytek/base/mms/entities/SmsItem;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "ringPath"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->V:Ljava/lang/String;

    .line 1667
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 1668
    iput p2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->U:I

    .line 1673
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->V:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Z:Lod$a;

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    monitor-exit p0

    return-void

    .line 1670
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->U:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Q:Z

    return p0
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1132
    :cond_0
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v2, "gallery item size is 0"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v0, 0x0

    monitor-exit v1

    .line 1136
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/mms/entities/SmsItem;

    monitor-exit v1

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(I)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 1246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1247
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0239

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1248
    const v1, 0x7f0c023a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1249
    const v1, 0x7f0c022c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$8;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1258
    const v1, 0x7f0c022b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$9;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$9;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1265
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(Lcom/iflytek/base/mms/entities/SmsItem;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private c(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 1552
    :cond_0
    return-void
.end method

.method private c(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 6
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v2, 0x0

    .line 1289
    if-nez p1, :cond_0

    .line 1290
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "delete item is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :goto_0
    return-void

    .line 1294
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->F:J

    .line 1295
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->B:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->F:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1296
    .local v3, "deleteUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->z:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(I)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Q:Z

    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 205
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 206
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.dial_transparent"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 207
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    const v2, 0x7f030129

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->setContentView(I)V

    .line 212
    const v2, 0x7f0b06bc

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t:Landroid/view/View;

    .line 213
    const v2, 0x7f0b06a0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 214
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v2, 0x7f0b06ae

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->q:Lcom/iflytek/base/skin/customView/XImageView;

    .line 216
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->q:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v2, 0x7f0b06af

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->r:Landroid/view/View;

    .line 218
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->r:Landroid/view/View;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->q:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 219
    const v2, 0x7f0b06ab

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 220
    const v2, 0x7f0b06b0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 221
    const v2, 0x7f0b06a6

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h:Lcom/iflytek/base/skin/customView/XTextView;

    .line 222
    const v2, 0x7f0b057e

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/mms/ui/SmsGallery;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    .line 223
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    invoke-virtual {v2, p0}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    const v2, 0x7f0b06bf

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    .line 225
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v2, 0x7f0b06c0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    .line 227
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v2, 0x7f0b06be

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->s:Lcom/iflytek/base/skin/customView/XButton;

    .line 230
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->s:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;)V

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->D:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;

    .line 233
    const v2, 0x7f0b06bd

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    .line 234
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v3, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    .line 235
    invoke-static {v4, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v5, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    .line 236
    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    .line 234
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/XEditText;->setPadding(IIII)V

    .line 237
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->D:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$a;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v2, 0x7f0b06b6

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    .line 241
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-static {}, Lhq;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "statelist.sms_dlg_btn_read_offline_hz"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 246
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    const v3, 0x7f02000c

    const v4, 0x7f02000d

    invoke-virtual {v2, v3, v4}, Lzs;->a(II)Lzs;

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    new-instance v3, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$1;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    invoke-virtual {v2, v3}, Lzs;->a(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a:J

    .line 269
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v2}, Lhl;->d(Landroid/content/Context;)I

    move-result v0

    .line 270
    .local v0, "x":I
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v2}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 271
    .local v1, "y":I
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-wide v4, 0x4050400000000000L    # 65.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Lzs;->b(II)Lzs;

    .line 272
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    sget-wide v4, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a:J

    invoke-virtual {v2, v4, v5}, Lzs;->a(J)V

    .line 274
    const v2, 0x7f0b06b7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->n:Landroid/view/View;

    .line 275
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->n:Landroid/view/View;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 277
    const v2, 0x7f0b06ba

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i:Lcom/iflytek/base/skin/customView/XImageView;

    .line 278
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v2, 0x7f0b06bb

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j:Landroid/view/View;

    .line 280
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 282
    const v2, 0x7f0b04ce

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k:Lcom/iflytek/base/skin/customView/XImageView;

    .line 283
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v2, 0x7f0b06b9

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->l:Landroid/view/View;

    .line 285
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V

    .line 286
    new-instance v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->z:Lcom/iflytek/viafly/mms/ui/SmsShowActivity$b;

    .line 288
    iput v10, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    .line 289
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.EXTRA_SMS_READ_STATUS"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Lhq;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    const-string/jumbo v2, "SmsShowActivity"

    const-string/jumbo v3, "EXTRA_SMS_READ_STATUS true"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h()V

    .line 295
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "EXTRA_SMS_READ_STATUS true"

    invoke-static {v2, v3, v4}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_1
    return-void

    .line 250
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "statelist.sms_dlg_btn_read_hz"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 253
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    const v3, 0x7f02000e

    const v4, 0x7f02000b

    invoke-virtual {v2, v3, v4}, Lzs;->a(II)Lzs;

    goto/16 :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "statelist.sms_dlg_btn_no_read_hz"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 257
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    const v3, 0x7f020009

    const v4, 0x7f02000a

    invoke-virtual {v2, v3, v4}, Lzs;->a(II)Lzs;

    goto/16 :goto_0

    .line 297
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :cond_2
    const-string/jumbo v2, "SmsShowActivity"

    const-string/jumbo v3, "EXTRA_SMS_READ_STATUS false"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "EXTRA_SMS_READ_STATUS false"

    invoke-static {v2, v3, v4}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 9
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 1301
    if-nez p1, :cond_1

    .line 1302
    const-string/jumbo v6, "SmsShowActivity"

    const-string/jumbo v7, "read item is null"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "bodyStr":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->L:Z

    if-eqz v6, :cond_2

    .line 1311
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v6}, Lhq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[p500]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[d]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1314
    .local v5, "ttsStr":Ljava/lang/String;
    const-string/jumbo v6, "SmsShowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ttsStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_NOTIFY_SMS_TIMES"

    invoke-virtual {v6, v7}, Lil;->d(Ljava/lang/String;)I

    move-result v4

    .line 1317
    .local v4, "smsTimes":I
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v6

    invoke-virtual {v6}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v2

    .line 1318
    .local v2, "messageModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1319
    const-string/jumbo v6, "SmsShowActivity"

    const-string/jumbo v7, "readMessage isStarBroadcast true"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v3, 0x0

    .line 1321
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1322
    .local v1, "isPlay":Z
    if-eqz v2, :cond_3

    .line 1323
    const-string/jumbo v6, "1"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1326
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1327
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v3, v6}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Ljava/lang/String;I)V

    .line 1328
    const/4 v1, 0x1

    .line 1336
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 1337
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    sget-object v7, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->SMS:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    invoke-static {v7}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    invoke-virtual {v6, v5, v7, v8}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_0

    .line 1330
    :cond_4
    const-string/jumbo v6, "0"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1331
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1332
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7, v2}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    invoke-virtual {v6, v5, v7, v8}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 1333
    const/4 v1, 0x1

    goto :goto_1

    .line 1340
    .end local v1    # "isPlay":Z
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    sget-object v7, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->SMS:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    invoke-static {v7}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    invoke-virtual {v6, v5, v7, v8}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/viafly/mms/ui/SmsGallery;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    return-object v0
.end method

.method private e()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 513
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$5;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private e(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 11
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v10, 0x1

    .line 1345
    iget-object v9, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    monitor-enter v9

    .line 1346
    if-nez p1, :cond_0

    .line 1347
    :try_start_0
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "reply item is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    monitor-exit v9

    .line 1430
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1352
    .local v3, "replyStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1353
    .local v7, "number":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v2, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    if-eqz v3, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    :cond_1
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "replyStr is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const v1, 0x7f0c022d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1388
    monitor-exit v9

    goto :goto_0

    .line 1429
    .end local v2    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "replyStr":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1392
    .restart local v2    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "replyStr":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    .line 1394
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-string/jumbo v1, "\u77ed\u4fe1\u5df2\u53d1\u9001"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1411
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-le v0, v10, :cond_4

    .line 1413
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1414
    .local v8, "size":I
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1415
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w:Ljava/util/ArrayList;

    iget v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1416
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_3

    .line 1417
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(I)V

    .line 1421
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1429
    .end local v8    # "size":I
    :goto_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1419
    .restart local v8    # "size":I
    :cond_3
    :try_start_4
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1422
    .end local v8    # "size":I
    :catch_0
    move-exception v6

    .line 1423
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1424
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto :goto_2

    .line 1427
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private f()V
    .locals 2

    .prologue
    .line 738
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->W:Landroid/content/BroadcastReceiver;

    .line 742
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.MSG_STOP_SMS_REPLY"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    .line 744
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 745
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    .line 746
    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h()V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 2

    .prologue
    .line 1091
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    .line 1092
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    monitor-exit p0

    return-void

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g()V

    return-void
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 1096
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    iput v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    .line 1097
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    monitor-exit p0

    return-void

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1101
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stopRead "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1103
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stopRead 1"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Y:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 1108
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    if-nez v0, :cond_1

    .line 1109
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stopRead 4"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-static {}, Laop;->a()Laop;

    move-result-object v0

    invoke-virtual {v0}, Laop;->b()V

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->g()V

    .line 1116
    :cond_2
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stopRead 2"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1118
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stopRead 3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 1127
    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    return v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 1434
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v1}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    invoke-virtual {v1}, Lod;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.STOP_READ"

    .line 1444
    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Laop;->a()Laop;

    move-result-object v1

    invoke-virtual {v1}, Laop;->c()V

    .line 1447
    :cond_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "SmsShowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic k(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 8

    .prologue
    .line 1559
    iget-boolean v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->I:Z

    if-nez v4, :cond_0

    .line 1560
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lhe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 1582
    :goto_0
    return-void

    .line 1563
    :cond_0
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClickContact| has contact name"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, "tmpId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1566
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClickContact| mContactId = 0 and return"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_1
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1572
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1571
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1573
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1574
    .local v3, "viewContactIntent":Landroid/content/Intent;
    const/high16 v4, 0x10080000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1576
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1577
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1578
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v3    # "viewContactIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1579
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1738
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "stop animation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->N:Landroid/graphics/drawable/AnimationDrawable;

    .line 1742
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->l()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1746
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "appendLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    return-void
.end method

.method static synthetic m(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    return v0
.end method

.method static synthetic n(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->C:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1803
    iget-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->O:Z

    if-nez v2, :cond_0

    .line 1804
    monitor-enter p0

    .line 1805
    const v2, 0x7f0b06b1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1806
    .local v1, "mMmsContentLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1807
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1808
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1809
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->O:Z

    .line 1810
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "mMmsContentLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1814
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v2, :cond_2

    .line 1817
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 1819
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v2, :cond_3

    .line 1820
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 1822
    :cond_3
    return-void

    .line 1810
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic o(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    return v0
.end method

.method private o()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1825
    iget-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->O:Z

    if-eqz v2, :cond_0

    .line 1826
    monitor-enter p0

    .line 1827
    const v2, 0x7f0b06b1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1828
    .local v1, "mMmsContentLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1829
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1830
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1831
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->O:Z

    .line 1832
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "mMmsContentLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1836
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->t:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1838
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v2, :cond_2

    .line 1839
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 1841
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    if-eqz v2, :cond_3

    .line 1842
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->p:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 1844
    :cond_3
    return-void

    .line 1832
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic p(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lcom/iflytek/base/skin/customView/XEditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->F:J

    return-wide v0
.end method

.method static synthetic s(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m()V

    return-void
.end method

.method static synthetic t(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->T:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->T:I

    return v0
.end method

.method static synthetic u(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->T:I

    return v0
.end method

.method static synthetic v(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->U:I

    return v0
.end method

.method static synthetic w(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)Lod$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Z:Lod$a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1708
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "doFinish "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)V

    .line 1711
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lod;->a(Lod$a;)V

    .line 1713
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->T:I

    .line 1714
    iput v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->U:I

    .line 1715
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 731
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->finish()V

    .line 732
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    sget-wide v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a:J

    invoke-virtual {v0, v2, v3}, Lzs;->b(J)V

    .line 733
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)V

    .line 734
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->M:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 773
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClick too much"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->M:J

    .line 778
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.MSG_STOP_SMS_REPLY"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 779
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClick"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0b06a0

    if-eq v4, v5, :cond_2

    .line 782
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0b06b2

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0b06b3

    if-eq v4, v5, :cond_2

    .line 783
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "not sms_receive_name|btn_select_net|left_scroll|right_scroll"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    .line 787
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->x:Lcom/iflytek/viafly/mms/ui/SmsGallery;

    invoke-virtual {v4}, Lcom/iflytek/viafly/mms/ui/SmsGallery;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(I)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v2

    .line 788
    .local v2, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 867
    :sswitch_0
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 868
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.STOP_READ"

    .line 869
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->c()V

    .line 872
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 873
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0

    .line 791
    :sswitch_1
    const-string/jumbo v4, "contact"

    invoke-static {v4}, Labv;->b(Ljava/lang/String;)V

    .line 792
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->k()V

    goto/16 :goto_0

    .line 801
    :sswitch_2
    const-string/jumbo v4, "smsopensettingbtn"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "SC02014"

    invoke-virtual {v4, v5}, Labu;->a(Ljava/lang/String;)V

    .line 805
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100043"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 807
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 808
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.SMS_SETTING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 852
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 853
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.STOP_READ"

    .line 854
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 855
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->c()V

    .line 857
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 859
    const-string/jumbo v4, "call"

    invoke-static {v4}, Labv;->b(Ljava/lang/String;)V

    .line 860
    invoke-direct {p0, p1, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 863
    invoke-virtual {v2}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, "targetNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 896
    .end local v3    # "targetNumber":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lhq;->a()Z

    move-result v4

    if-nez v4, :cond_5

    .line 900
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100043"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 902
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/settings/ui/SettingActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v1, "intentSms":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.SMS_SETTING"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 911
    .end local v1    # "intentSms":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsPopWinOpend()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v4

    if-nez v4, :cond_a

    .line 915
    const-string/jumbo v4, "smsopenautonotify"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 917
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 918
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "SMS_NOTIFY"

    invoke-static {v4, v5, v8}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 919
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v4, v5}, Lil;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 920
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.SMS_NOTIFY_ACTION"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 922
    :cond_6
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v5, "statelist.sms_dlg_btn_read_hz"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 923
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    const v5, 0x7f02000e

    const v6, 0x7f02000b

    invoke-virtual {v4, v5, v6}, Lzs;->a(II)Lzs;

    .line 924
    iget v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    if-ne v4, v11, :cond_9

    .line 925
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClick | READING_STATUS"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->P:I

    if-nez v4, :cond_7

    .line 928
    const-string/jumbo v4, "stopbroadcasttime"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 930
    :cond_7
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 931
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.STOP_READ"

    .line 932
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->c()V

    .line 935
    :cond_8
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 936
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 938
    :cond_9
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClick | IDLE_STATUS"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->P:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->P:I

    .line 944
    const-string/jumbo v4, "rebroadcasttime"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 945
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h()V

    .line 947
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v4

    const-string/jumbo v5, "LX_100044"

    invoke-virtual {v4, v5}, Lwz;->a(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 951
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 954
    :cond_a
    iget v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    if-ne v4, v11, :cond_d

    .line 955
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "onClick | READING_STATUS"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->P:I

    if-nez v4, :cond_b

    .line 958
    const-string/jumbo v4, "stopbroadcasttime"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 960
    :cond_b
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 961
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.STOP_READ"

    .line 962
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->c()V

    .line 965
    :cond_c
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 966
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 968
    :cond_d
    const-string/jumbo v4, "smscloseautonotify"

    invoke-static {v4}, Labv;->c(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "SC02014"

    invoke-virtual {v4, v5}, Labu;->a(Ljava/lang/String;)V

    .line 971
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 972
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "SMS_NOTIFY"

    invoke-static {v4, v5, v9}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 973
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v4, v5}, Lil;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 974
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.CANCEL_SMS_NOTIFY_ACTION"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 976
    :cond_e
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v5, "statelist.sms_dlg_btn_no_read_hz"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 977
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    const v5, 0x7f020009

    const v6, 0x7f02000a

    invoke-virtual {v4, v5, v6}, Lzs;->a(II)Lzs;

    goto/16 :goto_0

    .line 1028
    :sswitch_5
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->d()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1029
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.STOP_READ"

    .line 1030
    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Laop;->a()Laop;

    move-result-object v4

    invoke-virtual {v4}, Laop;->c()V

    .line 1033
    :cond_f
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 1035
    const-string/jumbo v4, "send"

    invoke-static {v4}, Labv;->b(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto/16 :goto_0

    .line 1071
    :sswitch_6
    const-string/jumbo v4, "SmsShowActivity"

    const-string/jumbo v5, "reply_edit"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1074
    :sswitch_7
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v4}, Lhu;->a(Landroid/content/Context;)V

    .line 1075
    const-string/jumbo v4, "close"

    invoke-static {v4}, Labv;->b(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v4

    const-string/jumbo v5, "SC02014"

    invoke-virtual {v4, v5}, Labu;->a(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto/16 :goto_0

    .line 1081
    :sswitch_8
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lhp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    goto/16 :goto_0

    .line 788
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b04ce -> :sswitch_0
        0x7f0b06a0 -> :sswitch_1
        0x7f0b06ae -> :sswitch_2
        0x7f0b06b6 -> :sswitch_4
        0x7f0b06ba -> :sswitch_3
        0x7f0b06bd -> :sswitch_6
        0x7f0b06be -> :sswitch_7
        0x7f0b06bf -> :sswitch_8
        0x7f0b06c0 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 196
    iput-object p0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    .line 199
    new-instance v0, Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->R:Lpp;

    .line 200
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    .line 201
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d()V

    .line 202
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onDestroy()V

    .line 377
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f()V

    .line 379
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m()V

    .line 380
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1451
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->A:Ljava/lang/Object;

    monitor-enter v6

    .line 1452
    :try_start_0
    const-string/jumbo v3, "SmsShowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onItemSelected| arg2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string/jumbo v3, "SmsShowActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPosition "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput p3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    .line 1457
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v3}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e:Ljava/lang/String;

    .line 1458
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    invoke-static {v3}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lhe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    .line 1459
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1460
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    .line 1461
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->I:Z

    .line 1466
    :goto_0
    iget-boolean v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->I:Z

    if-nez v3, :cond_3

    .line 1467
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<u>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</u>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 1473
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 1474
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->w:Ljava/util/ArrayList;

    iget v7, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->H:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1486
    .local v0, "currentReplyContent":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1487
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->n()V

    .line 1492
    :goto_3
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1495
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 1496
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XEditText;->setSelection(I)V

    .line 1499
    .end local v2    # "len":I
    :cond_0
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c(I)V

    .line 1501
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v3}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lbaa;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1502
    .local v1, "date":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    invoke-static {v3}, Lhq;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v3}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->L:Z

    .line 1506
    if-nez p3, :cond_8

    .line 1507
    const v3, 0x7f0b06b2

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_7

    .line 1509
    const v3, 0x7f0b06b3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    :goto_5
    monitor-exit v6

    .line 1521
    return-void

    .line 1463
    .end local v0    # "currentReplyContent":Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->I:Z

    goto/16 :goto_0

    .line 1520
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1469
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->d:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<u>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</u>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1481
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1489
    .restart local v0    # "currentReplyContent":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->o()V

    goto/16 :goto_3

    .restart local v1    # "date":Ljava/lang/String;
    :cond_6
    move v3, v4

    .line 1504
    goto :goto_4

    .line 1511
    :cond_7
    const v3, 0x7f0b06b3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1513
    :cond_8
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_9

    .line 1514
    const v3, 0x7f0b06b2

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1515
    const v3, 0x7f0b06b3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1517
    :cond_9
    const v3, 0x7f0b06b2

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1518
    const v3, 0x7f0b06b3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x5

    const/16 v7, 0xd

    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 304
    const-string/jumbo v3, "SmsShowActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    .line 308
    iget v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    if-ne v3, v7, :cond_1

    .line 309
    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "onClick | READING_STATUS"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.STOP_READ"

    .line 312
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->c()V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 316
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 318
    const/4 v1, 0x1

    .line 320
    :cond_1
    if-eqz v1, :cond_2

    .line 362
    .end local v1    # "ret":Z
    :goto_0
    return v2

    .line 324
    :cond_2
    const/16 v3, 0x18

    if-ne p1, v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 326
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0, v6, v2, v8}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 330
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    .line 331
    iget v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    if-ne v3, v7, :cond_4

    .line 332
    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "onClick | READING_STATUS"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.STOP_READ"

    .line 335
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->c()V

    .line 338
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 339
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 343
    .end local v0    # "audio":Landroid/media/AudioManager;
    :cond_4
    const/16 v3, 0x19

    if-ne p1, v3, :cond_6

    .line 344
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->E:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 345
    .restart local v0    # "audio":Landroid/media/AudioManager;
    const/4 v3, -0x1

    invoke-virtual {v0, v6, v3, v8}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 349
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->j()V

    .line 350
    iget v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    if-ne v3, v7, :cond_6

    .line 351
    const-string/jumbo v3, "SmsShowActivity"

    const-string/jumbo v4, "onClick | READING_STATUS"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.STOP_READ"

    .line 354
    invoke-virtual {v3, v4}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Laop;->a()Laop;

    move-result-object v3

    invoke-virtual {v3}, Laop;->c()V

    .line 357
    :cond_5
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 358
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 362
    .end local v0    # "audio":Landroid/media/AudioManager;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 752
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    .line 755
    const-string/jumbo v0, "SmsShowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSmsComing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$7;-><init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 763
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/content/Intent;)V

    .line 764
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1556
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onPause()V

    .line 385
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 386
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onClick | READING_STATUS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->i()V

    .line 388
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->X:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1624
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onResume()V

    .line 1626
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    if-nez v0, :cond_2

    .line 1627
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "null == mReadBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsPopWinOpend()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1655
    const-string/jumbo v0, "other"

    invoke-static {v0}, Labv;->b(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 1659
    :cond_1
    return-void

    .line 1629
    :cond_2
    invoke-static {}, Lhq;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "statelist.sms_dlg_btn_read_offline_hz"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 1638
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getSmsBroadcastState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1639
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "statelist.sms_dlg_btn_read_hz"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 1642
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->G:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->h()V

    goto :goto_0

    .line 1646
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->m:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "statelist.sms_dlg_btn_no_read_hz"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 394
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onStart()V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Labv;->a(J)V

    .line 396
    const-string/jumbo v2, "SmsShowActivity"

    const-string/jumbo v3, "onStart"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.iflytek.cmcc.START_READ_RECEIVE_SMS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v2, "com.iflytek.cmcc.END_READ_RECEIVE_SMS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v2, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v2, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string/jumbo v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v2, "com.iflytek.cmcc.CLOSE_TRIGGER_DIALOG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 408
    sput-object p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .line 410
    const/4 v2, 0x1

    sput-boolean v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Q:Z

    .line 411
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->e()Ljava/lang/Thread;

    move-result-object v1

    .line 412
    .local v1, "mCatchHomeThread":Ljava/lang/Thread;
    const-string/jumbo v2, "CatchLogThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 414
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 714
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onStop()V

    .line 715
    const-string/jumbo v0, "SmsShowActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->b:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .line 721
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->finish()V

    .line 722
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->S:Lzs;

    sget-wide v2, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a:J

    invoke-virtual {v0, v2, v3}, Lzs;->b(J)V

    .line 726
    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->Q:Z

    .line 727
    return-void
.end method

.method protected registerListener()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected setView()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
