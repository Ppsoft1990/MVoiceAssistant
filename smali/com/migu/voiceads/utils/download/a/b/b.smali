.class public Lcom/migu/voiceads/utils/download/a/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/voiceads/utils/download/a/b/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/util/SparseIntArray;

.field private d:I

.field private e:Lcom/migu/voiceads/utils/download/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/migu/voiceads/utils/download/a/a/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/a/a;

    new-instance v0, Lcom/migu/voiceads/utils/download/b/d;

    invoke-direct {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    return-void
.end method

.method public static a()Lcom/migu/voiceads/utils/download/a/b/b;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/migu/voiceads/utils/download/a/b/b;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/a/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/a/b/b;->d()V

    :cond_0
    sget-object v0, Lcom/migu/voiceads/utils/download/a/b/b;->a:Lcom/migu/voiceads/utils/download/a/b/b;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->c:Landroid/util/SparseIntArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-lez v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/migu/voiceads/utils/download/a/b/b;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/b;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0xc3c14

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;->c(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/d;->a()V

    return-object v0
.end method

.method public a(J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    const-class v2, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.migu.download.action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZZIZZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    const-class v2, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.migu.download.action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "post_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "file_path"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "foreground"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "range"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "cover"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "delete_db"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->d:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;->d(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/d;->a()V

    return-object v0
.end method

.method public b(J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    const-class v2, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.migu.download.action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x388

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x385

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x386

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public c(J)Lcom/migu/voiceads/utils/download/b/c;
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/d;->a(J)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/d;->a()V

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/d;->a()V

    return-object v0
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/a/b/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    const-class v2, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.migu.download.action"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/a/b/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public e()Lcom/migu/voiceads/utils/download/b/d;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/a/b/b;->e:Lcom/migu/voiceads/utils/download/b/d;

    return-object v0
.end method
