.class public Lcom/iflytek/blc/cache/CacheItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/iflytek/blc/orm/annotation/Table;
    name = "t_cacheitem"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "id"
        type = "INTEGER"
    .end annotation

    .annotation runtime Lcom/iflytek/blc/orm/annotation/Id;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        indexName = "idx_url"
        name = "url"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "downloadTime"
        type = "INTEGER"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "content_uri"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "mimeType"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "extraInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/blc/cache/CacheItem;->a:I

    iput-object p2, p0, Lcom/iflytek/blc/cache/CacheItem;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/iflytek/blc/cache/CacheItem;->c:J

    iput-object p5, p0, Lcom/iflytek/blc/cache/CacheItem;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/blc/cache/CacheItem;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/blc/cache/CacheItem;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/cache/CacheItem;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/iflytek/blc/cache/CacheItem;->c:J

    iput-object p4, p0, Lcom/iflytek/blc/cache/CacheItem;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/blc/cache/CacheItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/blc/cache/CacheItem;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/cache/CacheItem;->c:J

    return-wide v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/cache/CacheItem;->a:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/cache/CacheItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/cache/CacheItem;->c:J

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/cache/CacheItem;->f:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/cache/CacheItem;->a:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/cache/CacheItem;->e:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/cache/CacheItem;->b:Ljava/lang/String;

    return-void
.end method
