.class public Lcom/migu/voiceads/utils/download/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/download/d/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/migu/voiceads/utils/download/d/b;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/migu/voiceads/utils/download/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
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

.field private g:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/migu/voiceads/utils/download/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/utils/download/d/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/migu/voiceads/utils/download/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".settings.main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/utils/download/d/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/d/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/migu/voiceads/utils/download/d/b;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->c:Lcom/migu/voiceads/utils/download/d/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/b/c;)Lcom/migu/voiceads/utils/download/d/a$a;
    .locals 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->d()I

    move-result v6

    invoke-virtual {p2}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/migu/voiceads/utils/download/b/c;->p()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p2}, Lcom/migu/voiceads/utils/download/d/a;->d(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "\u6b63\u5728\u4e0b\u8f7d..."

    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v4, v0

    :goto_3
    new-instance v0, Lcom/migu/voiceads/utils/download/d/a$a;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/d/a$a;-><init>()V

    const-wide/16 v8, 0x3eb

    iput-wide v8, v0, Lcom/migu/voiceads/utils/download/d/a$a;->a:J

    iput v6, v0, Lcom/migu/voiceads/utils/download/d/a$a;->b:I

    iput-object v4, v0, Lcom/migu/voiceads/utils/download/d/a$a;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/migu/voiceads/utils/download/d/a$a;->i:Landroid/content/Intent;

    iput-object v5, v0, Lcom/migu/voiceads/utils/download/d/a$a;->j:Landroid/content/Intent;

    iput-boolean v3, v0, Lcom/migu/voiceads/utils/download/d/a$a;->k:Z

    invoke-virtual {p2}, Lcom/migu/voiceads/utils/download/b/c;->a()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/migu/voiceads/utils/download/b/c;->l()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/d/a$a;->a(Ljava/lang/String;JJ)V

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    const-string/jumbo v0, "\u6b63\u5728\u5f00\u59cb\u4e0b\u8f7d..."

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "\u6b63\u5728\u7b49\u5f85\u6570\u636e\u8fde\u63a5..."

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move v3, v2

    move-object v4, v5

    move-object v2, v0

    goto :goto_3
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/d/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->d(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Lcom/migu/voiceads/utils/download/d/a$a;)V
    .locals 10

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->g:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    if-le v1, v3, :cond_2

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->k:Z

    if-eqz v1, :cond_3

    iget-wide v2, p1, Lcom/migu/voiceads/utils/download/d/a$a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    const-string/jumbo v1, "\u6b63\u5728\u7b49\u5f85\u6570\u636e\u8fde\u63a5..."

    iput-object v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->f:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p1, Lcom/migu/voiceads/utils/download/d/a$a;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->b:Landroid/content/Context;

    iget v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->b:I

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/d/a$a;->i:Landroid/content/Intent;

    iget-object v3, p1, Lcom/migu/voiceads/utils/download/d/a$a;->j:Landroid/content/Intent;

    iget-object v5, p1, Lcom/migu/voiceads/utils/download/d/a$a;->f:Ljava/lang/String;

    iget-wide v6, p1, Lcom/migu/voiceads/utils/download/d/a$a;->c:J

    iget-wide v8, p1, Lcom/migu/voiceads/utils/download/d/a$a;->d:J

    invoke-static/range {v0 .. v9}, Lcom/migu/voiceads/utils/download/d/c;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;JJ)Landroid/app/Notification;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/d/a;->c:Lcom/migu/voiceads/utils/download/d/b;

    sget-object v2, Lcom/migu/voiceads/utils/download/d/a;->a:Ljava/lang/String;

    iget-wide v4, p1, Lcom/migu/voiceads/utils/download/d/a$a;->a:J

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/migu/voiceads/utils/download/d/b;->a(Ljava/lang/String;JLandroid/app/Notification;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->b:Landroid/content/Context;

    iget v1, p1, Lcom/migu/voiceads/utils/download/d/a$a;->b:I

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/d/a$a;->i:Landroid/content/Intent;

    iget-object v3, p1, Lcom/migu/voiceads/utils/download/d/a$a;->j:Landroid/content/Intent;

    iget-object v5, p1, Lcom/migu/voiceads/utils/download/d/a$a;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/d/c;->a(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->d(Ljava/util/List;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/d/a;->d:Ljava/util/HashMap;

    const-wide/16 v2, 0x3eb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/d/a$a;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->a(Lcom/migu/voiceads/utils/download/d/a$a;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/migu/voiceads/utils/download/d/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/b/c;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/d/a;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/migu/voiceads/utils/download/d/a;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->e(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->c(Ljava/util/List;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->a(Lcom/migu/voiceads/utils/download/d/a$a;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Lcom/migu/voiceads/utils/download/d/a$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;)",
            "Lcom/migu/voiceads/utils/download/d/a$a;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [J

    move v1, v4

    move v5, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    const-string/jumbo v5, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u540e\u91cd\u8bd5"

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->d()I

    move-result v7

    new-instance v8, Landroid/content/Intent;

    sget-object v0, Lcom/migu/voiceads/utils/download/d/a;->e:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x34000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/migu/voiceads/utils/download/d/a$a;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/download/d/a$a;-><init>()V

    const-wide/16 v10, 0x3eb

    iput-wide v10, v0, Lcom/migu/voiceads/utils/download/d/a$a;->a:J

    iput v7, v0, Lcom/migu/voiceads/utils/download/d/a$a;->b:I

    iput-object v5, v0, Lcom/migu/voiceads/utils/download/d/a$a;->f:Ljava/lang/String;

    iput-object v8, v0, Lcom/migu/voiceads/utils/download/d/a$a;->i:Landroid/content/Intent;

    iput-object v6, v0, Lcom/migu/voiceads/utils/download/d/a$a;->j:Landroid/content/Intent;

    iput-boolean v4, v0, Lcom/migu/voiceads/utils/download/d/a$a;->k:Z

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/d/a$a;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v8

    aput-wide v8, v7, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v0

    const/4 v8, 0x5

    if-ne v0, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/a/b/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->e(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()I
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "iflyadicon"

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1080081

    :cond_0
    return v0
.end method

.method private d(Ljava/util/List;)Lcom/migu/voiceads/utils/download/d/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;)",
            "Lcom/migu/voiceads/utils/download/d/a$a;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->e(Ljava/util/List;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/download/b/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/migu/voiceads/utils/download/d/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/b/c;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6b63\u5728\u4e0b\u8f7d, \u5171"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u9879"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Lcom/migu/voiceads/utils/download/b/c;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;)",
            "Lcom/migu/voiceads/utils/download/b/c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v1, v0

    :cond_1
    return-object v1

    :cond_2
    const-wide/16 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_3

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    move-object v1, v0

    goto :goto_0
.end method

.method private e(Lcom/migu/voiceads/utils/download/b/c;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->s()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x3eb

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e9

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3ea

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/migu/voiceads/utils/download/a/b/b;->a()Lcom/migu/voiceads/utils/download/a/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/utils/download/a/b/b;->c(J)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->e(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->c:Lcom/migu/voiceads/utils/download/d/b;

    sget-object v1, Lcom/migu/voiceads/utils/download/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/migu/voiceads/utils/download/d/b;->c(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->d(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->e(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->c()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/d/a;->c(Lcom/migu/voiceads/utils/download/b/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/d/a;->a(J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->b()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/utils/download/d/a;->a(J)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/migu/voiceads/utils/download/d/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/b/c;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->a(Lcom/migu/voiceads/utils/download/d/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/migu/voiceads/utils/download/b/c;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x64

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/migu/voiceads/utils/download/b/c;->c(I)V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->a()V

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/d/a;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/migu/voiceads/utils/download/d/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/b/c;)Lcom/migu/voiceads/utils/download/d/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/download/d/a;->a(Lcom/migu/voiceads/utils/download/d/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/migu/voiceads/utils/download/b/c;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->o()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/migu/voiceads/utils/download/b/c;->k()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
