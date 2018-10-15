.class public interface abstract Lcom/iflytek/blc/cache/CacheManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract delete(I)V
.end method

.method public abstract deleteByUrl(Ljava/lang/String;)V
.end method

.method public abstract get(I)Lcom/iflytek/blc/cache/CacheItem;
.end method

.method public abstract getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract startDownload(Ljava/lang/String;Lcom/iflytek/blc/cache/DownloadObserver;)V
.end method
