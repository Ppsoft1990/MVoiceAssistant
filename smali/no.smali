.class public Lno;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno$a;,
        Lno$d;,
        Lno$b;,
        Lno$c;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lnp;

.field private c:Z

.field private d:Lno$a;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lno$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lno$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lno;->c:Z

    .line 110
    sget-object v0, Lno;->a:Landroid/content/Context;

    invoke-static {v0}, Lnp;->a(Landroid/content/Context;)Lnp;

    move-result-object v0

    iput-object v0, p0, Lno;->b:Lnp;

    .line 111
    invoke-direct {p0}, Lno;->e()V

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lno$1;)V
    .locals 0
    .param p1, "x0"    # Lno$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lno;-><init>()V

    return-void
.end method

.method private a(Lcom/iflytek/common/download/entities/DownloadInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "parseInstallStartIntent download info is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    .line 982
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 983
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.action.install_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 985
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Lcom/iflytek/common/download/entities/DownloadInfo;Lnx;)Landroid/content/Intent;
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "result"    # Lnx;

    .prologue
    .line 957
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 958
    :cond_0
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "parseInstallIntent install result is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    .line 961
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 962
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.install_complete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const-string/jumbo v1, "install_result"

    iget v2, p2, Lnx;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    const-string/jumbo v1, "install_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 965
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 966
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    const-string/jumbo v1, "entry_type"

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lno;Lcom/iflytek/common/download/entities/DownloadInfo;Lnx;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lno;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "x2"    # Lnx;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lno;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Lnx;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lno;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lno;->a:Landroid/content/Context;

    .line 106
    sget-object v0, Lno$d;->a:Lno;

    return-object v0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "visibility"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "resume"    # Z

    .prologue
    .line 719
    move-object/from16 v5, p5

    .line 720
    .local v5, "fileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 721
    .local v11, "cover":Z
    if-eqz v5, :cond_0

    .line 722
    const/4 v11, 0x1

    .line 724
    :cond_0
    invoke-direct/range {p0 .. p1}, Lno;->c(I)V

    .line 725
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    const/4 v2, 0x5

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v2, v0, :cond_3

    .line 728
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ViaFly/Music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 861
    :pswitch_0
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download default"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-eqz p9, :cond_15

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    .line 874
    .end local v11    # "cover":Z
    :goto_1
    return-void

    .line 731
    .restart local v11    # "cover":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 739
    :pswitch_1
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download app"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz p9, :cond_4

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto :goto_1

    .line 743
    :cond_4
    if-nez v5, :cond_5

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 747
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto :goto_1

    .line 755
    :pswitch_2
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download resource"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-eqz p9, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto :goto_1

    .line 759
    :cond_6
    if-nez v5, :cond_7

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 768
    :pswitch_3
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download music"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-eqz p9, :cond_8

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 772
    :cond_8
    if-nez v5, :cond_9

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ViaFly/Music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 780
    :pswitch_4
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download theme package"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz p9, :cond_a

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 784
    :cond_a
    if-nez v5, :cond_b

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 788
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 793
    :pswitch_5
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download adapter file"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz p9, :cond_c

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 797
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 803
    :pswitch_6
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download phone type db file"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-eqz p9, :cond_d

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 807
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 811
    :pswitch_7
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download plugin file"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    if-eqz p9, :cond_e

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 815
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v6, p3

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 821
    :pswitch_8
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download share pic"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz p9, :cond_f

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 825
    :cond_f
    if-nez v5, :cond_10

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 829
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lno;->b:Lnp;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    move-object v15, v5

    move/from16 v18, p1

    move-object/from16 v19, p2

    invoke-virtual/range {v12 .. v22}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 835
    :pswitch_9
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download card or adblock resource"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz p9, :cond_11

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 839
    :cond_11
    if-nez v5, :cond_12

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 848
    :pswitch_a
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "start download voice zip resource"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    if-eqz p9, :cond_13

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lnp;->a(J)V

    goto/16 :goto_1

    .line 852
    :cond_13
    if-nez v5, :cond_14

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ViaFly/star_v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 856
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lno;->b:Lnp;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v12}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 865
    :cond_15
    if-nez v5, :cond_16

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 869
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lno;->b:Lnp;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    move-object v15, v5

    move/from16 v18, p1

    move-object/from16 v19, p2

    invoke-virtual/range {v12 .. v22}, Lnp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V

    goto/16 :goto_1

    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lno;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lno;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lno;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "visibility"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "filePath"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v5, v0, Lno;->b:Lnp;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lnp;->b(I)I

    move-result v27

    .line 596
    .local v27, "result":I
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v26, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "type"

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string/jumbo v5, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string/jumbo v5, "url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string/jumbo v5, "entry_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    sparse-switch v27, :sswitch_data_0

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, Lno;->b:Lnp;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lnp;->b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v25

    .line 617
    .local v25, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v25, :cond_2

    .line 618
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v28

    .line 619
    .local v28, "status":I
    packed-switch v28, :pswitch_data_0

    .line 650
    sget-object v5, Lno;->a:Landroid/content/Context;

    invoke-static {v5}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v5

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 653
    .local v12, "id":J
    const/4 v14, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v14}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 662
    .end local v12    # "id":J
    .end local v25    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v28    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 606
    :sswitch_0
    const-string/jumbo v5, "DownloadController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "download error | errorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v5, Lno;->a:Landroid/content/Context;

    invoke-static {v5}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v5

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lno;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 622
    .restart local v25    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .restart local v28    # "status":I
    :pswitch_0
    const-string/jumbo v5, "DownloadController"

    const-string/jumbo v6, "download task already exist"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 v5, 0x385

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lno;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 627
    :pswitch_1
    const-string/jumbo v5, "DownloadController"

    const-string/jumbo v6, "download task out of max download queue, waiting"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget-object v5, Lno;->a:Landroid/content/Context;

    invoke-static {v5}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v5

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v5, 0x38a

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lno;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 634
    :pswitch_2
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 635
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 638
    const/16 v5, 0x38b

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lno;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 641
    :cond_1
    sget-object v5, Lno;->a:Landroid/content/Context;

    invoke-static {v5}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v5

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 644
    .restart local v12    # "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lno;->b:Lnp;

    invoke-virtual {v5, v12, v13}, Lnp;->b(J)V

    goto/16 :goto_0

    .line 658
    .end local v4    # "file":Ljava/io/File;
    .end local v12    # "id":J
    .end local v28    # "status":I
    :cond_2
    sget-object v5, Lno;->a:Landroid/content/Context;

    invoke-static {v5}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v5

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-virtual {v5, v0, v1, v2, v3}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-wide/16 v22, -0x1

    const/16 v24, 0x0

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    invoke-direct/range {v15 .. v24}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0xc3c09 -> :sswitch_0
        0xc3c0a -> :sswitch_0
    .end sparse-switch

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 877
    const/4 v1, 0x0

    .line 878
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 880
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ViaFly/Music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 887
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 888
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 890
    :cond_1
    return-void

    .line 883
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 932
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 937
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "ACTION_DOWNLOAD_ERROR"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string/jumbo v2, "error_code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 939
    .local v1, "errorCode":I
    invoke-virtual {p0, v1, p1}, Lno;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 940
    .end local v1    # "errorCode":I
    :cond_2
    const-string/jumbo v2, "com.iflytek.cmcc.action.install_start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.iflytek.cmcc.install_complete"

    .line 941
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 942
    :cond_3
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "ACTION INSTALL STATUS CHANGED"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0, p1}, Lno;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 945
    :cond_4
    const-string/jumbo v2, "DownloadController"

    const-string/jumbo v3, "ACTION DOWNLOAD STATUS CHANGED"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {p0, p1}, Lno;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 893
    iget-boolean v1, p0, Lno;->c:Z

    if-nez v1, :cond_0

    .line 894
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 895
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.allremoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.allstopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.pendding"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.running"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.waiting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    const-string/jumbo v1, "com.iflytek.cmcc.action.install_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 906
    const-string/jumbo v1, "com.iflytek.cmcc.install_complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    new-instance v1, Lno$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lno$a;-><init>(Lno;Lno$1;)V

    iput-object v1, p0, Lno;->d:Lno$a;

    .line 909
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    sget-object v2, Lno;->a:Landroid/content/Context;

    iget-object v3, p0, Lno;->d:Lno$a;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lno;->c:Z

    .line 912
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0, p1}, Lnp;->b(I)I

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lnp;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 187
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 188
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 189
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 190
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno$c;

    .line 193
    .local v2, "listener":Lno$c;
    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v2, p1, p2}, Lno$c;->downloadError(ILandroid/content/Intent;)V

    goto :goto_0

    .line 198
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    .end local v2    # "listener":Lno$c;
    :cond_1
    sget-object v3, Lno;->a:Landroid/content/Context;

    invoke-static {v3}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lxa;->a(ILandroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "visibility"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p5, :cond_0

    .line 225
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "startDownloadApp | download url is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lno;->b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "visibility"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p5, :cond_0

    .line 212
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "startDownload | download url is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    .line 215
    invoke-direct/range {v0 .. v6}, Lno;->b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 428
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0, p1, p2}, Lnp;->d(J)V

    .line 431
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 145
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno$c;

    .line 150
    .local v2, "listener":Lno$c;
    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v2, p1}, Lno$c;->installStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    .end local v2    # "listener":Lno$c;
    :cond_1
    return-void
.end method

.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "installDownloadFile download info is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-direct {p0, p1}, Lno;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lno;->a(Landroid/content/Intent;)V

    .line 550
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 568
    :pswitch_1
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "installDownloadFile type is resource"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object v0, Lno;->a:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    new-instance v1, Lno$2;

    invoke-direct {v1, p0, p1}, Lno$2;-><init>(Lno;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 570
    invoke-virtual {v0, p1, p2, v1}, Lns;->b(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V

    goto :goto_0

    .line 552
    :pswitch_2
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "installDownloadFile type is theme"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v0, Lno;->a:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    new-instance v1, Lno$1;

    invoke-direct {v1, p0, p1}, Lno$1;-><init>(Lno;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 554
    invoke-virtual {v0, p1, p2, v1}, Lns;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/iflytek/yd/business/OperationInfo;II)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "requestType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 158
    iget-object v3, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 159
    iget-object v3, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$b;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno$b;

    .line 164
    .local v2, "listener":Lno$b;
    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v2, p1, p2, p3}, Lno$b;->a(Lcom/iflytek/yd/business/OperationInfo;II)V

    goto :goto_0

    .line 169
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$b;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$b;>;>;"
    .end local v2    # "listener":Lno$b;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lno$b;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "blcListener"    # Lno$b;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lno$c;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lno$c;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isView"    # Z

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 440
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "changeDownloadTaskViewFlag | url is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-virtual {p0, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 444
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_2

    .line 445
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "changeDownloadTaskViewFlag | info is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_2
    iget-object v1, p0, Lno;->b:Lnp;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lnp;->a(JLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lnp;->c()V

    .line 421
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4
    .param p1, "downloadType"    # I

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 687
    :goto_0
    invoke-static {}, Lvt;->b()Lvt;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lno$3;

    invoke-direct {v3, p0}, Lno$3;-><init>(Lno;)V

    invoke-virtual {v1, v2, v0, v3}, Lvt;->a([Ljava/lang/String;ILvt$a;)V

    .line 705
    return-void

    .line 672
    :sswitch_0
    const/4 v0, 0x0

    .line 673
    goto :goto_0

    .line 675
    :sswitch_1
    const/4 v0, 0x1

    .line 676
    goto :goto_0

    .line 678
    :sswitch_2
    const/16 v0, 0xb

    .line 679
    goto :goto_0

    .line 681
    :sswitch_3
    const/16 v0, 0x12

    .line 682
    goto :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public b(Landroid/content/Intent;)V
    .locals 4
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 172
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 173
    iget-object v3, p0, Lno;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 174
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lno$c;

    .line 178
    .local v2, "listener":Lno$c;
    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v2, p1}, Lno$c;->downloadStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lno$c;>;>;"
    .end local v2    # "listener":Lno$c;
    :cond_1
    sget-object v3, Lno;->a:Landroid/content/Context;

    invoke-static {v3}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v3

    invoke-virtual {v3, p1}, Lxa;->a(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lno;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    .local v0, "allInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "finishOrErrorInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v0, :cond_2

    .line 494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 495
    .local v2, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v5

    .line 496
    .local v5, "status":I
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v3

    .line 497
    .local v3, "isView":Z
    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v4

    .line 498
    .local v4, "isVisble":Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    const/4 v7, 0x5

    if-ne v5, v7, :cond_0

    .line 500
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    .end local v2    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v3    # "isView":Z
    .end local v4    # "isVisble":Z
    .end local v5    # "status":I
    :cond_2
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 236
    if-nez p1, :cond_1

    .line 237
    const-string/jumbo v3, "DownloadController"

    const-string/jumbo v4, "resumeDownloadTask | url is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 242
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_2

    .line 243
    const-string/jumbo v3, "DownloadController"

    const-string/jumbo v4, "resumeDownloadTask | info is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_2
    iget-object v3, p0, Lno;->b:Lnp;

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lnp;->b(I)I

    move-result v2

    .line 248
    .local v2, "result":I
    sparse-switch v2, :sswitch_data_0

    .line 263
    iget-object v3, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnp;->a(J)V

    goto :goto_0

    .line 252
    :sswitch_0
    const-string/jumbo v3, "DownloadController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download error | errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "type"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string/jumbo v3, "entry_type"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v3, "title"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v2, v1}, Lno;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0xc3c09 -> :sswitch_0
        0xc3c0a -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lnp;->e()V

    .line 515
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 310
    if-nez p1, :cond_1

    .line 311
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "removeDownloadTask | url is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lno;->b:Lnp;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0, p1}, Lnp;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 333
    if-nez p1, :cond_1

    .line 334
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "pauseDownloadTask | url is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 338
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_2

    .line 339
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "pauseDownloadTask | info is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lno;->b:Lnp;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lno;->b:Lnp;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnp;->c(J)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 362
    if-nez p1, :cond_1

    .line 363
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, "queryDownloadTask | url is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    iget-object v1, p0, Lno;->b:Lnp;

    if-eqz v1, :cond_0

    .line 367
    iget-object v0, p0, Lno;->b:Lnp;

    invoke-virtual {v0, p1}, Lnp;->b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onProcessRestart()Z
    .locals 5

    .prologue
    .line 998
    invoke-virtual {p0}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 999
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1000
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1001
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 1002
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 1003
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1004
    :cond_0
    const-string/jumbo v3, "DownloadController"

    const-string/jumbo v4, "download info status is error | finished | stopped"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    :cond_1
    const/4 v2, 0x0

    .line 1010
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 992
    const-string/jumbo v0, "DownloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blc onResult | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0, p2, p5, p1}, Lno;->a(Lcom/iflytek/yd/business/OperationInfo;II)V

    .line 994
    return-void
.end method
