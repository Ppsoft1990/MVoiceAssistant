.class public interface abstract Lcom/iflytek/blc/getconfig/GetConfigObserver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract OnGetConfigUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onGetConfigFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method
