.class public Lvp;
.super Lvn;
.source "BlcClientConfigAdapter.java"

# interfaces
.implements Lcom/iflytek/blc/getconfig/GetConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp$c;,
        Lvp$e;,
        Lvp$d;,
        Lvp$b;,
        Lvp$a;
    }
.end annotation


# static fields
.field private static e:Lvp;


# instance fields
.field private f:Lil;

.field private g:J

.field private h:J

.field private i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lvp$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lvp$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lvp$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lvp$e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lvp$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lvp;->e:Lvp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    invoke-direct {p0}, Lvn;-><init>()V

    .line 38
    iput-wide v0, p0, Lvp;->g:J

    .line 40
    iput-wide v0, p0, Lvp;->h:J

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lvp;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lvp;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lvp;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lvp;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lvp;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 81
    invoke-virtual {p0, p1}, Lvp;->a(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lvp;->f:Lil;

    .line 83
    invoke-direct {p0}, Lvp;->c()V

    .line 84
    return-void
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 107
    :cond_0
    const-string/jumbo v2, ""

    .line 118
    :goto_0
    return-object v2

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v1, "typeBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 112
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 114
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 3
    .param p1, "clientAdapt"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 315
    iget-object v1, p0, Lvp;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp$a;

    .line 316
    .local v0, "observer":Lvp$a;
    invoke-interface {v0, p1}, Lvp$a;->a(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    goto :goto_0

    .line 318
    .end local v0    # "observer":Lvp$a;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "ctrlValue"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lvp;->d(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "clientAdapts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    :cond_0
    const-string/jumbo v3, "BlcClientConfigAdapter"

    const-string/jumbo v4, "notifyResult | client adapts is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .line 250
    .local v1, "clientAdapt":Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->getType()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->getChildType()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "childType":Ljava/lang/String;
    const-string/jumbo v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    const-string/jumbo v4, "2006"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    invoke-direct {p0, v1}, Lvp;->a(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    goto :goto_0

    .line 256
    :cond_4
    const-string/jumbo v4, "2007"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    invoke-direct {p0, v1}, Lvp;->b(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    goto :goto_0
.end method

.method private a(Lyb;)V
    .locals 6
    .param p1, "clientConfig"    # Lyb;

    .prologue
    .line 177
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, "notifyResult"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lvp;->b()V

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, "notifyResult | clientConfig is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Lyb;->c()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "ctrlValue":Ljava/lang/String;
    invoke-direct {p0, v1}, Lvp;->a(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lyb;->d()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "serverUrls":Ljava/lang/String;
    invoke-direct {p0, v3}, Lvp;->b(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lyb;->b()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "clientAdapts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;>;"
    invoke-direct {p0, v0}, Lvp;->a(Ljava/util/List;)V

    .line 202
    invoke-virtual {p1}, Lyb;->e()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "funcParams":Ljava/lang/String;
    invoke-direct {p0, v2}, Lvp;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lvp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lvp;->e:Lvp;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lvp;

    invoke-direct {v0, p0}, Lvp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvp;->e:Lvp;

    .line 77
    :cond_0
    sget-object v0, Lvp;->e:Lvp;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvp;->g:J

    .line 91
    iget-object v0, p0, Lvp;->f:Lil;

    const-string/jumbo v1, "com.iflytek.cmccLAST_GET_CLIENT_CONFIG"

    iget-wide v2, p0, Lvp;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 93
    return-void
.end method

.method private b(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 3
    .param p1, "clientAdapt"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 321
    iget-object v1, p0, Lvp;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp$b;

    .line 322
    .local v0, "observer":Lvp$b;
    invoke-interface {v0, p1}, Lvp$b;->onGetAdaptPluginSuccess(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    goto :goto_0

    .line 324
    .end local v0    # "observer":Lvp$b;
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lvp;->f(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lvp;->f:Lil;

    const-string/jumbo v1, "com.iflytek.cmccLAST_GET_CLIENT_CONFIG"

    .line 97
    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvp;->g:J

    .line 99
    iget-wide v0, p0, Lvp;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 100
    const-string/jumbo v0, "BlcClientConfigAdapter"

    const-string/jumbo v1, "loadClientConfigCache date error,reset to now."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvp;->g:J

    .line 103
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1, "funcParams"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lvp;->e(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 10
    .param p1, "grayCtrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v2, "grayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "ctrlParams":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v5, v0

    if-lez v5, :cond_1

    .line 330
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v0, v5

    .line 331
    .local v1, "gray":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "grays":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v8, v3

    if-lez v8, :cond_0

    .line 333
    aget-object v8, v3, v6

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "gray":Ljava/lang/String;
    .end local v3    # "grays":[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lvp;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvp$d;

    .line 339
    .local v4, "observer":Lvp$d;
    invoke-interface {v4, v2}, Lvp$d;->onGetGrayCtrlSuccess(Ljava/util/HashMap;)V

    goto :goto_1

    .line 341
    .end local v4    # "observer":Lvp$d;
    :cond_2
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 10
    .param p1, "funcParams"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v2, "funcParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "funcParam":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-lez v6, :cond_1

    .line 353
    array-length v8, v1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v1, v6

    .line 354
    .local v0, "func":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "grays":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v9, v3

    if-lez v9, :cond_0

    .line 356
    const/4 v9, 0x1

    aget-object v5, v3, v9

    .line 357
    .local v5, "tempUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 358
    aget-object v9, v3, v7

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v5    # "tempUrl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "func":Ljava/lang/String;
    .end local v3    # "grays":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lvp;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvp$c;

    .line 365
    .local v4, "observer":Lvp$c;
    invoke-interface {v4, v2}, Lvp$c;->a(Ljava/util/HashMap;)V

    goto :goto_1

    .line 367
    .end local v4    # "observer":Lvp$c;
    :cond_2
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 10
    .param p1, "serverUrl"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 370
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v3, "serverUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "serverUrls":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v6, v4

    if-lez v6, :cond_1

    .line 373
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v4, v6

    .line 374
    .local v0, "gray":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "grays":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v9, v1

    if-lez v9, :cond_0

    .line 376
    const/4 v9, 0x1

    aget-object v5, v1, v9

    .line 377
    .local v5, "tempUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 378
    aget-object v9, v1, v7

    invoke-virtual {v3, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v5    # "tempUrl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "gray":Ljava/lang/String;
    .end local v1    # "grays":[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lvp;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvp$e;

    .line 385
    .local v2, "observer":Lvp$e;
    invoke-interface {v2, v3}, Lvp$e;->a(Ljava/util/HashMap;)V

    goto :goto_1

    .line 387
    .end local v2    # "observer":Lvp$e;
    :cond_2
    return-void
.end method


# virtual methods
.method public OnGetConfigUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v2, "BlcClientConfigAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OnGetConfigUpdated | code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lvp;->h:J

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "clientConfigInfo":Lyb;
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    new-instance v0, Lyb;

    .end local v0    # "clientConfigInfo":Lyb;
    invoke-direct {v0, p3}, Lyb;-><init>(Ljava/util/List;)V

    .line 467
    .restart local v0    # "clientConfigInfo":Lyb;
    invoke-virtual {v0}, Lyb;->a()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lvp;->b:Lhl;

    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/business/AppConfig;->setUid(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lvp;->c:Landroid/content/Context;

    invoke-static {v2}, Lazy;->a(Landroid/content/Context;)Lazy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lazy;->a(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/iflytek/blc/core/BlcServiceImpl;->getInstance()Lcom/iflytek/blc/core/BlcService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/blc/core/BlcService;->setUid(Ljava/lang/String;)V

    .line 481
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lvp;->a(Lyb;)V

    .line 482
    return-void

    .line 478
    :cond_1
    const-string/jumbo v2, "BlcClientConfigAdapter"

    const-string/jumbo v3, "OnGetConfigUpdated | values is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "http://ydossp.voicecloud.cn/do?c=1016"

    return-object v0
.end method

.method public a(Lvp$a;)V
    .locals 1
    .param p1, "observer"    # Lvp$a;

    .prologue
    .line 270
    iget-object v0, p0, Lvp;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public a(Lvp$c;)V
    .locals 1
    .param p1, "observer"    # Lvp$c;

    .prologue
    .line 311
    iget-object v0, p0, Lvp;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public a(Lvp$d;)V
    .locals 1
    .param p1, "observer"    # Lvp$d;

    .prologue
    .line 278
    iget-object v0, p0, Lvp;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public a(Lvp$e;)V
    .locals 1
    .param p1, "observer"    # Lvp$e;

    .prologue
    .line 303
    iget-object v0, p0, Lvp;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "types"    # [Ljava/lang/String;
    .param p2, "childTypes"    # [Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lvp;->g:J

    sub-long v0, v4, v6

    .line 123
    .local v0, "interval":J
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 124
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, "checkClientConfig not get. interval < ONE_DAY"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-wide v4, p0, Lvp;->h:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 129
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, "checkClientConfig is running."

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lvp;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "strTypes":Ljava/lang/String;
    invoke-direct {p0, p2}, Lvp;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "strChildTypes":Ljava/lang/String;
    sget-boolean v4, Lvk;->a:Z

    if-eqz v4, :cond_2

    .line 137
    invoke-static {v3, v2, p0}, Lcom/iflytek/blc/getconfig/GetConfigProxy;->start(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/getconfig/GetConfigObserver;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lvp;->h:J

    .line 142
    :goto_1
    const-string/jumbo v4, "BlcClientConfigAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkClientConfig | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lvp;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, p0, Lvp;->a:Lyo;

    invoke-interface {v4, v3, v2}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lvp;->h:J

    goto :goto_1
.end method

.method public onGetConfigFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 486
    const-string/jumbo v0, "BlcClientConfigAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetConfigFailure | code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvp;->h:J

    .line 489
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 159
    const-string/jumbo v4, "BlcClientConfigAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResult | errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v4, 0x23

    if-ne p5, v4, :cond_0

    .line 162
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lvp;->h:J

    .line 163
    if-eqz p2, :cond_0

    instance-of v4, p2, Lyb;

    if-eqz v4, :cond_0

    .line 164
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, "getClientConfig success"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    move-object v0, p2

    check-cast v0, Lyb;

    move-object v2, v0

    .line 167
    .local v2, "clientConfig":Lyb;
    const-string/jumbo v4, "BlcClientConfigAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResult | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v2}, Lvp;->a(Lyb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "clientConfig":Lyb;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BlcClientConfigAdapter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
