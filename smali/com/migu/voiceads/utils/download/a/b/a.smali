.class public Lcom/migu/voiceads/utils/download/a/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/download/a/b/a$a;,
        Lcom/migu/voiceads/utils/download/a/b/a$b;
    }
.end annotation


# static fields
.field private static f:Lcom/migu/voiceads/utils/download/a/b/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/migu/voiceads/utils/download/a/b/b;

.field private c:Z

.field private d:Lcom/migu/voiceads/utils/download/a/b/a$a;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/migu/voiceads/utils/download/a/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/utils/download/a/b/a;->f:Lcom/migu/voiceads/utils/download/a/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Landroid/content/Context;Z)Lcom/migu/voiceads/utils/download/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/a/b/a;->c()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/a;->f:Lcom/migu/voiceads/utils/download/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/a/b/a;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/a/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/voiceads/utils/download/a/b/a;->f:Lcom/migu/voiceads/utils/download/a/b/a;

    :cond_0
    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/a;->f:Lcom/migu/voiceads/utils/download/a/b/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "fsname"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 14

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p8, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/b;->a(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v9, p1

    invoke-virtual/range {v2 .. v12}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZZIZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0, p4, p5}, Lcom/migu/voiceads/utils/download/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/a/b/b;->b(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0, p2}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x385

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x38a

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->l()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    if-ne p1, v8, :cond_3

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x38b

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v0

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v2, v0, v1}, Lcom/migu/voiceads/utils/download/a/b/b;->b(J)V

    goto :goto_1

    :cond_5
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/a/b/a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/a;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/migu/voiceads/utils/download/e/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/migu/voiceads/utils/download/e/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/migudownload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/migudownload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :goto_0
    :try_start_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/a/b/a;->b()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.migu.download.waiting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.pendding"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.running"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.finished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.allstopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.migu.download.allremoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/migu/voiceads/utils/download/a/b/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/migu/voiceads/utils/download/a/b/a$a;-><init>(Lcom/migu/voiceads/utils/download/a/b/a;Lcom/migu/voiceads/utils/download/a/b/a$a;)V

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/a;->d:Lcom/migu/voiceads/utils/download/a/b/a$a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/a/b/a;->d:Lcom/migu/voiceads/utils/download/a/b/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.migu.download.error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/migu/voiceads/utils/download/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/a;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->b:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/a/b/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/a/b/a$b;

    invoke-interface {v0, p1, p2}, Lcom/migu/voiceads/utils/download/a/b/a$b;->a(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/a/b/a$b;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/utils/download/a/b/a$b;->b(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.migu.download.finished"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "additional_info"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "visibility"

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/a/b/a$b;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/migu/voiceads/utils/download/a/b/a;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/a/b/a$b;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/utils/download/a/b/a$b;->a(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
