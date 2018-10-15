.class public interface abstract Lcom/iflytek/blc/cache/CacheItemDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/orm/dao/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/blc/orm/dao/BaseDao",
        "<",
        "Lcom/iflytek/blc/cache/CacheItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract deleteByUrl(Ljava/lang/String;)V
.end method

.method public abstract getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;
.end method

.method public abstract save(Lcom/iflytek/blc/cache/CacheItem;)J
.end method
