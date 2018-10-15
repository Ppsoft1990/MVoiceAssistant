.class public Lcom/migu/voiceads/utils/download/DownloadService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/migu/voiceads/utils/download/c/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/download/DownloadService$a;,
        Lcom/migu/voiceads/utils/download/DownloadService$b;,
        Lcom/migu/voiceads/utils/download/DownloadService$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/migu/voiceads/utils/download/DownloadService$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/migu/voiceads/utils/download/b/d;

.field private e:Lcom/migu/voiceads/utils/download/b/b;

.field private f:Lcom/migu/voiceads/utils/download/a/b/b;

.field private g:Lcom/migu/voiceads/utils/download/DownloadService$a;

.field private h:Landroid/os/HandlerThread;

.field private i:Lcom/migu/voiceads/utils/download/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/utils/download/DownloadService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v2, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    goto :goto_0
.end method

.method private a(ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->b(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    :goto_0
    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/b/b;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->c()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1, p3, p4}, Lcom/migu/voiceads/utils/download/b/d;->b(J)I

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->b:Lcom/migu/voiceads/utils/download/c/b/a;

    invoke-interface {v0}, Lcom/migu/voiceads/utils/download/c/b/a;->a()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/d;->a(J)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->a(J)V

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->c(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->b(I)V

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_1
.end method

.method private a(JIJ)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/c;->a(J)V

    invoke-virtual {v0, p3}, Lcom/migu/voiceads/utils/download/b/c;->e(I)V

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/b/b;->d(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_1
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/c;->c(J)V

    invoke-virtual {v0, p3}, Lcom/migu/voiceads/utils/download/b/c;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/migu/voiceads/utils/download/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/migu/voiceads/utils/download/b/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/b/b;->f(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v0, "com.migu.download.action"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/b/c;-><init>()V

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "visibility"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "range"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "cover"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "delete_db"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "foreground"

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v10, "retry_cnt"

    const/4 v11, 0x3

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "additional_info"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "post_data"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/migu/voiceads/utils/download/b/c;->c(Z)V

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/b/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/migu/voiceads/utils/download/b/c;->d(I)V

    invoke-virtual {v0, v5}, Lcom/migu/voiceads/utils/download/b/c;->a(Z)V

    invoke-virtual {v0, v6}, Lcom/migu/voiceads/utils/download/b/c;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/migu/voiceads/utils/download/b/c;->b(Z)V

    invoke-virtual {v0, v8}, Lcom/migu/voiceads/utils/download/b/c;->e(Z)V

    invoke-virtual {v0, v9}, Lcom/migu/voiceads/utils/download/b/c;->d(Z)V

    invoke-virtual {v0, v10}, Lcom/migu/voiceads/utils/download/b/c;->b(I)V

    invoke-virtual {v0, v11}, Lcom/migu/voiceads/utils/download/b/c;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/migu/voiceads/utils/download/b/c;->a([B)V

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/16 v4, 0xf

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/16 v4, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/16 v4, 0x16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->d()V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;ILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/migu/voiceads/utils/download/DownloadService;->a(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/migu/voiceads/utils/download/DownloadService;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;JIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/migu/voiceads/utils/download/DownloadService;->a(JIJ)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/migu/voiceads/utils/download/DownloadService;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Lcom/migu/voiceads/utils/download/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/download/DownloadService;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 5

    const/4 v4, 0x5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, v4}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    const v0, 0xc3ba5

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;->b(Lcom/migu/voiceads/utils/download/b/c;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    invoke-virtual {p1, v4}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    const/16 v0, 0x389

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/migu/voiceads/utils/download/b/c;->b(J)V

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 12

    const/4 v3, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v2, p1}, Lcom/migu/voiceads/utils/download/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    invoke-virtual {v2}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/b/b;->e(Lcom/migu/voiceads/utils/download/b/c;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->c()V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, ""

    :try_start_0
    array-length v5, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_0
    if-lt v0, v5, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/a/b/c;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v6, v4, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "chmod"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "777"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
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

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/b;->a()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    iget-object v2, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->b:Lcom/migu/voiceads/utils/download/c/b/a;

    invoke-interface {v2}, Lcom/migu/voiceads/utils/download/c/b/a;->a()V

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v2, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/migu/voiceads/utils/download/b/d;->b(J)I

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    const/16 v1, 0x385

    invoke-virtual {v0, v1, p1, p2}, Lcom/migu/voiceads/utils/download/b/b;->a(IJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    const/16 v1, 0x38a

    invoke-virtual {v0, v1, p1, p2}, Lcom/migu/voiceads/utils/download/b/b;->a(IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/d;->a(J)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    const/16 v1, 0x387

    invoke-virtual {v0, v1, p1, p2}, Lcom/migu/voiceads/utils/download/b/b;->a(IJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->j()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->h()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/migu/voiceads/utils/download/DownloadService;->a(J)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/download/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->a()V

    return-void
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/download/DownloadService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/migu/voiceads/utils/download/DownloadService;->b(J)V

    return-void
.end method

.method private b(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    const v0, 0xc3ba8

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->a(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->c(Lcom/migu/voiceads/utils/download/b/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move v6, v7

    :goto_1
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/DownloadService;->c(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/migu/voiceads/utils/download/c/a/b;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v1

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/migu/voiceads/utils/download/c/a/b;-><init>(JILandroid/content/Context;)V

    invoke-interface {v0, p0}, Lcom/migu/voiceads/utils/download/c/b/a;->a(Lcom/migu/voiceads/utils/download/c/c/a;)V

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->u()[B

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->i()Z

    move-result v4

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_2
    new-instance v1, Lcom/migu/voiceads/utils/download/DownloadService$b;

    invoke-direct {v1}, Lcom/migu/voiceads/utils/download/DownloadService$b;-><init>()V

    iput-object p1, v1, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    iput-object v0, v1, Lcom/migu/voiceads/utils/download/DownloadService$b;->b:Lcom/migu/voiceads/utils/download/c/b/a;

    invoke-virtual {p1, v7}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto/16 :goto_0

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->u()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->i()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/migu/voiceads/utils/download/c/b/a;->a(Ljava/lang/String;[BLjava/lang/String;Z)V

    goto :goto_2

    :cond_5
    if-nez v6, :cond_0

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/d;->a(Lcom/migu/voiceads/utils/download/b/c;)I

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/b;->a(Lcom/migu/voiceads/utils/download/b/c;)V

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/a/b/c;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService;->c(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/DownloadService;->b(Lcom/migu/voiceads/utils/download/b/c;)V

    goto :goto_0
.end method

.method private c(Lcom/migu/voiceads/utils/download/b/c;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/a/b/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/migu/voiceads/utils/download/a/b/b;->a(I)I

    move-result v4

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-le v4, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-le v4, v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/DownloadService$b;

    iget-object v0, v0, Lcom/migu/voiceads/utils/download/DownloadService$b;->a:Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->m()I

    move-result v6

    if-ne v0, v6, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/migu/voiceads/utils/download/d/b;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/d/b;->b()V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->stopSelf()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/d;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/DownloadService$c;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/DownloadService$c;-><init>()V

    invoke-interface {p3}, Lcom/migu/voiceads/utils/download/c/b/a;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/migu/voiceads/utils/download/DownloadService$c;->a:J

    invoke-interface {p3}, Lcom/migu/voiceads/utils/download/c/b/a;->d()I

    move-result v1

    iput v1, v0, Lcom/migu/voiceads/utils/download/DownloadService$c;->b:I

    iput p1, v0, Lcom/migu/voiceads/utils/download/DownloadService$c;->c:I

    iput-object p2, v0, Lcom/migu/voiceads/utils/download/DownloadService$c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(JILcom/migu/voiceads/utils/download/c/b/a;)V
    .locals 5

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/b/c;-><init>()V

    invoke-interface {p4}, Lcom/migu/voiceads/utils/download/c/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->b(J)V

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/c;->a(J)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/4 v3, 0x4

    invoke-interface {p4}, Lcom/migu/voiceads/utils/download/c/b/a;->d()I

    move-result v4

    invoke-virtual {v2, v3, p3, v4, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V
    .locals 5

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/b/c;-><init>()V

    invoke-interface {p6}, Lcom/migu/voiceads/utils/download/c/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->b(J)V

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/b/c;->c(J)V

    invoke-virtual {v0, p3}, Lcom/migu/voiceads/utils/download/b/c;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/migu/voiceads/utils/download/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/migu/voiceads/utils/download/b/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/b/c;-><init>()V

    invoke-interface {p2}, Lcom/migu/voiceads/utils/download/c/b/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/b/c;->b(J)V

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/download/b/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot bind to Download Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/migu/voiceads/utils/download/a/b/c;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/a/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->i:Lcom/migu/voiceads/utils/download/a/b/c;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Download Handler Thread"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->h:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v0, Lcom/migu/voiceads/utils/download/DownloadService$a;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/DownloadService;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/migu/voiceads/utils/download/DownloadService$a;-><init>(Lcom/migu/voiceads/utils/download/DownloadService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    invoke-static {}, Lcom/migu/voiceads/utils/download/a/b/b;->a()Lcom/migu/voiceads/utils/download/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/migu/voiceads/utils/download/a/b/b;->a(Landroid/content/Context;Z)Lcom/migu/voiceads/utils/download/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->f:Lcom/migu/voiceads/utils/download/a/b/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/a/b/b;->e()Lcom/migu/voiceads/utils/download/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->d:Lcom/migu/voiceads/utils/download/b/d;

    :cond_2
    new-instance v0, Lcom/migu/voiceads/utils/download/b/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->e:Lcom/migu/voiceads/utils/download/b/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->b()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/DownloadService;->g:Lcom/migu/voiceads/utils/download/DownloadService$a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/DownloadService$a;->b()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/DownloadService;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/DownloadService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
