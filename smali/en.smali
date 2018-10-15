.class public Len;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Len$a;
    }
.end annotation


# static fields
.field private static b:Len;


# instance fields
.field public a:Z

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Len;->b:Len;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Len;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Len;->d:Z

    iput-boolean v1, p0, Len;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Len;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Len;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Len$a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    iget-object v3, v0, Len$a;->b:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Len;
    .locals 1

    sget-object v0, Len;->b:Len;

    if-nez v0, :cond_0

    new-instance v0, Len;

    invoke-direct {v0}, Len;-><init>()V

    sput-object v0, Len;->b:Len;

    :cond_0
    sget-object v0, Len;->b:Len;

    return-object v0
.end method

.method private a(Len$a;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Len$a;->b:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Len$a;->a(Len$a;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xd

    invoke-static {p1, v0}, Len$a;->a(Len$a;I)V

    goto :goto_0
.end method

.method private e()V
    .locals 0

    invoke-direct {p0}, Len;->f()V

    invoke-virtual {p0}, Len;->d()V

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    iget-object v5, v0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->c:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    iget-object v0, v0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sput-boolean v1, Ldp;->a:Z

    iget-boolean v0, p0, Len;->d:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Len;->d:Z

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    iget-boolean v1, p0, Len;->d:Z

    invoke-virtual {v0, v1}, Lfv;->a(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    invoke-static {v0, p2, p1}, Len$a;->a(Len$a;ILandroid/os/Bundle;)V

    iget v0, v0, Len$a;->d:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Len$a;

    invoke-direct {v0, p0, p1}, Len$a;-><init>(Len;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Len;->a(Len$a;)V

    invoke-direct {p0}, Len;->e()V

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 3

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    invoke-virtual {v0, p1}, Len$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v0, v0, Len$a;->d:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;I)V
    .locals 3

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    invoke-virtual {v0, p1, p2}, Len$a;->a(Lcom/baidu/location/BDLocation;I)V

    iget v0, v0, Len$a;->d:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Len$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v1, v0, Len$a;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget-object v1, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfc;->a(Lcom/baidu/location/BDLocation;)Lda;

    move-result-object v0

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v2

    invoke-virtual {v2}, Lfc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v3

    invoke-virtual {v3}, Lfc;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->d(Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    invoke-virtual {v0, v1}, Len$a;->b(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Len;->e()V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lex;->a()Lex;

    move-result-object v0

    invoke-virtual {v0}, Lex;->c()V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    invoke-virtual {v0}, Lfb;->c()V

    invoke-direct {p0}, Len;->e()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ldj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    iget-object v2, v0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, v0, Len$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Len$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v2}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->d:I

    iget-object v4, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "scanSpan"

    iget-object v7, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v7, v7, Lcom/baidu/location/LocationClientOption;->d:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/baidu/location/LocationClientOption;->d:I

    iget-object v4, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->d:I

    if-ge v4, v8, :cond_4

    invoke-static {}, Lex;->a()Lex;

    move-result-object v4

    invoke-virtual {v4}, Lex;->e()V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v4

    invoke-virtual {v4}, Lfb;->c()V

    iput-boolean v1, p0, Len;->a:Z

    :goto_1
    iget-object v4, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_7

    if-ge v3, v8, :cond_7

    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->n:Z

    if-nez v1, :cond_1

    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->s:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->n:Z

    invoke-virtual {v1, v3}, Lfb;->a(Z)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->s:Z

    invoke-virtual {v1, v3}, Lfb;->b(Z)V

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->b()V

    :cond_2
    :goto_2
    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "openGPS"

    iget-object v5, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->c:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->c:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "coorType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v1, :cond_5

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "addrType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v1, :cond_6

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    sget-object v1, Ldp;->f:Ljava/lang/String;

    iget-object v3, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v1

    invoke-virtual {v1}, Lfc;->i()V

    :cond_3
    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "timeOut"

    iget-object v5, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v5, v5, Lcom/baidu/location/LocationClientOption;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/LocationClientOption;->e:I

    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "location_change_notify"

    iget-object v5, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->h:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->h:Z

    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "priority"

    iget-object v2, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->g:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/LocationClientOption;->g:I

    invoke-direct {p0}, Len;->e()V

    move v1, v0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lex;->a()Lex;

    move-result-object v4

    invoke-virtual {v4}, Lex;->d()V

    iput-boolean v0, p0, Len;->a:Z

    goto/16 :goto_1

    :cond_5
    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v1, v2, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_2
.end method

.method public d(Landroid/os/Message;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_0

    iget-object v0, v1, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->g:I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Len;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len$a;

    invoke-virtual {v0}, Len$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Message;)I
    .locals 3

    const/16 v0, 0x3e8

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Len;->a(Landroid/os/Messenger;)Len$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_0

    iget-object v0, v1, Len$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->d:I

    goto :goto_0
.end method
